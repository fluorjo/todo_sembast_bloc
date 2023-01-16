class TodoDb {
  //싱글톤 클래스임. = 클래스가 단 하나의 인스턴스만 가지는 패턴이란 뜻.
  static final TodoDb _singleton = TodoDb._internal();
  //private internal 생성자
  TodoDb._internal();

  factory TodoDb() {
    return _singleton;
  }
}
