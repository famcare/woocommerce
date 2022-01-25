/*
* Create For Famcare Cart...
* By: Shatha
*/

// {
// "id": 2457,
// "currency": "SAR",
// "currency_symbol": "ر.س",
// "discount_total": 0,
// "discount_tax": 0,
// "total": "92.00",
// "total_tax": 12,
// "line_items": [
// {
// "product_id": 100,
// "type": "simple",
// "name": "جلسة واحده",
// "quantity": 1,
// "subtotal": 80,
// "subtotal_tax": 12,
// "total": 80,
// "total_tax": 12,
// "total_inc_tax": 92
// }
// ],
// "coupon_lines": []
// }

import 'order.dart';

class MyCartFamcare {
  int? id;
  String? currency;
  String? currencySymbol;
  num? discountTotal;
  num? discountTax;
  num? total;
  num? totalTax;

  // List<LineItems>? lineItems;
  // List<WooOrderCouponLine>? couponLines;

  MyCartFamcare({
    required int this.id,
    this.currency,
    this.currencySymbol,
    this.discountTotal,
    this.discountTax,
    this.total,
    this.totalTax,
    // this.lineItems,
    // this.couponLines,
  });

  MyCartFamcare.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    currency = json['currency'];
    currencySymbol = json['currency_symbol'];
    discountTotal = json['discount_total'];
    discountTax = json['discount_tax'];
    total = json['total'];
    totalTax = json['totalTax'];
    // if (json['line_items'] != null) {
    //   lineItems = <LineItems>[];
    //   json['line_items'].forEach((v) {
    //     lineItems!.add(new LineItems.fromJson(v));
    //   });
    // }
    // if (json['coupon_lines'] != null) {
    //   couponLines = [];
    //   json['coupon_lines'].forEach((v) {
    //     couponLines!.add(new WooOrderCouponLine.fromJson(v));
    //   });
    // }
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
    // if (this.lineItems != null) {
    //   data['line_items'] = this.lineItems!.map((v) => v.toJson()).toList();
    // }
    // if (this.couponLines != null) {
    //   data['coupon_lines'] = this.couponLines!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}
