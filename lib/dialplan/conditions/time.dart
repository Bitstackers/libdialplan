part of Dialplan;

class Time implements Condition {
  String comment;
  String timeOfDay;
  String wday;

  Time();

  Time.fromJson(Map json) {
    timeOfDay = json[_JSON_TIME_OF_DAY];
    wday = json[_JSON_WEEKDAY];
    comment = json[_JSON_COMMENT];
  }

  Map toJson() {
    Map result = {
      _JSON_CONDITION: _JSON_TIME
    };

    if (comment != null) {
      result[_JSON_COMMENT] = comment;
    }

    if (timeOfDay != null) {
      result[_JSON_TIME_OF_DAY] = timeOfDay;
    }

    if (wday != null) {
      result[_JSON_WEEKDAY] = wday;
    }

    return result;
  }

  /** Convert the human-readable format (mon-wed, fri-sun) */
  static String transformWdayToFreeSwitchFormat(String item) {
    int count = 1;
    String result = ['sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat'].fold(item,
        (String text, String day) => text.replaceAll(day, (count++).toString()));

    return result;
  }
}
