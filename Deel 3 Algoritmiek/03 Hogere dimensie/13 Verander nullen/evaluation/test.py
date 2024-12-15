from evaluation_utils import EvaluationResult, ConvertedOracleContext, Message

def prettify_matrix(data):
    
    return data
    

def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    # expected as defined in the value field of the test suite
    # actual as given by running the file
    if isinstance(context.actual, list) and isinstance(context.expected, list):
        value = context.actual == context.expected
    else:
        value = False


    readable_expected = "test"
    readable_actual = "test"
    obj = EvaluationResult(
        result = value,
        readable_actual = readable_actual,
        readable_expected = readable_expected,
        messages = [Message(
            description = "Testje, kan je dit lezen?",
            format = "html",
            permission = "student"
        )]
        )
    return obj
