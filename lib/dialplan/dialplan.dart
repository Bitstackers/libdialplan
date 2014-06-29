part of Dialplan;

class Dialplan implements JsonSerializable {
  int version = 1;
  int receptionId;
  String entryNumber;
  List<ExtensionGroup> extensionGroups = new List<ExtensionGroup>();
  String startExtensionGroup;

  Dialplan();

  factory Dialplan.fromJson(Map json) {
    if (json != null) {
      Dialplan plan = new Dialplan();
      if (json[_JSON_EXTENSIONGROUPS] != null) {
        extensionGroups = (json[_JSON_EXTENSIONGROUPS] as List).map((Map group) => new ExtensionGroup.fromJson(group)).toList();
      }

      if(json[_JSON_VERSION] != null) {
        plan.version = json[_JSON_VERSION];
      }

      plan.receptionId = json[_JSON_RECEPTIONID];
      plan.entryNumber = json[_JSON_ENTRYNUMBER];
      plan.startExtensionGroup = json[_JSON_START_EXTENSIONGROUP];

      return plan;
    } else {
      return null;
    }
  }

  Map toJson() => {
    _JSON_VERSION: version,
    _JSON_EXTENSIONGROUPS: extensionGroups,
    _JSON_START_EXTENSIONGROUP: startExtensionGroup
  };
}
