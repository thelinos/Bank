// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      customerStaticData: (json['customerStaticData'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      customerTransactionData:
          (json['customerTransactionData'] as List<dynamic>)
              .map((e) => e as Map<String, dynamic>)
              .toList(),
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'customerStaticData': instance.customerStaticData,
      'customerTransactionData': instance.customerTransactionData,
    };
