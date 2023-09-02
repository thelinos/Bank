// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      customerStaticData: json['customerStaticData'] as List<dynamic>,
      customerTransactionData: json['customerTransactionData'] as List<dynamic>,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'customerStaticData': instance.customerStaticData,
      'customerTransactionData': instance.customerTransactionData,
    };
