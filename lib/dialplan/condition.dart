part of Dialplan;

class Condition implements JsonSerializable {
  String comment;
  Condition();

  factory Condition.fromJson(Map json) {
    switch (json['condition'] as String) {
      case 'date':
        return new Date.fromJson(json);

      case 'time':
        return new Time.fromJson(json);

      default:
        throw ('Unknown condition "${json['condition']}"');
    }
  }

  Map toJson() => null;
}
