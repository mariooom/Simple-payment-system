import 'package:solid/payments/payments.dart';

class CashPayment implements Payment {
  @override
  String pay(double amount) {
    String message = 'Paid \$${amount.toStringAsFixed(2)} with cash.';
    print(message);
    return message;
  }
}