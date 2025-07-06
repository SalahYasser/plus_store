import 'package:flutter/material.dart';
import 'package:plus_store/core/routes/routes.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Positioned.fill(
          top: 50,
          child: Image.asset(
            'assets/images/Element_reverse.png',
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),

        Positioned(
          top: 12,
          left: 32,
          child: SizedBox(
            width: 324,
            child: Text(
              'Define yourself in your unique way.',
              style: TextStyle(
                color: Color(0xFF191919),
                fontSize: 64,
                fontFamily: 'General Sans',
                fontWeight: FontWeight.w600,
                height: 0.80,
                letterSpacing: -3.20,
              ),
            ),
          ),
        ),

        Positioned(
          top: 20,
          left: 0,
          right: 0,
          child: Image.asset(
            'assets/images/human.png',
            width: size.width,
            fit: BoxFit.cover,
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: SizedBox(
              height: 64,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.loginView);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'General Sans',
                        fontWeight: FontWeight.w500,
                        height: 1.40,
                      ),
                    ),
                    SizedBox(width: 12),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
