import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<Map<String, dynamic>> assetItems = [
    {'image': 'assets/shop/albuterol.jpg', 'label': 'Albuterol', 'price': '₱499.00', 'addedToCart': false},
    {'image': 'assets/shop/antibiotics.jpg', 'label': 'Antibiotics', 'price': '₱75.00', 'addedToCart': false},
    {'image': 'assets/shop/antihistamine.jpg', 'label': 'Antihistamine', 'price': '₱88.00', 'addedToCart': false},
    {'image': 'assets/shop/atorvastatin.jpg', 'label': 'Atorvastatin', 'price': '₱22.50', 'addedToCart': false},
    {'image': 'assets/shop/gabapentin.jpg', 'label': 'Gabapentin', 'price': '₱15.00', 'addedToCart': false},
    {'image': 'assets/shop/hydrocodone.jpg', 'label': 'Hydrocodone', 'price': '₱23.99', 'addedToCart': false},
    {'image': 'assets/shop/levothyroxine.jpg', 'label': 'Levothyroxine', 'price': '₱100.99', 'addedToCart': false},
    {'image': 'assets/shop/losartan.jpg', 'label': 'Losartan', 'price': '₱13.00', 'addedToCart': false},
    {'image': 'assets/shop/metformin.jpg', 'label': 'Metformin', 'price': '₱16.99', 'addedToCart': false},
    {'image': 'assets/shop/omeprazole.jpg', 'label': 'Omeprazole', 'price': '₱10.99', 'addedToCart': false},
  ];

  List<Map<String, dynamic>> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Reservations.',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage(cartItems: cartItems)),
              );
            },
            icon: const Icon(Icons.shopping_cart,
            color: Colors.white,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: assetItems.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductGridItem(
              imagePath: assetItems[index]['image']!,
              label: assetItems[index]['label']!,
              price: assetItems[index]['price']!,
              addedToCart: assetItems[index]['addedToCart']!,
              onAddToCart: () {
                setState(() {
                  assetItems[index]['addedToCart'] = true;
                  cartItems.add(assetItems[index]);
                });
              },
              onPressed: () {
                _showProductDetailsDialog(context, assetItems[index]);
              },
            );
          },
        ),
      ),
    );
  }

  void _showProductDetailsDialog(BuildContext context, Map<String, dynamic> product) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(product['label']),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                product['image'],
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 10),
              Text("Price: ${product['price']}"),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  product['addedToCart'] = true;
                  cartItems.add(product);
                });
                Navigator.of(context).pop();
              },
              child: const Text('Add to Cart'),
            ),
          ],
        );
      },
    );
  }
}

class ProductGridItem extends StatelessWidget {
  final String imagePath;
  final String label;
  final String price;
  final bool addedToCart;
  final VoidCallback onAddToCart;
  final VoidCallback onPressed;

  const ProductGridItem({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.price,
    required this.addedToCart,
    required this.onAddToCart,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                color: Colors.brown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          label,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: addedToCart ? null : onAddToCart,
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: addedToCart ? Colors.grey : Colors.white,
                      ),
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

class CartPage extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;

  const CartPage({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate total price
    double totalPrice = 0.0;
    for (var item in cartItems) {
      totalPrice += double.parse(item['price'].replaceAll('₱', '')); // Remove the peso sign
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(cartItems[index]['image']),
                  title: Text(cartItems[index]['label']),
                  subtitle: Text(cartItems[index]['price']),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total Price: ₱${totalPrice.toStringAsFixed(2)}', // Replace the dollar sign with the peso sign
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
