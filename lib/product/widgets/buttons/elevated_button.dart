import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.customWidget,
    this.bgColor,
  });
  final VoidCallback onPressed;
  final Widget? customWidget;
  final Color? bgColor;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor:
            widget.bgColor ?? const Color.fromARGB(255, 230, 238, 250),
        padding: const EdgeInsets.all(12),
      ),
      child: widget.customWidget,
    );
  }
}
