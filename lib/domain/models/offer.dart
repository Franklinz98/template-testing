import 'package:intl/intl.dart';

class Offer {
  final String title, description, platform, experience;
  final int payment;
  final NumberFormat _formatter = NumberFormat.currency(
      locale: "es_CO", name: "COP", symbol: "\$", decimalDigits: 0);

  Offer(this.title, this.description, this.platform, this.experience,
      this.payment);

  String getPayment() {
    return this._formatter.format(this.payment);
  }
}
