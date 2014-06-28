part of Dialplan;

class Extension implements JsonSerializable {
  String comment;
  String name;
  List<Condition> conditions = new List<Condition>();
  List<Action> actions = new List<Action>();

  Extension({String this.name});

  factory Extension.fromJson(Map json) {
    Extension object = new Extension()
      ..name = json[_JSON_NAME]
      ..comment = json[_JSON_COMMENT]
      ..conditions.addAll((json[_JSON_CONDITIONLIST] as List).map((Map c) => new Condition.fromJson(c)))
      ..actions.addAll((json[_JSON_ACTIONLIST] as List).map((Map c) => new Action.fromJson(c)));

    return object;
  }

  Map toJson() {
    Map result = {
      _JSON_NAME: name,
      _JSON_CONDITIONLIST: conditions,
      _JSON_ACTIONLIST: actions
    };

    if (comment != null) {
      result[_JSON_COMMENT] = comment;
    }

    return result;
  }
}
