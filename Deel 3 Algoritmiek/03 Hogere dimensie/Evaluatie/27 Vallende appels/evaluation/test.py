from evaluation_utils import EvaluationResult, ConvertedOracleContext, Message

def find_longest(matrix):
    longest = 0
    for r in range(len(matrix)):
        for c in range(len(matrix[r])):
            if isinstance(matrix[r][c], str):
                el = f"\"{matrix[r][c]}\""
            else:
                el = str(matrix[r][c])
            if len(el) > longest:
                longest = len(el)
    return longest

def prettify_matrix_num(matrix):
    # quick and dirty but pretty(ier)
    dist = find_longest(matrix)
    
    txt = "["
    for r in range(len(matrix)):
        if r > 0:
            txt += " "
        txt += "["
        for c in range(len(matrix[r])):
            el = matrix[r][c]
            if isinstance(el, str):
                el = f"\"{el}\""
            txt += f"{el:^{dist}}"
            if c < len(matrix[r]) - 1:
                txt += ", "
        txt += "]"
        if r < len(matrix) - 1:
            txt += ",\n"
    txt += "]"
    return txt
    

def is_num_matrix(actual):
    value = isinstance(actual, list) and len(actual) > 0 and isinstance(actual[0], list) and len(actual[0]) > 0
    return value
    
def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    # expected as defined in the value field of the test suite
    # actual as given by running the file
    if isinstance(context.actual, list) and isinstance(context.expected, list):
        value = context.actual == context.expected
    else:
        value = False


    readable_expected = prettify_matrix_num(list(context.expected))
    if is_num_matrix(context.actual):
        readable_actual = prettify_matrix_num(list(context.actual))
        obj = EvaluationResult(
            result = value,
            readable_actual = readable_actual,
            readable_expected = readable_expected
        )
    else:
        obj = EvaluationResult(
            result = value,
            readable_expected = readable_expected
        )
    return obj
