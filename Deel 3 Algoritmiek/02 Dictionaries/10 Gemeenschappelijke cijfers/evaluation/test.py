from evaluation_utils import EvaluationResult, ConvertedOracleContext

def check_function(context: ConvertedOracleContext) -> EvaluationResult:
    value = (sorted(context.expected) == sorted(context.actual))
    obj = EvaluationResult(result = value)
    return obj
