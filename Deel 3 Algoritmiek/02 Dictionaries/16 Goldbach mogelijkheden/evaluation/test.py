from evaluation_utils import EvaluationResult, ConvertedOracleContext

def pretty_print_dict(dictio):
    txt = "{"
    i = 1
    for key, value in dictio.items():
        i += 1
        txt += f"{key} : {repr(value)}"
        if i != len(dictio) - 1:
            txt += ",\n"
            txt += " "
    txt += "}"
    return txt

def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    # expected as defined in the value field of the test suit
    # actual as given by running the file
    
    if isinstance(context.actual, dict):
        value = dict(context.expected) == dict(context.actual)
    else:
        value = False
    
    readable_expected = pretty_print_dict(context.expected)
    readable_actual = pretty_print_dict(context.actual)
    
    obj = EvaluationResult(
        result = value)
    return obj
