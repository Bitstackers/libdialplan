part of dialplan;

class TransferType {
  static const PHONE = 1;
  static const GROUP = 2;
}

class Transfer implements Action {
  String comment;
  String extensionGroup;
  String phoneNumber;
  int type = TransferType.PHONE;

  Transfer();

  Transfer.fromJson(Map json) {
    comment = json[_JSON_COMMENT];
    extensionGroup = json[_JSON_EXTENSIONGROUP];
    phoneNumber = json[_JSON_PHONE_NUMBER];
    type = json[_JSON_TRANSFER_TYPE];
  }

  Map toJson() {
    Map result = {
      _JSON_ACTION: _JSON_TRANSFER
    };

    if (comment != null) {
      result[_JSON_COMMENT] = comment;
    }

    if (extensionGroup != null) {
      result[_JSON_EXTENSIONGROUP] = extensionGroup;
    }

    if (phoneNumber != null) {
      result[_JSON_PHONE_NUMBER] = phoneNumber;
    }

    if (type != null) {
      result[_JSON_TRANSFER_TYPE] = type;
    }

    return result;
  }
}
