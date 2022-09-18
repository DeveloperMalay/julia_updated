import 'package:flutter/material.dart';
import 'package:julia/views/home/components/category.dart';
import 'package:julia/views/home/components/products_card.dart';
import 'package:julia/views/home/products_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Bangalore',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_sharp),
                  ],
                ),
                const Icon(Icons.notifications_outlined),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Holo',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('Buy or Sell'),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: 'Find Vehicles,Furniture and more ... '),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'What are you looking for?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(color: Colors.green, fontSize: 18),
                    ))
              ],
            ),
            Category(),
            const Text(
              'Best Recommendations',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductDetailsScreen(
                        productName: 'Sony Camera',
                        productprice: '\$2300',
                        productUrl:
                            'https://media.istockphoto.com/photos/camera-isolated-on-white-background-with-clipping-path-mirrorless-picture-id1140393948?k=20&m=1140393948&s=612x612&w=0&h=MS3Uq-TKZq2r19BoBaOKR7gf_umLNT3GZKTXkI2zRcw=',
                      );
                    }));
                  },
                  child: const ProductCard(
                    imageUrl:
                        "https://media.istockphoto.com/photos/camera-isolated-on-white-background-with-clipping-path-mirrorless-picture-id1140393948?k=20&m=1140393948&s=612x612&w=0&h=MS3Uq-TKZq2r19BoBaOKR7gf_umLNT3GZKTXkI2zRcw=",
                    time: '10 mins ago',
                    title: 'Sony Camera',
                    location: 'Bangaluru,Saltlake',
                    price: "\$2300",
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductDetailsScreen(
                        productName: 'Swipt Desire Car',
                        productprice: '\$21300',
                        productUrl:
                            'https://imgd-ct.aeplcdn.com/370x208/n/cw/ec/106257/venue-exterior-right-front-three-quarter-2.jpeg?isig=0&q=75',
                      );
                    }));
                  },
                  child: const ProductCard(
                    imageUrl:
                        "https://imgd-ct.aeplcdn.com/370x208/n/cw/ec/106257/venue-exterior-right-front-three-quarter-2.jpeg?isig=0&q=75",
                    time: '10 mins ago',
                    title: 'Swipt Desire Car',
                    location: 'Bangaluru,Saltlake',
                    price: "\$21300",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductDetailsScreen(
                        productName: 'Sofa ',
                        productprice: '\$200',
                        productUrl:
                            'https://rukminim1.flixcart.com/image/150/150/knqd3m80/sofa-set/2/0/l/cream-brown-polycotton-wxq-sm-01-3-2-1-1-mofi-sofas-na-original-imag2chzstzc6cgq.jpeg?q=70',
                      );
                    }));
                  },
                  child: const ProductCard(
                    imageUrl:
                        "https://rukminim1.flixcart.com/image/150/150/knqd3m80/sofa-set/2/0/l/cream-brown-polycotton-wxq-sm-01-3-2-1-1-mofi-sofas-na-original-imag2chzstzc6cgq.jpeg?q=70",
                    time: '10 mins ago',
                    title: 'Wooden Sofa ',
                    location: 'Bangaluru,Saltlake',
                    price: "\$200",
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductDetailsScreen(
                        productName: 'Dumbles and Weights',
                        productprice: '\$900',
                        productUrl:
                            'https://rukminim1.flixcart.com/image/150/150/jms25jk0/dumbbell/e/p/r/pvc-combo16-na-8-krx-original-imaepy3rcgm3nsva.jpeg?q=70',
                      );
                    }));
                  },
                  child: const ProductCard(
                    imageUrl:
                        "https://rukminim1.flixcart.com/image/150/150/jms25jk0/dumbbell/e/p/r/pvc-combo16-na-8-krx-original-imaepy3rcgm3nsva.jpeg?q=70",
                    time: '10 mins ago',
                    title: 'Dumbles and Weights',
                    location: 'Bangaluru,Saltlake',
                    price: "\$900",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductDetailsScreen(
                        productName: 'Hero Bicycle',
                        productprice: '\$400',
                        productUrl:
                            'https://rukminim1.flixcart.com/image/150/150/jlph9jk0/cycle/h/f/k/skyper-26t-sskp26bk0001-16-hero-original-imaf8ru5xysfgtmx.jpeg?q=70',
                      );
                    }));
                  },
                  child: const ProductCard(
                    imageUrl:
                        "https://rukminim1.flixcart.com/image/150/150/jlph9jk0/cycle/h/f/k/skyper-26t-sskp26bk0001-16-hero-original-imaf8ru5xysfgtmx.jpeg?q=70",
                    time: '10 mins ago',
                    title: 'Hero Bicycle',
                    location: 'Bangaluru,Saltlake',
                    price: '\$400',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductDetailsScreen(
                        productName: ' Sony Projector',
                        productprice: '\$1400',
                        productUrl:
                            'https://rukminim1.flixcart.com/image/150/150/kge0n0w0/projector/m/q/3/i9-classsic-hd-720p-8908012116066-egate-original-imafwnfzxqp3yymc.jpeg?q=70',
                      );
                    }));
                  },
                  child: const ProductCard(
                    imageUrl:
                        "https://rukminim1.flixcart.com/image/150/150/kge0n0w0/projector/m/q/3/i9-classsic-hd-720p-8908012116066-egate-original-imafwnfzxqp3yymc.jpeg?q=70",
                    time: '10 mins ago',
                    title: 'Sony Projector',
                    location: 'Bangaluru,Saltlake',
                    price: "\$1400",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductDetailsScreen(
                        productName: 'Dell Laptop max pro',
                        productprice: '\$3400',
                        productUrl:
                            "https://rukminim1.flixcart.com/image/150/150/ktop5e80/computer/f/p/w/km513ua-l503ts-thin-and-light-laptop-asus-original-imag6yt6ftegd5bx.jpeg?q=70",
                      );
                    }));
                  },
                  child: const ProductCard(
                    imageUrl:
                        "https://rukminim1.flixcart.com/image/150/150/ktop5e80/computer/f/p/w/km513ua-l503ts-thin-and-light-laptop-asus-original-imag6yt6ftegd5bx.jpeg?q=70",
                    time: '10 mins ago',
                    title: 'Dell Laptop max pro',
                    location: 'Bangaluru,Saltlake',
                    price: '\$3400',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductDetailsScreen(
                        productName: 'Boat Headset 300',
                        productprice: '\$2400',
                        productUrl:
                            "https://rukminim1.flixcart.com/image/612/612/krtjgcw0/headphone/d/9/g/au-mh501-maono-original-imag5j35rffkwpac.jpeg?q=70",
                      );
                    }));
                  },
                  child: const ProductCard(
                    imageUrl:
                        "https://rukminim1.flixcart.com/image/612/612/krtjgcw0/headphone/d/9/g/au-mh501-maono-original-imag5j35rffkwpac.jpeg?q=70",
                    time: '10 mins ago',
                    title: 'Boat Headset 300',
                    location: 'Bangaluru,Saltlake',
                    price: '\$2400',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductDetailsScreen(
                        productName: ' white Sneakers ',
                        productprice: '\$400',
                        productUrl:
                            "https://apollo-singapore.akamaized.net/v1/files/0ei7i7uqb2gf1-IN/image;s=780x0;q=60",
                      );
                    }));
                  },
                  child: const ProductCard(
                    imageUrl:
                        "https://apollo-singapore.akamaized.net/v1/files/0ei7i7uqb2gf1-IN/image;s=780x0;q=60",
                    time: '10 mins ago',
                    title: 'white Sneakers ',
                    location: 'Bangaluru,Saltlake',
                    price: "\$400",
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductDetailsScreen(
                        productName: ' Boys Shirts ',
                        productprice: '\$1200',
                        productUrl:
                            "https://apollo-singapore.akamaized.net/v1/files/2c868rn4iki4-IN/image;s=780x0;q=60",
                      );
                    }));
                  },
                  child: const ProductCard(
                    imageUrl:
                        "https://apollo-singapore.akamaized.net/v1/files/2c868rn4iki4-IN/image;s=780x0;q=60",
                    time: '10 mins ago',
                    title: 'Boys Shirts',
                    location: 'Bangaluru,Saltlake',
                    price: "\$1200",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
