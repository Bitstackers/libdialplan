part of dialplan;

class Forward implements Action {
  String comment;
  String number;

  Forward();

  Forward.fromJson(Map json) {
    comment = json[_JSON_COMMENT];
    number = json[_JSON_NUMBER];
  }

  Map toJson() {
    Map result = {
      _JSON_ACTION: _JSON_FORWARD
    };

    if (comment != null) {
      result[_JSON_COMMENT] = comment;
    }

    if (number != null) {
      result[_JSON_NUMBER] = number;
    }

    return result;
  }
}
