import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

@JsonSerializable()
class Customer {
  final List customerStaticData;
  final List customerTransactionData;

  const Customer({
    required this.customerStaticData,
    required this.customerTransactionData,
  });

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
