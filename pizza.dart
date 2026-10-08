import 'dart:io';

void main() {
  // Show pizza prices
  print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');

  // Ask for pizza size
  print('Please enter your pizza size (small, medium, or large):');
  String pizzaSize = stdin.readLineSync()!.toLowerCase();

  // Ask for quantity
  print('How many pizzas do you want of $pizzaSize?');
  int quantity = int.parse(stdin.readLineSync()!);

  double price;

  // Determine price using switch case
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
      print('Invalid pizza size.');
      return;
  }

  // Calculate total payment
  double total = price * quantity;

  print('Total payment: $total USD');
}