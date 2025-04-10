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
          // Gradient Background (covers the entire screen)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.grey.shade300, // Light gray (silver) at the top
                    Colors.grey.shade600, // Darker gray at the bottom
                  ],
                ),
              ),
            ),
          ),

          // Background Image (this remains at the top as before)
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
              ],
            ),
          ),

          // Content (Title, Description, Buttons) on top of the gradient and image
          Align(
            alignment: Alignment.bottomCenter, // Align at the bottom of the screen
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2, // Half screen height
              decoration: BoxDecoration(
                // Optional rounded corners for the content area
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20), // Padding inside the container for spacing
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    const SizedBox(height: 20),

                    // Login Button
                    SizedBox(
                      width: 324,
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
                      width: 324,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RegisterPage()),
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
          ),
        ],
      ),
    );
  }
}
