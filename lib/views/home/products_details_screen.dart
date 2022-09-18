import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen(
      {super.key,
      required this.productName,
      required this.productprice,
      required this.productUrl});
  final String productName;
  final String productprice;
  final String productUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.share_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            productUrl,
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text(
              productName,
              style: const TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Bangalore,SaltLake',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Text(
                  '10 mins ago',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.edit_note_outlined),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Brand',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      'Apple',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.security_outlined),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Warrenty',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      '2 months warrenty',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.help_outline),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'About the Product',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      '15.4 cm (6.1"), Super Retina XDR',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      '128GB ROM | iOS 15',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      'Hexa-Core A15 Bionic Chip Processor',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      'R: 12MP + 12MP | F: 12MP',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      'Proximity Sensor | Facial Unlock',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Extended warranty plans starting at ₹1699(Approx ₹566/mo.)',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Extended protection for your device beyond the manufacturer warranty with coverage against all manufacturing defects. Know More',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.grey,
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                productprice,
                style: const TextStyle(color: Colors.black, fontSize: 30),
              ),
              CupertinoButton(
                  color: Colors.green,
                  child: const Text(
                    'Chat',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
