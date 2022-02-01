class AffiliateArea {
  int? referralsCustomerCount;
  int? rewardSessionsCount;
  String? affiliateCode;

  AffiliateArea(
      {this.referralsCustomerCount,
      this.rewardSessionsCount,
      this.affiliateCode});

  AffiliateArea.fromJson(Map<String, dynamic> json) {
    referralsCustomerCount = json['referralsـcustomer_count'];
    rewardSessionsCount = json['reward_sessions_count'];
    affiliateCode = json['affiliate_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['referralsـcustomer_count'] = this.referralsCustomerCount;
    data['reward_sessions_count'] = this.rewardSessionsCount;
    data['affiliate_code'] = this.affiliateCode;
    return data;
  }
}
