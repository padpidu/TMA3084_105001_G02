import 'dart:io';

void main() {
  // Display pizza prices
  print('Pizza Prices: Small = 5 USD, Medium = 7 USD, Large = 10 USD');

  double totalPayment = 0;
  bool ordering = true;

  // Allow continuous ordering
  while (ordering) {
    // Ask for pizza size
    print('\nEnter pizza size (small, medium, or large):');
    String pizzaSize = stdin.readLineSync()!.toLowerCase();

    double price;

    // Determine price using switch statement
    switch (pizzaSize) {
      case 'small':
        price = 5;
        break;

      case 'medium':
        price = 7;
        break;

      case 'large':
        price = 10;
        break;

      default:
        print('Invalid pizza size. Please try again.');
        continue;
    }

    // Ask for quantity
    print('Enter quantity:');
    int quantity = int.parse(stdin.readLineSync()!);

    // Calculate payment
    double payment = price * quantity;
    totalPayment += payment;

    print('Current order: $payment USD');
    print('Total payment: $totalPayment USD');

    // Ask if user wants to continue
    print('\nDo you want to order another pizza? (yes/no)');
    String answer = stdin.readLineSync()!.toLowerCase();

    if (answer != 'yes') {
      ordering = false;
    }
  }

  print('\nFinal total payment: $totalPayment USD');
  print('Thank you for your order!');
}