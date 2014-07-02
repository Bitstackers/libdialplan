part of ivr;

class Ivr implements JsonSerializable {
  String name;
  String greetingLong;
  String greetingShort;
  String invalidSound;
  String exitSound;
  String confirmKey;
  int confirmAttempts;
  int timeout;
  int interDigitTimeout;
  int maxFailures;
  int maxTimeouts;
  int ditgitLength;
  List<Entry> Entries = new List<Entry>();

  Ivr();

  factory Ivr.fromJson(Map json) {
    Ivr obj = new Ivr()
      ..name = json['name']
      ..greetingLong = json['greetingLong']
      ..greetingShort = json['greetingShort']
      ..invalidSound = json['invalidSound']
      ..exitSound = json['exitSound']
      ..confirmKey = json['confirmKey']
      ..confirmAttempts = json['confirmAttempts']
      ..timeout = json['timeout']
      ..interDigitTimeout = json['interDigitTimeout']
      ..maxFailures = json['maxFailures']
      ..maxTimeouts = json['maxTimeouts']
      ..ditgitLength = json['ditgitLength'];

    List entries = json['entries'] as List;
    if(entries != null) {
      obj.Entries = entries.map((Map entry) => new Entry.fromJson(entry)).toList();
    }

    return obj;
  }

  Map toJson() {
    Map result = {
      'name': name,
      'greetingLong': greetingLong,
      'greetingShort': greetingShort,
      'invalidSound': invalidSound,
      'exitSound': exitSound,
      'confirmKey': confirmKey,
      'confirmAttempts': confirmAttempts,
      'timeout': timeout,
      'interDigitTimeout': interDigitTimeout,
      'maxFailures': maxFailures,
      'maxTimeouts': maxTimeouts,
      'ditgitLength': ditgitLength,
      'entries': Entries,
    };

    return result;
  }
}
