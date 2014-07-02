part of dialplan;

class ExtensionGroup implements JsonSerializable {
  String comment;
  String name;
  List<Extension> extensions = new List<Extension>();

  ExtensionGroup({String this.name});

  factory ExtensionGroup.fromJson(Map json) {
    ExtensionGroup object = new ExtensionGroup()
      ..name = json[_JSON_NAME]
      ..comment = json[_JSON_COMMENT]
      ..extensions.addAll((json[_JSON_EXTENSIONLIST] as List).map((Map extensions) => new Extension.fromJson(extensions)));

    return object;
  }

  Map toJson() {
    Map result = {
      _JSON_NAME: name,
      _JSON_EXTENSIONLIST: extensions
    };

    if (comment != null) {
      result[_JSON_COMMENT] = comment;
    }

    return result;
  }
}
