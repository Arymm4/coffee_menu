import 'package:flutter_test/flutter_test.dart';
import 'package:coffee_menu/main.dart';

void main() {
  testWidgets('Coffee menu displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const CoffeeMenuApp());

    expect(find.text('Myra Coffee'), findsOneWidget);
    expect(find.text('Our Menu'), findsOneWidget);
    expect(find.text('Latte'), findsOneWidget);
    expect(find.text('Cappuccino'), findsOneWidget);
    expect(find.text('Americano'), findsOneWidget);
    expect(find.text('Matcha Latte'), findsOneWidget);
  });
}
