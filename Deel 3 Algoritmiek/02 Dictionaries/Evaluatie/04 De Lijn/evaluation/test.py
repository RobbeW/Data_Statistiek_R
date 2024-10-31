from evaluation_utils import EvaluationResult, ConvertedOracleContext

def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    # expected as defined in the value field of the test suit
    # actual as given by running the file
<<<<<<< HEAD
    value = sorted(context.expected.keys()) == sorted(context.actual.keys())
    for key, value in context.expected.items():
        value &= sorted(value) == sorted(context.actual[key])
=======
    value = set(context.expected.keys()) == set(context.actual.keys())
    for key, value in context.expected.items():
        value &= set(value) == set(context.actual[key])
>>>>>>> 4946f6e (fixing test)
    
    obj = EvaluationResult(result = value)
    return obj
