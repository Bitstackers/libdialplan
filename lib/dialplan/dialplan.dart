part of Dialplan;

class Dialplan implements JsonSerializable {
  static const String _JSON_EXTENSIONGROUP = 'extensionGroups';
  static const String _JSON_START_EXTENSIONGROUP = 'startExtensionGroup';
  static const String _JSON_RECEPTIONID = 'receptionid';
  static const String _JSON_ENTRYNUMBER = 'entrynumber';

  int receptionId;
  String entryNumber;
  Map<String, List<Extension>> extensionGroups = new Map<String, List<Extension>> ();
  String startExtensionGroup;

  Dialplan();

  factory Dialplan.fromJson(Map json) {
    if (json != null) {
      Dialplan plan = new Dialplan();
      if (json.containsKey(_JSON_EXTENSIONGROUP)) {
        Map<String, List<Map>> groups = json[_JSON_EXTENSIONGROUP];
        for(String key in groups.keys) {
          List<Map> rawExtensions = groups[key];
          plan.extensionGroups[key] = rawExtensions.map((Map e) =>
              new Extension.fromJson(e)).toList();
        }
      }

      plan.receptionId = json[_JSON_RECEPTIONID];
      plan.entryNumber = json[_JSON_ENTRYNUMBER];

      return plan;
    } else {
      return null;
    }
  }

  Map toJson() => {
    _JSON_EXTENSIONGROUP: extensionGroups,
    _JSON_START_EXTENSIONGROUP: startExtensionGroup
  };
}
