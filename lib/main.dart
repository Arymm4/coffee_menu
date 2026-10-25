import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeMenuApp());
}

class CoffeeMenuApp extends StatelessWidget {
  const CoffeeMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Menu',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: const Color(0xFFF8F3EE),
      ),
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Myra Coffee',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF6F4E37),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFD7B899),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to Myra Coffee ☕',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4A2C1D),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Fresh coffee, sweet moments.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF5C4033),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                'Our Menu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A2C1D),
                ),
              ),

              const SizedBox(height: 16),

              // First Row
              Row(
                children: [
                  Expanded(
                    child: CoffeeCard(
                      image: 'assets/images/latte.png',
                      name: 'Latte',
                      description: 'Smooth coffee with steamed milk',
                      price: 'RM 8.00',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: CoffeeCard(
                      image: 'assets/images/cappuccino.png',
                      name: 'Cappuccino',
                      description: 'Rich espresso with creamy foam',
                      price: 'RM 9.00',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Second Row
              Row(
                children: [
                  Expanded(
                    child: CoffeeCard(
                      image: 'assets/images/americano.png',
                      name: 'Americano',
                      description: 'Bold espresso with hot water',
                      price: 'RM 7.00',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: CoffeeCard(
                      image: 'assets/images/matchalatte.png',
                      name: 'Matcha Latte',
                      description: 'Creamy Japanese green tea',
                      price: 'RM 9.00',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Bottom Container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFF6F4E37),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Made with love for coffee lovers',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CoffeeCard extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String price;

  const CoffeeCard({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 10),

            // Name and Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4A2C1D),
                    ),
                  ),
                ),
                const Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: Colors.brown,
                ),
              ],
            ),

            const SizedBox(height: 5),

            // Description
            Text(
              description,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 8),

            // Price
            Text(
              price,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6F4E37),
              ),
            ),
          ],
        ),
      ),
    );
  }
}