context({

  testcase('Check of de data correct is aangemaakt via vectoren:', {
    testEqual("length(data)", function(env) { length(env$data) }, 19)
    testEqual("data[16]", function(env) { env$data[16] }, 1000)
  })
  
  testcase('Check de initiële mediaan en gemiddelde van Senne:', {
    testFunction("mean", args = list(data))
    testFunction("median", args = list(data))
  })
  
  testcase('Controleer de gecorrigeerde vectoren:', {
    testEqual("length(data_correct)", function(env) { length(env$data_correct) }, 19)
    testEqual("data_correct[16]", function(env) { env$data_correct[16] }, 10)
  })
  
  testcase('Check gecorrigeerde gemiddelde en mediaan:', {
    testFunction("mean", args = list(data_correct))
    testFunction("median", args = list(data_correct))
  })

})
