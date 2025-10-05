suppressPackageStartupMessages(library(dplyr))

# --- Robust loader for Willerman data (TXT/CSV; raw URLs) --------------------
read_brainsize <- function() {
  # Raw URLs
  url_txt <- "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/BRAINSIZE.txt"
  url_csv <- "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/BRAINSIZE.csv"

  # Try TAB TXT
  x <- try(read.table(url_txt, header=TRUE, sep="\t",
                      na.strings=c(".", "NA", ""), stringsAsFactors=FALSE,
                      check.names=FALSE), silent=TRUE)
  if (!inherits(x, "try-error") && is.data.frame(x) && ncol(x) >= 6) return(x)

  # Try comma CSV
  x <- try(read.csv(url_csv, na.strings=c(".", "NA", ""),
                    stringsAsFactors=FALSE, strip.white=TRUE, check.names=FALSE), silent=TRUE)
  if (!inherits(x, "try-error") && is.data.frame(x) && ncol(x) >= 6) return(x)

  # Try semicolon CSV
  x <- try(read.csv2(url_csv, na.strings=c(".", "NA", ""),
                     stringsAsFactors=FALSE, check.names=FALSE), silent=TRUE)
  if (!inherits(x, "try-error") && is.data.frame(x) && ncol(x) >= 6) return(x)

  stop("Kon het BRAINSIZE-bestand niet robuust inlezen.")
}

data <- read_brainsize()

# --- Map headers (robust against case/whitespace/punctuation) ----------------
norm <- function(v) gsub("[^a-z0-9]", "", tolower(trimws(v)))
nn <- norm(names(data))

# Expected names in order (fallback to positions if needed)
expected <- c("gender","fsiq","viq","piq","weight","height","mricount")

idx <- match(expected, nn)

# If headers differ but column order is standard, fallback to positions
if (any(is.na(idx)) && ncol(data) >= 7) {
  idx <- 1:7
}

# Guard again
stopifnot(length(idx) >= 7)

# --- Build clean dataframe with NL names + unit conversion -------------------
massa  <- as.numeric(data[[idx[5]]]) * 0.45359237  # lbs -> kg
lengte <- as.numeric(data[[idx[6]]]) * 2.54        # in  -> cm

data <- data.frame(
  geslacht = data[[idx[1]]],
  FSIQ     = data[[idx[2]]],
  VIQ      = data[[idx[3]]],
  PIQ      = data[[idx[4]]],
  massa    = massa,
  lengte   = lengte,
  MRI      = data[[idx[7]]],
  check.names = FALSE
)

# --- Reference solution variables for the grader -----------------------------
gemiddeld_MRI      <- mean(data$MRI, na.rm = TRUE)
bovengemiddeld_MRI <- data$MRI > gemiddeld_MRI

# --- Tests (unchanged) -------------------------------------------------------
context({
  testcaseAssert("De variabele gemiddeld_MRI bestaat.", function(env) {
    isTRUE(exists("gemiddeld_MRI", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("gemiddeld_MRI", function(env) env$gemiddeld_MRI, gemiddeld_MRI)
    testFunctionUsedInVar("mean", "gemiddeld_MRI")
  })
})

context({
  testcaseAssert("De variabele bovengemiddeld_MRI bestaat.", function(env) {
    isTRUE(exists("bovengemiddeld_MRI", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("bovengemiddeld_MRI", function(env) env$bovengemiddeld_MRI, bovengemiddeld_MRI)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("boxplot")
  })
})
