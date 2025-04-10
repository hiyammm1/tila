import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';  // Import the HomePage

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Stack to overlay the back arrow on top of the image
          Stack(
            children: [
              // Image at the top
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200, // Adjust the height of the image as needed
                child: Image.asset(
                  'assets/images/register.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              // Back Arrow Button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white), // White arrow for visibility on image
                    onPressed: () {
                      Navigator.pop(context);  // Go back to the previous page (LoginPage)
                    },
                  ),
                ),
              ),
            ],
          ),

          // Signup Form Container
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView( // Allow scrolling if necessary
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    // Signup Header Text
                    const Text("Sign up", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),

                    const SizedBox(height: 15),

                    // Email Field
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        labelStyle: TextStyle(fontSize: 14), 
                        prefixIcon: Icon(Icons.email),
                        border: InputBorder.none, // 
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple), 
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 230, 6, 211)), // Line color when enabled
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Password Field
                    TextField(
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: const TextStyle(fontSize: 14), // Smaller label text
                        prefixIcon: const Icon(Icons.lock),
                        border: InputBorder.none, // No border
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple), // Line color on focus
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: const Color.fromARGB(255, 230, 6, 211)), // Line color when enabled
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Username Field
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(fontSize: 14), // Smaller label text
                        prefixIcon: Icon(Icons.person),
                        border: InputBorder.none, // No border
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple), // Line color on focus
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 230, 6, 211)), // Line color when enabled
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Phone Number Field
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        labelStyle: TextStyle(fontSize: 14), // Smaller label text
                        prefixIcon: Icon(Icons.phone),
                        border: InputBorder.none, // No border
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple), // Line color on focus
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 230, 6, 211)), // Line color when enabled
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 15),

                    // Address Field
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Address",
                        labelStyle: TextStyle(fontSize: 14), 
                        prefixIcon: Icon(Icons.location_on),
                        border: InputBorder.none, 
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple), 
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 230, 6, 211)), 
                        ),
                      ),
                      keyboardType: TextInputType.streetAddress,
                    ),
                    const SizedBox(height: 10),

                    // Terms and Conditions
                    const Text(
                      "By signing up, you agree to the terms & conditions and privacy policy",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10), // Smaller text
                    ),
                    const SizedBox(height: 15),

                    // Signup Button
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to HomePage on successful signup
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text("Signup", style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                    const SizedBox(height: 15),

                    // Already have an account? Login
                    Center(
                     child: TextButton(
  onPressed: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  },
  child: RichText(
    text: TextSpan(
      children: [
        const TextSpan(
          text: "Already have an account? ",
          style: TextStyle(
            color: Colors.black,  // Keep the "Already have an account?" text black
            fontSize: 14,
          ),
        ),
        TextSpan(
          text: "Login",  // This is the "Login" text
          style: TextStyle(
            color: Colors.blue,  // Change the "Login" text to blue
            fontSize: 14,
          ),
        ),
      ],
    ),
  ),
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
