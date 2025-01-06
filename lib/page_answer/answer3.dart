import 'package:flutter/material.dart';

class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        'name': 'Sett The Punch Of Doom',
        'price': '250.00',
        'image': 'https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExdzEyZHFuYTJhdmp3bmVsbzFnbGt5djZiamE5anNyMHpzc3djYnlyZiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/LTDiS9o1OU6no1oj5m/giphy.webp',
      },
      {
        'name': 'NUNU The Frosty',
        'price': '450.50',
        'image': 'https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGNnZ3g3MGN0OGtrbG5vczQ3NzEyaHVzMGpncWVuMzh4NmF0aWVjZCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/NlWF3bS9f3rq5PQXha/giphy.webp',
      },
      {
        'name': 'EKKO The Simp',
        'price': '120.00',
        'image': 'https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExaWZodmVuZ2llcDgxOTZhMG9wN243cWV6Zmw3Zjd0NDYxcDZoaTQweSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/y1sOKWfUzRCFPuph28/giphy.webp',
      },
      {
        'name': 'Malphite The Rock Solid🗿',
        'price': '9999.99',
        'image': 'https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExemttdGFqMWdocjJyM2didWxyMzVvcjRsczNjanRuODRxa25rejVldiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/81W9Eka298kmhiuB9e/giphy.webp',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Layout'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Category Header with half screen width background
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2, // Half the screen len
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                color: Colors.grey[400], // cat bg
                child: const Text(
                  'Category:League Of Legends Toys',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          // Product Grid
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // First Row with 2 Products
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // First Product
                    Expanded(
                      child: ProductCard(
                        product: products[0],
                      ),
                    ),
                    const SizedBox(width: 8), // Space between products
                    // Second Product
                    Expanded(
                      child: ProductCard(
                        product: products[1],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Second Row with 2 Products
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Third Product
                    Expanded(
                      child: ProductCard(
                        product: products[2],
                      ),
                    ),
                    const SizedBox(width: 8), // Space between products
                    // Fourth Product
                    Expanded(
                      child: ProductCard(
                        product: products[3],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Map<String, String> product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Product Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              product['image']!,
              width: 150,
              height: 150, // Fixed image size (150x150)
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          // Product Name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              product['name']!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 4),
          // Product Price
          Text(
            '${product['price']} THB',
            style: const TextStyle(
              color: Colors.green,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
