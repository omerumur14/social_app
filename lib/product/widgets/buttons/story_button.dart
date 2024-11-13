import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryButton extends StatefulWidget {
  const StoryButton(
      {super.key, this.image, required this.name, required this.isYou});
  final Widget? image;
  final String name;
  final bool isYou;

  @override
  State<StoryButton> createState() => _StoryButtonState();
}

class _StoryButtonState extends State<StoryButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(35),
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(255, 87, 144, 223),
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: widget.isYou
                  ? Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        widget.image!,
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    )
                  : widget.image,
            ),
          ),
        ),
        Text(
          widget.name,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.41,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
