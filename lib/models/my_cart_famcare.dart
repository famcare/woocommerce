/*
* Create For Famcare Cart...
* By: Shatha
*/

class MyCartFamcare {
  int? id;
  String? currency;
  String? currencySymbol;
  double? discountTotal;
  double? discountTax;
  int? total;
  int? totalTax;
  List<LineItems>? lineItems;
  List<CouponLines>? couponLines;

  MyCartFamcare(
      {this.id,
      this.currency,
      this.currencySymbol,
      this.discountTotal,
      this.discountTax,
      this.total,
      this.totalTax,
      this.lineItems,
      this.couponLines});

  MyCartFamcare.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    currency = json['currency'];
    currencySymbol = json['currency_symbol'];
    discountTotal = json['discount_total'];
    discountTax = json['discount_tax'];
    total = json['total'];
    totalTax = json['total_tax'];
    if (json['line_items'] != null) {
      lineItems = <LineItems>[];
      json['line_items'].forEach((v) {
        lineItems!.add(new LineItems.fromJson(v));
      });
    }
    if (json['coupon_lines'] != null) {
      couponLines = <CouponLines>[];
      json['coupon_lines'].forEach((v) {
        couponLines!.add(new CouponLines.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['currency'] = this.currency;
    data['currency_symbol'] = this.currencySymbol;
    data['discount_total'] = this.discountTotal;
    data['discount_tax'] = this.discountTax;
    data['total'] = this.total;
    data['total_tax'] = this.totalTax;
    if (this.lineItems != null) {
      data['line_items'] = this.lineItems!.map((v) => v.toJson()).toList();
    }
    if (this.couponLines != null) {
      data['coupon_lines'] = this.couponLines!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LineItems {
  int? productId;
  String? type;
  String? name;
  int? quantity;
  double? subtotal;
  double? subtotalTax;
  double? total;
  int? totalTax;
  double? totalIncTax;

  LineItems(
      {this.productId,
      this.type,
      this.name,
      this.quantity,
      this.subtotal,
      this.subtotalTax,
      this.total,
      this.totalTax,
      this.totalIncTax});

  LineItems.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    type = json['type'];
    name = json['name'];
    quantity = json['quantity'];
    subtotal = json['subtotal'];
    subtotalTax = json['subtotal_tax'];
    total = json['total'];
    totalTax = json['total_tax'];
    totalIncTax = json['total_inc_tax'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['type'] = this.type;
    data['name'] = this.name;
    data['quantity'] = this.quantity;
    data['subtotal'] = this.subtotal;
    data['subtotal_tax'] = this.subtotalTax;
    data['total'] = this.total;
    data['total_tax'] = this.totalTax;
    data['total_inc_tax'] = this.totalIncTax;
    return data;
  }
}

class CouponLines {
  int? id;
  String? code;
  String? discountType;
  String? amount;
  Donor? donor;

  CouponLines({this.id, this.code, this.discountType, this.amount, this.donor});

  CouponLines.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    discountType = json['discount_type'];
    amount = json['amount'];
    donor = json['donor'] != null ? new Donor.fromJson(json['donor']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['discount_type'] = this.discountType;
    data['amount'] = this.amount;
    if (this.donor != null) {
      data['donor'] = this.donor!.toJson();
    }
    return data;
  }
}

class Donor {
  int? id;
  String? name;
  String? logo;

  Donor({this.id, this.name, this.logo});

  Donor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['logo'] = this.logo;
    return data;
  }
}
