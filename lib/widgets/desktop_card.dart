import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopCard extends StatelessWidget {
  String? imageUrl;
  String? price;
  String? title;
   DesktopCard({Key? key,this.imageUrl,this.title,this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = 1;
    double ffem = 1;
    return      Container(
      margin: EdgeInsets.fromLTRB(
          0 * fem, 0 * fem, 0 * fem, 51 * fem),
      padding: EdgeInsets.fromLTRB(
          0 * fem, 0 * fem, 0 * fem, 27 * fem),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius:
        BorderRadius.circular(10 * fem),
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem,
                0 * fem, 0 * fem, 20 * fem),
            width: double.infinity,
            height: 180 * fem,
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(10 * fem),
              color: const Color(0xffd9d9d9),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageUrl!,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(16 * fem,
                0 * fem, 0 * fem, 19 * fem),
            child: Text(
              title!,
              style: GoogleFonts.inter(
                fontSize: 20 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2125 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(18 * fem,
                0 * fem, 0 * fem, 0 * fem),
            child: Text(
              price!,
              style: GoogleFonts.inter(
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2125 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
