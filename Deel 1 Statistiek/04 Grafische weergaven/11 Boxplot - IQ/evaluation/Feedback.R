suppressPackageStartupMessages(library(dplyr))

# ── Data inlezen
data <- read.table(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/BRAINSIZE.txt",
  header = TRUE, sep = "\t", na.strings = c(".", "NA", ""),
  stringsAsFactors = FALSE, check.names = FALSE
)

# ── Kolomnamen normaliseren (trim + case-insensitief match) ──────────────────
nm <- trimws(names(data))
names(data) <- nm
tolower_nms <- tolower(nm)

req <- function(name) {
  i <- match(tolower(name), tolower_nms)
  if (is.na(i)) stop(sprintf("Kolom '%s' niet gevonden in data.", name), call. = FALSE)
  i
}

i_gender   <- req("Gender")
i_fsiq     <- req("FSIQ")
i_viq      <- req("VIQ")
i_piq      <- req("PIQ")
i_weight   <- req("Weight")
i_height   <- req("Height")
i_mricount <- req("MRICount")

# ── Eenheden + NL kolomnamen ─────────────────────────────────────────────────
massa  <- as.numeric(data[[i_weight]]) * 0.45359237   # lbs → kg
lengte <- as.numeric(data[[i_height]]) * 2.54         # inch → cm

data <- data.frame(
  geslacht = data[[i_gender]],
  FSIQ     = data[[i_fsiq]],
  VIQ      = data[[i_viq]],
  PIQ      = data[[i_piq]],
  massa    = massa,
  lengte   = lengte,
  MRI      = data[[i_mricount]],
  check.names = FALSE
)

# ── Referentie-oplossing voor de tests ───────────────────────────────────────
gemiddeld_MRI      <- mean(data$MRI, na.rm = TRUE)
bovengemiddeld_MRI <- data$MRI > gemiddeld_MRI

# ── Tests ────────────────────────────────────────────────────────────────────
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
