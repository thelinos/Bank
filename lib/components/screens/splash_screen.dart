import 'package:bank_app/components/screens/home_screen.dart';
import 'package:bank_app/services/customer_data.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String id = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> getJsonData() async {
    GetCustomerData getCustomerData = GetCustomerData();

    var (customerStaticData, customerTransactionData) =
        await getCustomerData.loadJsonData();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(
          customerStaticData: customerStaticData,
          customerTransactionData: customerTransactionData,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/Loading.png'),
      ),
    );
  }
}
