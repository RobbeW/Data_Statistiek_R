from evaluation_utils import EvaluationResult, ConvertedOracleContext

def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    # expected as defined in the value field of the test suit
    # actual as given by running the file
    value = (sorted(context.expected) == sorted(context.actual))
    value &= type(context.expected) == type(context.actual)
    obj = EvaluationResult(result = value)
    return obj
