part of Dialplan;

class Receptionists implements Action {
  String comment;
  int sleepTime;
  String music;
  String welcomeFile;

  Receptionists();

  Receptionists.fromJson(Map json) {
    comment = json[_JSON_COMMENT];
    sleepTime = json[_JSON_WAITINGTIME];
    music = json[_JSON_MUSIC];
    welcomeFile = json[_JSON_WELCOMEFILE];
  }

  Map toJson() {
    Map result = {
      _JSON_ACTION: _JSON_RECEPTIONISTS
    };

    if (comment != null) {
      result[_JSON_COMMENT] = comment;
    }

    if (sleepTime != null) {
      result[_JSON_WAITINGTIME] = sleepTime;
    }

    if (music != null) {
      result[_JSON_MUSIC] = music;
    }

    if (welcomeFile != null) {
      result[_JSON_WELCOMEFILE] = welcomeFile;
    }
    return result;
  }
}
