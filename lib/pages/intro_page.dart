import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
              // Logo hai but lgg ni rha
              Image.asset(
                  "assets/images/test.png",
                height: 200,
                width: 150,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(25.0),
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(100.0),
              //     child: Container(
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(100.0),
              //       ),
              //       child: Lottie.network(
              //         "https://lottie.host/5d272e7e-552c-4e1a-9c59-ee0194071648/WVVRzDjGWH.json",
              //         height: 100,
              //       ),
              //     ),
              //   ),
              // ),

              const SizedBox(height: 48),
              const Text(
                  'Just Do It',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 20,
                   ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(

                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),

              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),
                )),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.all(25.0),
                  child: const Center(
                    child: Text(
                        'Shop Now',
                            style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
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
