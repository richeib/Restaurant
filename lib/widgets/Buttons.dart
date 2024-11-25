// ignore: file_names
import 'package:flutter/material.dart';






class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String? btnTxt;
  final Color txcolour2; // Added to pass custom color

  const CustomButton({
    super.key,
    this.onTap,
    this.btnTxt,
    required this.txcolour2, // Added required color parameter
  });

  double get fem => 1;
  double get ffem => 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0.39 * fem, 27.97 * fem),
      child: InkWell(
        onTap: () {},
        child: InkWell(
          borderRadius: BorderRadius.circular(8), // Reduced the curve to 8px
          onTap: onTap,
          child: Ink(
            width: 390,
            height: 51.49 * fem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), // Changed to 8px
              gradient: LinearGradient(
                begin: const Alignment(1, 0),
                end: const Alignment(-1.282, 0),
                colors: <Color>[
                  txcolour2, // Changed button color to txcolour2
                  txcolour2.withOpacity(
                      0.8), // Added color variation for gradient effect
                  txcolour2.withOpacity(
                      0.6), // Added color variation for gradient effect
                ],
                stops: const <double>[0, 0.878, 0.982],
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(0 * fem, 0 * fem),
                  blurRadius: 3.1195707321 * fem,
                ),
              ],
            ),
            child: Center(
              child: Text(
                btnTxt!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18, // Set to 18px
                  fontWeight: FontWeight.w600, // Font weight set to 600
                  height: 22.59 / 18, // Calculated line height (22.59px / 18px)
                  color: Colors.white, // Text color remains white
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class HoverButton extends StatefulWidget {
  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: _isHovered ? Colors.blue.shade700 : Colors.blue,
          borderRadius: BorderRadius.circular(8),
          boxShadow: _isHovered
              ? [BoxShadow(color: Colors.blueAccent, blurRadius: 10, spreadRadius: 1)]
              : [],
        ),
        child: Text(
          "Hover Me!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}