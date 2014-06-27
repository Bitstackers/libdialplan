part of Dialplan;

class Action implements JsonSerializable {
  Action();

  factory Action.fromJson(Map json) {
    String actionName = json[_JSON_ACTION];
    switch (actionName) {
      case _JSON_EXECUTE_IVR:
        return new ExecuteIvr.fromJson(json);
      case _JSON_FORWARD:
        return new Forward.fromJson(json);
      case _JSON_PLAYAUDIO:
        return new PlayAudio.fromJson(json);
      case _JSON_RECEPTIONISTS:
        return new Receptionists.fromJson(json);
      case _JSON_TRANSFER:
        return new Transfer.fromJson(json);
      case _JSON_VOICEMAIL:
        return new Voicemail.fromJson(json);

      default:
        throw 'Unknown action. action name:"${actionName}" complete Object:"${json}"';
    }
  }

  Map toJson() => null;
}
