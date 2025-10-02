import 'package:flutter/material.dart';

class AuthSwitchButton extends StatelessWidget {
  final VoidCallback onRegister;
  final VoidCallback onSignIn;

  const AuthSwitchButton({
    super.key,
    required this.onRegister,
    required this.onSignIn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        color: const Color(0xFFB59C84), // beige background
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          // Register side
          Expanded(
            child: GestureDetector(
              onTap: onRegister,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          // Sign In side
          Expanded(
            child: GestureDetector(
              onTap: onSignIn,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
