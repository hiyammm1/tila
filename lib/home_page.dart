import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final screenHeight = constraints.maxHeight;
            final screenWidth = constraints.maxWidth;

            final isSmall = screenHeight < 700;

            final bannerHeight = screenHeight * 0.3;
            final cardHeight = screenHeight * 0.15;
            final cardWidth = screenWidth * 0.45;


            final iconBoxSize = screenWidth / 3.3;

            return Column(
              children: [
                
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: bannerHeight,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/fakecall.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: bannerHeight,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(168, 42, 227, 0.4),
                            Color.fromRGBO(168, 42, 227, 0),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back, color: Colors.white),
                                onPressed: () {},
                              ),
                            ),
                            Positioned(
                              bottom: 40,
                              left: 0,
                              child: Text(
                                'Hello Dibora feeling unsafe?\nChoose a menu below',
                                style: TextStyle(
                                  fontSize: isSmall ? 14 : 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  height: 1.3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -cardHeight / 2,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        height: cardHeight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildFeatureCard('Emergency call', 'assets/images/emergency_call.jpg', cardWidth, cardHeight),
                            const SizedBox(width: 12),
                            _buildFeatureCard('Record incident', 'assets/images/record.jpg', cardWidth, cardHeight),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 60),

                // Other Features
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Other features',
                          style: TextStyle(
                            fontSize: isSmall ? 16 : 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          _buildIconButton('Contact', Icons.phone, iconBoxSize),
                          _buildIconButton('Location', Icons.location_on, iconBoxSize),
                          _buildIconButton('Safest route', LucideIcons.router, iconBoxSize),
                          _buildIconButton('Condition', Icons.info, iconBoxSize),
                          _buildIconButton('Forum', Icons.forum, iconBoxSize),
                          _buildIconButton('Account', Icons.account_circle, iconBoxSize),
                          _buildIconButton('View incidents', Icons.remove_red_eye, iconBoxSize),
                          _buildIconButton('Report', Icons.report, iconBoxSize),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.purple,
            child: const Icon(Icons.logout),
          ),
          const SizedBox(height: 6),
          const Text(
            "Logout",
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildFeatureCard(String title, String imagePath, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
        ),
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(String label, IconData icon, double size) {
    return Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 6,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 22, color: Colors.purple),
          const SizedBox(height: 6),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }
}
