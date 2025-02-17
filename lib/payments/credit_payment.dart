import 'package:solid/payments/payments.dart';

class CreditPayment implements Payment {
  @override
  String pay(double amount) {
    String message = 'Paid \$${amount.toStringAsFixed(2)} with credit.';
    print(message);
    return message;
  }
}