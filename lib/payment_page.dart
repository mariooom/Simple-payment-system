import 'package:flutter/material.dart';
import 'package:solid/payments/payments.dart';
import 'payments/cash_payment.dart';
import 'payments/credit_payment.dart';

class PaymentPage extends StatelessWidget {
  final Payment cashPayment = CashPayment();
  final Payment creditPayment = CreditPayment();

  void _showMessage(BuildContext context, String message) {
    //method to show message using snackbar
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          'Payment System',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                String message = cashPayment.pay(100.0);
                _showMessage(context, message);
              },
              child: Text('Pay with Cash'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                String message = creditPayment.pay(200.0);
                _showMessage(context, message);
              },
              child: Text('Pay with Credit'),
            ),
          ],
        ),
      ),
    );
  }
}
