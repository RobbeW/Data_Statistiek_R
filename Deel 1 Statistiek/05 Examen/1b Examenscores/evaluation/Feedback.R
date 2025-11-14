library(dplyr)

# Data inlezen:
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/student_exam_scores.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Scores herberekenen op 20
data$exam_score <- round(data$exam_score / max(data$exam_score) * 20, 1)

# Alleen gewenste kolommen:
data <- data[c("student_id","hours_studied","sleep_hours","exam_score")]

gemiddelde_slaap <- mean(data$sleep_hours)
bovengemiddelde_slaap <- data$sleep_hours > gemiddelde_slaap

gemiddelde_studieuren <- mean(data$hours_studied)
bovengemiddelde_studieuren <- data$hours_studied > gemiddelde_studieuren

gemiddelde_aanwezigheid <- mean(data$attendance_percentage)
bovengemiddelde_aanwezigheid <- data$attendance_percentage > gemiddelde_aanwezigheid

bovengemiddelde_leerlingen <- bovengemiddelde_aanwezigheid + bovengemiddelde_slaap + bovengemiddelde_studieuren >= 2

context({
  testcaseAssert("De variabele gemiddelde_slaap bestaat.", function(env) {
    isTRUE(exists("gemiddelde_slaap", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("gemiddelde_slaap", function(env) {
      env$gemiddelde_slaap
    }, gemiddelde_slaap)
  })
})

context({
  testcaseAssert("De variabele bovengemiddelde_slaap bestaat.", function(env) {
    isTRUE(exists("bovengemiddelde_slaap", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("bovengemiddelde_slaap", function(env) {
      env$bovengemiddelde_slaap
    }, bovengemiddelde_slaap)
  })
})

context({
  testcaseAssert("De variabele gemiddelde_studieuren bestaat.", function(env) {
    isTRUE(exists("gemiddelde_studieuren", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("gemiddelde_studieuren", function(env) {
      env$gemiddelde_studieuren
    }, gemiddelde_studieuren)
  })
})

context({
  testcaseAssert("De variabele bovengemiddelde_studieuren bestaat.", function(env) {
    isTRUE(exists("bovengemiddelde_studieuren", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("bovengemiddelde_studieuren", function(env) {
      env$bovengemiddelde_studieuren
    }, bovengemiddelde_studieuren)
  })
})

context({
  testcaseAssert("De variabele gemiddelde_aanwezigheid bestaat.", function(env) {
    isTRUE(exists("gemiddelde_aanwezigheid", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("gemiddelde_aanwezigheid", function(env) {
      env$gemiddelde_aanwezigheid
    }, gemiddelde_aanwezigheid)
  })
})

context({
  testcaseAssert("De variabele bovengemiddelde_aanwezigheid bestaat.", function(env) {
    isTRUE(exists("bovengemiddelde_aanwezigheid", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("bovengemiddelde_aanwezigheid", function(env) {
      env$bovengemiddelde_aanwezigheid
    }, bovengemiddelde_aanwezigheid)
  })
})

context({
  testcaseAssert("De variabele bovengemiddelde_leerlingen bestaat.", function(env) {
    isTRUE(exists("bovengemiddelde_leerlingen", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("bovengemiddelde_leerlingen", function(env) {
      env$bovengemiddelde_leerlingen
    }, bovengemiddelde_leerlingen)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("boxplot")
  })
})


