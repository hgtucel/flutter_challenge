class AuthRegisterSuccesModel {
  Null lastLogin;
  String userStatus;
  int created;
  Null accountType;
  String ownerId;
  Null socialAccount;
  Null oAuthIdentities;
  String name;
  String sClass;
  String blUserLocale;
  Null updated;
  String email;
  String objectId;

  AuthRegisterSuccesModel(
      {this.lastLogin,
      this.userStatus,
      this.created,
      this.accountType,
      this.ownerId,
      this.socialAccount,
      this.oAuthIdentities,
      this.name,
      this.sClass,
      this.blUserLocale,
      this.updated,
      this.email,
      this.objectId});

  AuthRegisterSuccesModel.fromJson(Map<String, dynamic> json) {
    lastLogin = json['lastLogin'];
    userStatus = json['userStatus'];
    created = json['created'];
    accountType = json['accountType'];
    ownerId = json['ownerId'];
    socialAccount = json['socialAccount'];
    oAuthIdentities = json['oAuthIdentities'];
    name = json['name'];
    sClass = json['___class'];
    blUserLocale = json['blUserLocale'];
    updated = json['updated'];
    email = json['email'];
    objectId = json['objectId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastLogin'] = this.lastLogin;
    data['userStatus'] = this.userStatus;
    data['created'] = this.created;
    data['accountType'] = this.accountType;
    data['ownerId'] = this.ownerId;
    data['socialAccount'] = this.socialAccount;
    data['oAuthIdentities'] = this.oAuthIdentities;
    data['name'] = this.name;
    data['___class'] = this.sClass;
    data['blUserLocale'] = this.blUserLocale;
    data['updated'] = this.updated;
    data['email'] = this.email;
    data['objectId'] = this.objectId;
    return data;
  }
}
