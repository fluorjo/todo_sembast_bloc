class Todo {
  int? id;
  String? name;
  String? description;
  String? completeBy;
  int? priority;

  Todo(this.name, this.description, this.completeBy, this.priority);
  //todo 객체의 모든 필드를 취하는 생성자를 생성. id는 sembast 이용시 데이터베이스에서 자동 생성되기 때문에 안 넣어도 됨.

  Map<String, dynamic> toMap() {
    //sembast에는 최종적으로 json으로 저장됨. 그래서 일단 todo를 map으로 만들어줌. 그러면 sembast가 자동으로 map을 json으로 변환함.
    return {
      'name': name,
      'description': description,
      'completeBy': completeBy,
      'priority': priority,
    };
  }

    static Todo fromMap(Map<String, dynamic> map) {
    return Todo(map['name'], map['description'],
        map['completeBy'], map['priority']);
  }
  //map이 전달된 것 가지로 새로운 todo를 반환. (왜 이 함수가 필요한 거지?)
  //todo 반환 시 객체가 필요 없어서 static이라고 함. 
}
