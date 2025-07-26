import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/features/pressentation/screens/editing_screen.dart';
import 'package:flutter_ui/features/pressentation/widgets/cart_item_card.dart';
import 'package:flutter_ui/features/pressentation/widgets/custom_home_app_bar.dart'; // استدعيه صح!

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<Map<String, dynamic>> cartItems = [
    {
      'title': 'Spacy fresh crab',
      'price': 35.0,
      'quantity': 1,
      'image': 'assets/images/Menu Photo.png',
    },
    {
      'title': 'Spacy fresh crab',
      'price': 35.0,
      'quantity': 1,
      'image': 'assets/images/Menu Photo.png',
    },
    {
      'title': 'Spacy fresh crab',
      'price': 35.0,
      'quantity': 1,
      'image': 'assets/images/Menu Photo.png',
    },
  ];

  void incrementQuantity(int index) {
    setState(() {
      cartItems[index]['quantity']++;
    });
  }

  void decrementQuantity(int index) {
    setState(() {
      if (cartItems[index]['quantity'] > 1) {
        cartItems[index]['quantity']--;
      }
    });
  }

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            30.verticalSpace,
            CustomHomeAppBar(),
            const Text(
              "Cart",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            20.verticalSpace,
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return CartItemCard(
                    title: item['title'],
                    image: item['image'],
                    price: item['price'],
                    quantity: item['quantity'],
                    onIncrement: () => incrementQuantity(index),
                    onDecrement: () => decrementQuantity(index),
                    onRemove: () => removeItem(index),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const EditingScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Proceed",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
