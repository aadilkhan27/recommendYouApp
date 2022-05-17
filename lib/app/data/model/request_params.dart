class StoreInviteAction {
  StoreInviteAction({
    this.memberId,
    this.action,
  });

  StoreInviteAction.fromJson(dynamic json) {
    memberId = json['member_id'];
    action = json['action'];
  }

  int? memberId;
  int? action;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['member_id'] = memberId;
    map['action'] = action;
    return map;
  }
}
