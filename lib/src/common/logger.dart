const String APP_NAME = 'mediasoup-client';

typedef void LoggerDebug(dynamic message);

bool isLogging = false;

setLoggerStatus(bool isLoggingP) {
  isLogging = isLogging;
}

class Logger {
  final String? _prefix;

  late LoggerDebug debug;
  late LoggerDebug warn;
  late LoggerDebug error;

  Logger(this._prefix) {
    if (_prefix != null) {
      debug = (dynamic message) {
        if (isLogging) {
          print('$APP_NAME:$_prefix $message');
        }
      };
      warn = (dynamic message) {
        if (isLogging) {
          print('$APP_NAME:WARN:$_prefix $message');
        }
      };
      error = (dynamic message) {
        if (isLogging) {
          print('$APP_NAME:ERROR:$_prefix $message');
        }
      };
    } else {
      debug = (dynamic message) {
        if (isLogging) {
          print('$APP_NAME $message');
        }
      };
      warn = (dynamic message) {
        if (isLogging) {
          print('$APP_NAME:WARN $message');
        }
      };
      error = (dynamic message) {
        if (isLogging) {
          print('$APP_NAME:ERROR $message');
        }
      };
    }
  }
}
