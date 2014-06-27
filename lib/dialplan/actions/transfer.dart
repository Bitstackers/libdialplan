part of Dialplan;

class Transfer implements Action {
  String comment;
  String destination;

  Transfer();

  Transfer.fromJson(Map json) {
    comment = json[_JSON_COMMENT];
    destination = json[_JSON_DESTINATION];
  }

  Map toJson() {
    Map result = {
      _JSON_ACTION: _JSON_TRANSFER
    };

    if (comment != null) {
      result[_JSON_COMMENT] = comment;
    }

    if (destination != null) {
      result[_JSON_DESTINATION] = destination;
    }

    return result;
  }
}
