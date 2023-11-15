class PaymentMethod {
  final int value;
  final String name;
  final String image;

  PaymentMethod({required this.value, required this.name, required this.image});
}

class AmazonePay extends PaymentMethod {
  AmazonePay()
      : super(value: 1, name: 'Amazone Pay', image: 'images/amazon_pay.png');
}

class CreditCard extends PaymentMethod {
  CreditCard()
      : super(value: 2, name: 'Credit Card', image: 'images/payment_visa.png');
}

class GooglePay extends PaymentMethod {
  GooglePay()
      : super(value: 3, name: 'Google Pay', image: 'images/gpay_icon.png');
}

class PhonePe extends PaymentMethod {
  PhonePe() : super(value: 4, name: 'PhonePe', image: 'images/phonepe.png');
}

class Paytm extends PaymentMethod {
  Paytm() : super(value: 5, name: 'Paytm', image: 'images/paytm.png');
}

class PayPal extends PaymentMethod {
  PayPal() : super(value: 6, name: 'PayPal', image: 'images/paypal.png');
}
