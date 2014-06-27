part of Dialplan;

class Condition implements JsonSerializable {
  String comment;
  Condition();

  factory Condition.fromJson(Map json) {
    String conditionName = json[_JSON_CONDITION];
    switch (conditionName) {
      case _JSON_DATE:
        return new Date.fromJson(json);

      case _JSON_TIME:
        return new Time.fromJson(json);

      default:
        throw 'Unknown condition. condition name:"${conditionName}" complete Object:"${json}"';
    }
  }

  Map toJson() => null;
}
