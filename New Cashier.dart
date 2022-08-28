// New Cashier Does Not Know About Space or Shift

// DESCRIPTION:
// Some new cashiers started to work at your restaurant.

// They are good at taking orders, but they don't know how to capitalize words, or use a space bar!

// All the orders they create look something like this:

// "milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza"

// The kitchen staff are threatening to quit, because of how difficult it is to read the orders.

// Their preference is to get the orders as a nice clean string with spaces and capitals like so:

// "Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke"

// The kitchen staff expect the items to be in the same order as they appear in the menu.

// The menu items are fairly simple, there is no overlap in the names of the items:

// 1. Burger
// 2. Fries
// 3. Chicken
// 4. Pizza
// 5. Sandwich
// 6. Onionrings
// 7. Milkshake
// 8. Coke

// SOLUTION

String getOrder(String input) {
  final list = input
      .replaceAll('burger', '1')
      .replaceAll('fries', '2')
      .replaceAll('chicken', '3')
      .replaceAll('pizza', '4')
      .replaceAll('sandwich', '5')
      .replaceAll('onionrings', '6')
      .replaceAll('milkshake', '7')
      .replaceAll('coke', '8')
      .split('');

  list.sort();

  return list
      .join(' ')
      .replaceAll('1', 'Burger')
      .replaceAll('2', 'Fries')
      .replaceAll('3', 'Chicken')
      .replaceAll('4', 'Pizza')
      .replaceAll('5', 'Sandwich')
      .replaceAll('6', 'Onionrings')
      .replaceAll('7', 'Milkshake')
      .replaceAll('8', 'Coke');
}
