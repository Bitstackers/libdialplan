part of dialplan;

class Voicemail implements Action {
  String comment;
  String email;

  Voicemail();

  Voicemail.fromJson(Map json) {
    comment = json[_JSON_COMMENT];
    email = json[_JSON_EMAIL];
  }

  Map toJson() {
    Map result = {
      _JSON_ACTION: _JSON_VOICEMAIL
    };

    if (comment != null) {
      result[_JSON_COMMENT] = comment;
    }

    if (email != null) {
      result[_JSON_EMAIL] = email;
    }

    return result;
  }
}
