import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:perfumee/screens/viewandbuy.dart';

class Bvulgariitems extends StatefulWidget {
  const Bvulgariitems({super.key});

  @override
  State<Bvulgariitems> createState() => _BvulgariitemsState();
}

class _BvulgariitemsState extends State<Bvulgariitems> {
  final List<Map<String, dynamic>> chanelProducts = [
    {
      "name": "Bvulgari perfume mens",
      "price": "₹11000",
      "volume": "100ml",
      "image": "assets/chanel bluemen.webp"
    },
    {
      "name": "Bvulgari perfume mens",
      "price": "₹13000",
      "volume": "100ml",
      "image": "assets/chanel bluemen.webp"
    },
    {
      "name": "Bvulgari perfume mens",
      "price": "₹15000",
      "volume": "100ml",
      "image": "assets/chanel bluemen.webp"
    },
    {
      "name": "Bvulgari perfume mens",
      "price": "₹20000",
      "volume": "100ml",
      "image": "assets/chanel bluemen.webp"
    },
  ];
  void _addToCart(String name) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$name added to cart!'),
        duration: const Duration(seconds: 2),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Bvulgari Items"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: chanelProducts.length,
            itemBuilder: (context, index) {
              final product = chanelProducts[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: buildBvulgariItemCard(
                  name: product["name"],
                  price: product["price"],
                  volume: product["volume"],
                  image: product["image"],
                  onAddToCart: () => _addToCart(product["name"]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
   Widget buildBvulgariItemCard({
    required String name,
    required String price,
    required String volume,
    required String image,
    required VoidCallback onAddToCart,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => const Viewandbuy()));
      },
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.amber,
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 100,
              width: 100,
              fit: BoxFit.contain,
            ),
            const Gap(10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Gap(5),
                    Text(
                      "M.R.P: $price",
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      volume,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Gap(10),
                    ElevatedButton(
                      onPressed: onAddToCart,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.black,
                      ),
                      child: const Text("Add to Cart"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}