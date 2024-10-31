from evaluation_utils import EvaluationResult, ConvertedOracleContext

def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    # expected as defined in the value field of the test suit
    # actual as given by running the file
    value = set(context.expected.keys()) == set(context.actual.keys())
    for key, value in context.expected.items():
        value &= set(value) == set(context.actual[key])
    
    obj = EvaluationResult(result = value)
    return obj
