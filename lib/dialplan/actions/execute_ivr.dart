part of dialplan;

class ExecuteIvr implements Action {
  String comment;
  String ivrname;

  ExecuteIvr();

  ExecuteIvr.fromJson(Map json) {
    comment = json[_JSON_COMMENT];
    ivrname = json[_JSON_IVR_NAME];
  }

  Map toJson() {
    Map result = {
      _JSON_ACTION: _JSON_EXECUTE_IVR
    };

    if (comment != null) {
      result[_JSON_COMMENT] = comment;
    }

    if (ivrname != null) {
      result[_JSON_IVR_NAME] = ivrname;
    }

    return result;
  }
}
