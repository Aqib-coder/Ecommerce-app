import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 212, 212),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "lib/images/logo1.png",
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              "Just Do It",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Brand new sneakers and custom kicks made with premium quality",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                // width: 100,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 70, 69, 69),
                    borderRadius: BorderRadius.circular(10)),

                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Center(
                    child: Text("Shop Now",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
