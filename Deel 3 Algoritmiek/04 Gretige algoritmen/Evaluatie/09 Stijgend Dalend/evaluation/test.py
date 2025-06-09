from evaluation_utils import EvaluationResult, ConvertedOracleContext, Message


def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    def make_di_str(list):
        txt = ""
        for i in range(len(list)-1):
            if list[i] < list[i+1]:
                txt += "I"
            else:
                txt += "D"
        return txt
    
    # expected as defined in the value field of the test suite
    # actual as given by running the file
    if isinstance(context.actual, list) and isinstance(context.expected, list):
        # does the actual list contain all numbers from 0 to n-1?
        value = True
        for i in range(len(context.actual)):
            value &= i in context.actual
        
        # check if DI strings match
        value = value and (make_di_str(context.actual) == make_di_str(context.expected))
    else:
        value = False

    obj = EvaluationResult(
        result = value,
        readable_actual = str(context.actual),
        readable_expected = str(context.actual if value else context.expected)
    )
    return obj
