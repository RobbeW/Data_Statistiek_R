from evaluation_utils import EvaluationResult, ConvertedOracleContext, Message

def find_longest(matrix):
    longest = 0
    for r in range(len(matrix)):
        for c in range(len(matrix[r])):
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
            txt += f"{el:>{dist}}"
            if c < len(matrix[r]) - 1:
                txt += ", "
        txt += "]"
        if r < len(matrix) - 1:
            txt += ",\n"
    txt += "]"
    return txt
    

def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    # expected as defined in the value field of the test suite
    # actual as given by running the file
    if isinstance(context.actual, list) and isinstance(context.expected, list):
        if isinstance(context.actual[0], list):
            value = (len(context.actual) == len(context.actual[0]) == 3)
            for i in range(len(context.actual)):
                value &= len(context.actual[i]) == 3
        else: 
            value = False
    else:
        value = False

    if value:
        readable_actual = prettify_matrix_num(list(context.actual))
        obj = EvaluationResult(
            result = value,
            readable_actual = readable_actual,
            readable_expected = readable_actual
        )
    else:
        readable_expected = prettify_matrix_num([["?","?","?"],["?","?","?"],["?","?","?"]])
        obj = EvaluationResult(
            result = value,
            readable_expected = readable_expected,
            messages=[Message(
                description="Je resultaat is geen lijst of de dimensies zijn foutief.",
                format="html",
                permission="student"
            )]
        )
    return obj
