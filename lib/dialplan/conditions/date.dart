part of Dialplan;

class Date implements Condition {
  String comment;
  String mday; //Day of month, 1-31
  String mon; //Month, 1-12 (Jan = 1, etc.)
  String year; //Calendar year, 0-9999

  Date();

  Date.fromJson(Map json) {
    mday = json[_JSON_DAYOFMONTH];
    mon = json[_JSON_MONTH];
    year = json[_JSON_YEAR];
    comment = json[_JSON_COMMENT];
  }

  Map toJson() {
    Map result = {
      _JSON_CONDITION: _JSON_DATE
    };

    if (comment != null) {
      result[_JSON_COMMENT] = comment;
    }

    if (mday != null) {
      result[_JSON_DAYOFMONTH] = mday;
    }

    if (mon != null) {
      result[_JSON_MONTH] = mon;
    }

    if (year != null) {
      result[_JSON_YEAR] = year;
    }

    return result;
  }
}
