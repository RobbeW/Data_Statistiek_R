from evaluation_utils import EvaluationResult, ConvertedOracleContext

def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    # expected as defined in the value field of the test suit
    # actual as given by running the file
    value = set(context.expected.keys()) == set(context.actual.keys())
    for key, voornamen in context.expected.items():
        value &= set(voornamen) == set(context.actual[key])
        value &= type(voornamen) == type(context.actual[key])

    obj = EvaluationResult(result = value)
    return obj