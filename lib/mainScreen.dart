import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatelessWidget {
  final List<String> _shopImages = [
    'assets/images/File 8.jpg',
    'assets/images/File 7.jpeg',
    'assets/images/File 5.jpg',
    'assets/images/File 4.webp',
    'assets/images/File 3.jpeg',
    'assets/images/File 2.jpg',
    'assets/images/File 1.jpg',
    'assets/images/File 7.jpeg',
    'assets/images/File 5.jpg',
    'assets/images/File 4.webp',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SafeArea(
              child: Container(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    Text(
                      'Our Products',
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            '7',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/images/File 2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Lifestyle Sale',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.blueGrey[900],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  ..._shopImages.map((e) => myList(e)).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myList(String e) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(e),
              fit: BoxFit.cover,
            )),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Iconsax.heart5,
                color: Colors.red,
                size: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
