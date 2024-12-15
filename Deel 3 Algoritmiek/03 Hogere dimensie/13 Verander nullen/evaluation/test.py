from evaluation_utils import EvaluationResult, ConvertedOracleContext

def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    # expected as defined in the value field of the test suite
    # actual as given by running the file
    if isinstance(context.actual, list) and isinstance(context.expected, list):
        value = context.actual == context.expected
    else:
        value = False

    obj = EvaluationResult(
        result = value
        )
    return obj
