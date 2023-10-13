class Course {
  late int _totalSessions;

  int get totalSessions => _totalSessions;

  set totalSessions(int value) {
    if (value < 10) {
      throw Exception('Total sessions cannot be less than 10');
    }
    _totalSessions = value;
  }
}

class FlutterCourse extends Course {
  int get androidSessions => totalSessions + 5;

  set androidSessions(int value) {
    totalSessions = value - 5;
  }
}

class AndroidCourse extends Course {
  int get flutterSessions => totalSessions - 5;

  set flutterSessions(int value) {
    totalSessions = value + 5;
  }
}

class IOSCourse extends Course {
  int get androidSessions => totalSessions - 3;

  set androidSessions(int value) {
    totalSessions = value + 3;
  }
}

class WebCourse extends Course {
  int get flutterSessions => totalSessions - 2;

  set flutterSessions(int value) {
    totalSessions = value + 2;
  }
}

void main() {
  FlutterCourse flutterCourse = FlutterCourse();
  flutterCourse.totalSessions = 10;

  print('Flutter sessions: ${flutterCourse.totalSessions}');
  print('Android sessions: ${flutterCourse.androidSessions}');

  flutterCourse.totalSessions = 12;

  print('Flutter sessions: ${flutterCourse.totalSessions}');
  print('Android sessions: ${flutterCourse.androidSessions}');

  AndroidCourse androidCourse = AndroidCourse();
  androidCourse.totalSessions = 17;

  print('Android sessions: ${androidCourse.totalSessions}');
  print('Flutter sessions: ${androidCourse.flutterSessions}');
  print('iOS sessions: ${androidCourse.flutterSessions}');
  print('Web sessions: ${androidCourse.flutterSessions}');

  androidCourse.totalSessions = 18;

  print('Android sessions: ${androidCourse.totalSessions}');
  print('Flutter sessions: ${androidCourse.flutterSessions}');
  print('iOS sessions: ${androidCourse.flutterSessions}');
  print('Web sessions: ${androidCourse.flutterSessions}');
}
