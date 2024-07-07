# Bloedgroepen
type <- c("A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-")
percentage <- c(34, 6, 8.5, 1.5, 38.25, 6.75, 4.25, 0.75)

# Labels aanmaken
bloedlabels <- paste0(type," (", percentage, "%)")

context({
  testcaseAssert("De variabele bloedlabels bestaat.", function(env) {
    isTRUE(exists("bloedlabels", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("bloedlabels", function(env) {
      env$bloedlabels
    }, bloedlabels)
    testFunctionUsedInVar("paste0", "bloedlabels")
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("pie")
  })
})



  