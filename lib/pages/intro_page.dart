import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/images/pngimg.com - nike_PNG19.png',
                height:240,
                ),
              ),

              const SizedBox(height: 48),

              //title
              const Text(
                'Just Do It',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                ),
              ),

              const SizedBox(height: 24),

              //sub title
              Text(
                'Brand new sneakers and custom Kicks made with premium quality',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign:TextAlign.center,
              ),

              //start now button
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(),
                    ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color:Colors.black,
                        borderRadius: BorderRadius.circular(12),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Center(
                        child: const Text('Shop Now',
                        style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}