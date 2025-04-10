import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 309,
            child: Stack(
              children: [
                
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/home_banner.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3654, 0.4504, 0.6201, 0.6202, 0.774, 1.0],
                        colors: [
                          Color.fromRGBO(168, 42, 227, 0.4),
                          Color.fromRGBO(168, 42, 227, 0.4),
                          Color.fromRGBO(168, 42, 227, 0.290432),
                          Color.fromRGBO(168, 42, 227, 0.276435),
                          Color.fromRGBO(168, 42, 227, 0.164462),
                          Color.fromRGBO(168, 42, 227, 0),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          
          Positioned(
            top: 40, 
            left: 20, 
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 14, 3, 3)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

          
          Positioned(
            top: 309,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
