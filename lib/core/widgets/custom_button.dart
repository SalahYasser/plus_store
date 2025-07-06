import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.color,
    required this.textColor,
    this.icon,
    this.iconColor,
  });

  final void Function()? onPressed;
  final String text;
  final Color color;
  final Color textColor;
  final IconData? icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: iconColor),
            TextButton(
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontFamily: 'General Sans',
                  fontWeight: FontWeight.w500,
                  height: 1.40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
