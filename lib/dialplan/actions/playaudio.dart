part of dialplan;

class PlayAudio implements Action {
  String comment;
  String filename;

  PlayAudio();

  PlayAudio.fromJson(Map json) {
    comment = json[_JSON_COMMENT];
    filename = json[_JSON_FILENAME];
  }

  Map toJson() {
    Map result = {
      _JSON_ACTION: _JSON_PLAYAUDIO
    };

    if (comment != null) {
      result[_JSON_COMMENT] = comment;
    }

    if (filename != null) {
      result[_JSON_FILENAME] = filename;
    }

    return result;
  }
}
