part of ivr;

class IvrList implements JsonSerializable {
  List<Ivr> list = new List<Ivr>();

  IvrList();

  factory IvrList.fromJson(Map json) {
    IvrList obj = new IvrList();

    List ivrs = json['ivrlist'] as List;
    if(ivrs != null) {
      obj.list = ivrs.map((Map ivr) => new Ivr.fromJson(ivr)).toList();
    }

    return obj;
  }

  Map toJson() {
    Map result = {'ivrlist': list};

    return result;
  }
}
