from evaluation_utils import EvaluationResult, ConvertedOracleContext

def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    # expected as defined in the value field of the test suit
    # actual as given by running the file
    if isinstance(context.actual, list):
        value = (sorted(context.expected) == sorted(context.actual))
        value &= type(context.expected) == type(context.actual)
    else:
        value = False
    obj = EvaluationResult(result = value)
    return obj
