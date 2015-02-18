part of dialplan;

class Dialplan implements JsonSerializable {
  String comment;
  String entryNumber;
  List<ExtensionGroup> extensionGroups = new List<ExtensionGroup>();
  int receptionId;
  String startExtensionGroup;
  bool isCompiled = false;
  int version = 1;

  Dialplan();

  factory Dialplan.fromJson(Map json) {
    if (json != null) {
      Dialplan plan = new Dialplan();
      if (json[_JSON_EXTENSIONGROUPS] != null) {
        plan.extensionGroups = (json[_JSON_EXTENSIONGROUPS] as List).map((Map group) => new ExtensionGroup.fromJson(group)).toList();
      }

      if(json[_JSON_VERSION] != null) {
        plan.version = json[_JSON_VERSION];
      }

      plan
        ..receptionId = json[_JSON_RECEPTIONID]
        ..entryNumber = json[_JSON_ENTRYNUMBER]
        ..isCompiled = json[_JSON_COMPILED]
        ..startExtensionGroup = json[_JSON_START_EXTENSIONGROUP]
        ..comment = json[_JSON_COMMENT];

      return plan;
    } else {
      return null;
    }
  }

  Map toJson() {
    Map result = {
      _JSON_VERSION: version,
      _JSON_EXTENSIONGROUPS: extensionGroups,
      _JSON_START_EXTENSIONGROUP: startExtensionGroup
    };

    if (comment != null) {
      result[_JSON_COMMENT] = comment;
    }

    return result;
  }
}
