// import 'package:bank_app/services/customer_data.dart';
//
// class GetCustomerData {
//   late final List<Map<String, dynamic>> _customerStaticData;
//   late final List<Map<String, dynamic>> _customerTransactionData;
//
//   Future<void> setCustomerValues() async {
//     CustomerData customerData = CustomerData();
//     var (customerStaticData, customerTransactionData) =
//         await customerData.loadJsonData();
//
//     _customerStaticData = customerStaticData;
//     _customerTransactionData = customerTransactionData;
//   }
//
//   List<Map<String, dynamic>> getCustomerStaticData() {
//     return _customerStaticData;
//   }
//
//   List<Map<String, dynamic>> getCustomerTransactionData() {
//     return _customerTransactionData;
//   }
// }
