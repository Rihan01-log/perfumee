import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:perfumee/screens/viewandbuy.dart';

class YslItems extends StatefulWidget {
  const YslItems({super.key});

  @override
  State<YslItems> createState() => _YslItemsState();
}

class _YslItemsState extends State<YslItems> {
  final List<Map<String, dynamic>> yslProducts = [
    {
      "name": "Ysl perfume mens",
      "price": "₹1000",
      "volume": "100ml",
      "image": "assets/ysl-removebg-preview.png"
    },
    {
      "name": "Ysl perfume mens",
      "price": "₹1000",
      "volume": "100ml",
      "image": "assets/ysl-removebg-preview.png"
    },
    {
      "name": "Ysl perfume mens",
      "price": "₹1000",
      "volume": "100ml",
      "image": "assets/ysl-removebg-preview.png"
    },
    {
      "name": "Ysl perfume mens",
      "price": "₹1000",
      "volume": "100ml",
      "image": "assets/ysl-removebg-preview.png"
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
        title: const Text("YSL Items"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: yslProducts.length,
            itemBuilder: (context, index) {
              final product = yslProducts[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: buildYslItemCard(
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

  Widget buildYslItemCard({
    required String name,
    required String price,
    required String volume,
    required String image,
    required VoidCallback onAddToCart,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => Viewandbuy()));
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
