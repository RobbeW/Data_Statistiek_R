context({
  testcase('Controleer de variabele met de lonen:', {
    testEqual("length(salaries)", function(env) { length(env$salaries) }, 15)
    testEqual("sum(salaries)", function(env) { sum(env$salaries) }, 64400)
    testEqual("mean(salaries)", function(env) { mean(env$salaries) }, 4293.33333333333)
    testEqual("median(salaries)", function(env) { median(env$salaries) }, 4100)
  })
    testcase('Check output format', {
    testOutput(function(env) { 
      paste0(
        "Totale som van lonen: ", sum(env$salaries), " euro.\n",
        "Gemiddeld loonniveau: ", mean(env$salaries), " euro.\n",
        "Mediaan loon: ", median(env$salaries), " euro."
      ) 
    }, "Totale som van lonen: 64400 euro.\nGemiddeld loonniveau: 4293.33333333333 euro.\nMediaan loon: 4100 euro.")
  })
})
