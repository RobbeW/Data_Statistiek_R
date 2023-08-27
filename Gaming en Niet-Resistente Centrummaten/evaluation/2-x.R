context({

  testcase('Controleer de eerste variabele, de lengte van de vector en de uitkomst van de berekeningen:', {
    testEqual("length(data)", function(env) { length(env$data) }, 19)
    testEqual("data[16]", function(env) { env$data[16] }, 1000)
    testEqual("mean(data)", function(env) { mean(env$data) }, mean(c(11, 8, 7, 9, 12, 14, 10, 7, 15, 9, 8, 12, 9, 11, 10, 1000, 14, 15, 8)))
    testEqual("median(data)", function(env) { median(env$data) }, median(c(11, 8, 7, 9, 12, 14, 10, 7, 15, 9, 8, 12, 9, 11, 10, 1000, 14, 15, 8)))
  })
  
  testcase('Controleer de tweede variabele, de lengte van de vector en de uitkomst van de gecorrigeerde berekeningen:', {
    testEqual("length(data_correct)", function(env) { length(env$data_correct) }, 19)
    testEqual("data_correct[16]", function(env) { env$data_correct[16] }, 10)
    testEqual("mean(data_correct)", function(env) { mean(env$data_correct) }, mean(c(11, 8, 7, 9, 12, 14, 10, 7, 15, 9, 8, 12, 9, 11, 10, 10, 14, 15, 8)))
    testEqual("median(data_correct)", function(env) { median(env$data_correct) }, median(c(11, 8, 7, 9, 12, 14, 10, 7, 15, 9, 8, 12, 9, 11, 10, 10, 14, 15, 8)))
  })

})
