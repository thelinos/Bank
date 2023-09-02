import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:bank_app/models/customer.dart'; // Import your generated class

class GetCustomerData {
  Future loadJsonData() async {
    final jsonString =
    await rootBundle.loadString('assets/json/customer_data.json');
    final Map<String, dynamic> jsonMap = json.decode(jsonString);
    final customer = Customer.fromJson(jsonMap);

    return (customer.customerStaticData, customer.customerTransactionData);
  }
}
