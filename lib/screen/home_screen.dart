import 'package:flutter/material.dart';
import 'package:resturant/screen/transition_Animation.dart';
// import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(RestaurantHomePage());
}

class RestaurantHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Restaurant'),
          backgroundColor: Colors.deepOrange,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            TextButton(
              onPressed: () {},
              child:
                  Text("Book a Table", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hero Section. For future Use
              // CarouselSlider(
              //   items: [
              //     Image.asset(
              //         'lib/assets/pexels-ella-olsson-572949-1640777.jpg',
              //         fit: BoxFit.cover),
              //     Image.asset(
              //         'lib/assets/pexels-ella-olsson-572949-1640770.jpg',
              //         fit: BoxFit.cover),
              //   ],
              //   options: CarouselOptions(
              //     height: 200,
              //     autoPlay: true,
              //     enlargeCenterPage: true,
              //   ),
              // ),
              Image.asset('lib/assets/pexels-ella-olsson-572949-1640777.jpg',
                  fit: BoxFit.cover),
              SizedBox(height: 20),
              // About Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Welcome to Own Eatery',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Experience fine dining like never before with our curated menu of exquisite flavors.',
                ),
              ),
              // Menu Preview
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Our Bestsellers',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //dishes
                    MenuItem(
                        image: 'lib/assets/pexels-valeriya-1199957.jpg',
                        name: 'Burger'),
                    MenuItem(
                        image: 'lib/assets/Chicken-Biryani-Recipe.jpg',
                        name: 'Biriyani'),
                    MenuItem(
                        image: 'lib/assets/download.jpeg', name: 'Veg Salad'),
                    MenuItem(
                        image: 'lib/assets/pexels-valeriya-1199957.jpg',
                        name: 'Burger'),
                    MenuItem(
                        image: 'lib/assets/Chicken-Biryani-Recipe.jpg',
                        name: 'Biriyani'),
                    MenuItem(
                        image: 'lib/assets/download.jpeg', name: 'Veg Salad'),
                  ],
                ),
              ),

              Center(
                child: InkWell(
                  onTap: () {
                    // Navigate to the next screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  },
                  borderRadius:
                      BorderRadius.circular(12), // Rounded corners for ripple
                  splashColor:
                      Colors.white.withOpacity(0.3), // Ripple effect color
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red], // Gradient colors
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),

              // HoverButton(),

              // Footer
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                        'Contact Us: +91 8848740625 | info@skyrichtechsolutions.com'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook, color: Colors.blue),
                        SizedBox(width: 10),
                        Icon(Icons.whatshot, color: Colors.pink),
                      ],
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

class MenuItem extends StatelessWidget {
  final String image;
  final String name;

  MenuItem({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          // Use ClipOval to make the image circular
          ClipOval(
            child: Image.asset(
              image,
              width: 100, // Adjust the width and height as needed
              height: 100,
              fit: BoxFit.cover, // Makes sure the image fits inside the circle
            ),
          ),
          SizedBox(height: 5),
          Text(name),
        ],
      ),
    );
  }
}
