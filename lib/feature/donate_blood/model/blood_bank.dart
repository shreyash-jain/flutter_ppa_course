import 'dart:convert';

/// Futures
///
///
///

/// chat application
///
///
///

Future<int> getInt() async {
  await Future.delayed(Duration(seconds: 3));
  print("hello");
  return 3;
}

Stream<int> getIndiaScores() async* {
  yield 0;
  await Future.delayed(Duration(seconds: 3));
  yield 5;
  await Future.delayed(Duration(seconds: 3));
  yield 7;
}

void fun() {
  Stream<int> myRuns = getIndiaScores();
  myRuns.listen((event) {
    print(event);
  });
}

class BloodBank {
  int? id;
  String? name;

  Map<String, dynamic> toMap(BloodBank bb) {
    return {"id": bb.id, "name": bb.name};
  }

  String toJsonString(Map map) {
    return jsonEncode(map);
  }

  String serialize(BloodBank bb) {
    return toJsonString(toMap(bb));
  }

  Map fromJsonString(String json) {
    return jsonDecode(json);
  }

  BloodBank fromMap(Map map) {
    BloodBank newBb = BloodBank();
    newBb.id = map['id'];
    newBb.name = map['name'];
    return newBb;
  }

  BloodBank deserializer(String json) {
    return fromMap(fromJsonString(json));
  }
}
