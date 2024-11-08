import 'package:flutter/material.dart';
import 'package:vision_2026/constants/image_class.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/home_screen.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.grey[100]!,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Image.asset(
                  ImageClass.appIcon,
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 20),

                // Tagline
                Text(
                  'Creating Partnership with the Needy',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 40),

                // Language Selection Text
                Text(
                  'Select your language / اپنی زبان منتخب کریں',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),

                // Language Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Urdu Button
                    _LanguageButton(
                      onTap: () {
                        navigatePRTo(
                            context: context, screen: const HomeScreen());
                      },
                      text: 'اردو',
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(width: 20),
                    // English Button
                    _LanguageButton(
                      onTap: () {
                        navigatePRTo(
                            context: context, screen: const HomeScreen());
                      },
                      text: 'English',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LanguageButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final TextDirection? textDirection;

  const _LanguageButton({
    required this.onTap,
    required this.text,
    this.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 200,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
              colors: [
                Color(0xFFB71C1C), // Dark red
                Color(0xFFD32F2F), // Lighter red
              ],
            ),
          ),
          child: Center(
            child: Directionality(
              textDirection: textDirection ?? TextDirection.ltr,
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
