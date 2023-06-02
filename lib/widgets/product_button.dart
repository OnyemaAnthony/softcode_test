import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductButton extends StatelessWidget {
  const ProductButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = 1;
    double ffem = 1;
    return Container(
        width: 178 * fem,
        height: 51 * fem,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff000000)),
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(30 * fem),
        ),
        child: Center(
          child: Text(
            'Converse Shoes',
            style: GoogleFonts.inter(
              fontSize: 15 * ffem,
              fontWeight: FontWeight.w400,
              height: 1.2125 * ffem / fem,
              color: const Color(0xff000000),
            ),

        ),
      ),
    );
  }
}
