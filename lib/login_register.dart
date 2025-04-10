import 'dart:ui'; // For BackdropFilter (this can now be removed)
import 'package:flutter/material.dart';
import 'login_page.dart'; 
import 'register_page.dart';

class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image and Gradient (full width, height: 309)
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 309,
            child: Stack(
              children: [
                // Background Image
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/firstmenu.jpg", // Your image path
                    fit: BoxFit.cover,
                  ),
                ),
                // Gradient Overlay
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

          // Removed the Blurred Silver Effect (no BackdropFilter now)

          // Content Section at Center with Title and Description
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 100), // To bring it near the image
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center, // Center content
                children: [
                  // Title - "Tilas Safe"
                  const Text(
                    "Tilas Safe",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.black, // Set color to black
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Description
                  const Text(
                    "Providing solutions and assistance in situations\n"
                    "that may threaten or make you feel unsafe,\n"
                    "especially when walking alone in isolated places\n"
                    "or at night. We are here for you!",
                    textAlign: TextAlign.justify, // Center align the description
                    style: TextStyle(fontSize: 14, color: Colors.black), // Set color to black
                  ),
                  const SizedBox(height: 20),

                  // Login Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()), 
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: const Size(0, 50),
                      ),
                      child: const Text("Login", style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Register Button (Outlined)
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterPage()), 
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purple,
                        side: const BorderSide(color: Colors.purple),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: const Size(0, 50),
                      ),
                      child: const Text("Register", style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
