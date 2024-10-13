from evaluation_utils import EvaluationResult, ConvertedOracleContext

def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    value = (context.expected == context.actual)
    obj = EvaluationResult(result = value)
    return obj
