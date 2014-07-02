part of ivr;

class Entry implements JsonSerializable {
  String digits;
  String extensionGroup;

  Entry();

  factory Entry.fromJson(Map json) {
    Entry obj = new Entry()
      ..digits = json['digits']
      ..extensionGroup = json['extensionGroup'];

    return obj;
  }

  Map toJson() => {
    'digits': digits,
    'extensionGroup': extensionGroup
  };
}
