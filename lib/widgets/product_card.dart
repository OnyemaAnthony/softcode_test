import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProductCard extends StatelessWidget {
  String? imageUrl;
  String? title;
  String? price;
   ProductCard({Key? key,this.imageUrl,this.price,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = 1;
    double ffem = 1;
    return Container(
      margin: const EdgeInsets.only(left: 10,right: 10),
      padding:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
      width:  170*fem,
      height:  double.infinity,
      decoration:  BoxDecoration (
        color:  const Color(0xffffffff),
        borderRadius:  BorderRadius.circular(10*fem),
      ),
      child:
      Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children:  [
          Container(
            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.24*fem),
            width:  double.infinity,
            height:  137.17*fem,
            decoration:  BoxDecoration (
              borderRadius:  BorderRadius.circular(10*fem),
              color:  const Color(0xffd9d9d9),
              image:  DecorationImage (
                fit:  BoxFit.cover,
                image:  NetworkImage (
                    imageUrl!
                ),
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.fromLTRB(10.5*fem, 0*fem, 0*fem, 14.59*fem),
            child:
            Text(
              title!,
              style:  GoogleFonts.inter (
                fontSize:  13*ffem,
                fontWeight:  FontWeight.w700,
                height:  1.2125*ffem/fem,
                color:  const Color(0xff000000),
              ),
            ),
          ),
          Container(
            // rZV (0:124)
            margin:  EdgeInsets.fromLTRB(14*fem, 0*fem, 0*fem, 0*fem),
            child:
            Text(
              price!,
              style:  GoogleFonts.inter (
                fontSize:  10*ffem,
                fontWeight:  FontWeight.w700,
                height:  1.2125*ffem/fem,
                color:  const Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
