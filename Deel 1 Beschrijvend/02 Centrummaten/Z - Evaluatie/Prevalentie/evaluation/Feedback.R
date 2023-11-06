# Een functie die de agresti-coull schatter simuleert
agresti_coull <- function(vector) {
  n <- length(vector)
  X <- sum(vector)
  ag <- (X+2)/(n+4) * 100
  return(round(ag, 2))
}

### Een voorbeeld ###
agresti_coull(c(TRUE, TRUE, FALSE, TRUE, FALSE))  # 55.56


# NHANES dataset
data <- read.csv("https://raw.githubusercontent.com/GTPB/PSLS20/master/data/NHANES.csv",
                 header = TRUE)
data <- na.omit(data[, c("Gender","Age","BMI","Diabetes", "DaysMentHlthBad", "AlcoholYear")])
data$Diabetes <- data$Diabetes == "Yes"
rownames(data) <- seq_len(nrow(data))
colnames(data) <- c("gender","age","bmi","diabetes","days_bad_mental_health","days_alc")

# Antwoord op de vragen
median_alc <- median(data$days_alc)
weinig_alc <- data$days_alc < median_alc
p_diabetes_weinig_alc <- agresti_coull(data$diabetes[weinig_alc])

veel_alc <- data$days_alc > median_alc
p_diabetes_veel_alc <- agresti_coull(data$diabetes[veel_alc])
# alernatief
p_diabetes_veel_alc_alt <- agresti_coull(data$diabetes[!weinig_alc])

printVecAsis <- function(x) {
  ifelse(length(x) == 1, x, 
       ifelse(is.character(x), paste0("c(", paste(sapply(x, function(a) paste0("\'",a,"\'")), collapse=", "), ")"),
              paste0("c(", paste(x, collapse=", "), ")")))}

context({
  testcase("De functie agresti_coull werkt:", {
    ntests <- 1:6
    for (i in ntests) {
      vec <- sample(c(TRUE,FALSE), sample(5:20, 1), TRUE)
      testEqual(paste0("met parameter ", printVecAsis(vec)), function(env) {
                  env$agresti_coull(vec)
                }, agresti_coull(vec))
    }
  })
})

context({
  testcaseAssert("De variabele mediaan_alc bestaat.", function(env) {
    isTRUE(exists("mediaan_alc", env))
  })
  testcase("De variabele werden correct berekend:", {
    testEqual("mediaan_alc", function(env) {
      env$mediaan_alc
    }, mediaan_alc)
    testFunctionUsedInVar("median", "mediaan_alc")
  })
})

context({
  testcaseAssert("De variabele weinig_alc bestaat.", function(env) {
    isTRUE(exists("weinig_alc", env))
  })
  testcase("De variabele werden correct berekend:", {
    testEqual("weinig_alc", function(env) {
      env$weinig_alc
    }, weinig_alc)
  })
})

context({
  testcaseAssert("De variabele p_diabetes_weinig_alc bestaat.", function(env) {
    isTRUE(exists("p_diabetes_weinig_alc", env))
  })
  testcaseAssert("De variabele p_diabetes_veel_alc bestaat.", function(env) {
    isTRUE(exists("p_diabetes_veel_alc", env))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("p_diabetes_weinig_alc", function(env) {
      env$p_diabetes_weinig_alc
    }, p_diabetes_weinig_alc)
    testEqual("p_diabetes_veel_alc", function(env) {
        env$p_diabetes_veel_alc
      }, paste(p_diabetes_veel_alc, "of via negatie van weinig_alc", p_diabetes_veel_alc_alt),
      function(gen, exp) {
        isTRUE(all.equal(gen, p_diabetes_veel_alc)) | isTRUE(all.equal(gen, p_diabetes_veel_alc_alt))
      })
    #testFunctionUsedInVar("agrest_coull", "p_diabetes_weinig_alc")
    #testFunctionUsedInVar("agrest_coull", "p_diabetes_veel_alc")
  })
})


