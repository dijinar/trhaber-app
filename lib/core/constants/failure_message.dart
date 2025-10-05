// lib/constants/failure_message.dart

/// No internet connection message
const String noConnectionMessage = 'No internet connection.';

/// Connection timeout message
const String connectionTimedOutMessage = 'Connection timed out.';

/// Unknown error message
const String unknownErrorMessage = 'An unknown error occurred.';

/// Unauthorized or 401 error message
const String unauthorizedMessage = 'Unauthorized (401) - Session ended.';

/// Invalid HTTP status code message
const String invalidHttpStatusMessage = 'Invalid HTTP status code.';

/// Generic timeout message
const String timeoutDuration = 'Request timed out.';

/// Generic invalid status code message
/// Burada [status] parametresi ekleyebilirsin, veya sabit bir metin kullanabilirsin
String invalidStatusMessage(int status) => 'Invalid status code: $status';
