part of Dialplan;

class Date implements Condition {
  String comment;
  String mday; //Day of month, 1-31
  String mon; //Month, 1-12 (Jan = 1, etc.)
  String year; //Calendar year, 0-9999

  Date();

  Date.fromJson(Map json) {
    if (json.containsKey('mday')) {
      mday = json['mday'];
    }

    if (json.containsKey('mon')) {
      mon = json['mon'];
    }

    if (json.containsKey('year')) {
      year = json['year'];
    }

    if (json.containsKey('comment')) {
      comment = json['comment'];
    }
  }

  Map toJson() {
    Map result = {
      'condition': 'date'
    };

    if (comment != null) {
      result['comment'] = comment;
    }

    if (mday != null) {
      result['mday'] = mday;
    }

    if (mon != null) {
      result['mon'] = mon;
    }

    if (year != null) {
      result['year'] = year;
    }

    return result;
  }
}
