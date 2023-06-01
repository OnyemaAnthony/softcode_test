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
            // rectangle15or7 (0:125)
            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.24*fem),
            width:  double.infinity,
            height:  137.17*fem,
            decoration:  BoxDecoration (
              borderRadius:  BorderRadius.circular(10*fem),
              color:  Color(0xffd9d9d9),
              image:  DecorationImage (
                fit:  BoxFit.cover,
                image:  NetworkImage (
                    imageUrl!
                ),
              ),
            ),
          ),
          Container(
            // adidasconverseL5M (0:123)
            margin:  EdgeInsets.fromLTRB(10.5*fem, 0*fem, 0*fem, 14.59*fem),
            child:
            Text(
              title!,
              style:  GoogleFonts.inter (
                fontSize:  13*ffem,
                fontWeight:  FontWeight.w700,
                height:  1.2125*ffem/fem,
                color:  Color(0xff000000),
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
                color:  Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
  //   return  Container(
  //     margin:  const EdgeInsets.fromLTRB(0, 0, 37, 0),
  //     padding:  const EdgeInsets.fromLTRB(0, 0, 0, 25),
  //     width:  170,
  //     height:  double.infinity,
  //     decoration:  BoxDecoration (
  //       color:  const Color(0xffffffff),
  //       borderRadius:  BorderRadius.circular(10),
  //     ),
  //     child: Column(
  //       crossAxisAlignment:  CrossAxisAlignment.start,
  //       children:  [
  //         Container(
  //           margin:  const EdgeInsets.fromLTRB(0, 0, 0, 156),
  //           width:  double.infinity,
  //           height:  138,
  //           decoration:  BoxDecoration (
  //             borderRadius:  BorderRadius.circular(10),
  //             color:  const Color(0xffd9d9d9),
  //             image:  DecorationImage (
  //               fit:  BoxFit.cover,
  //               image:  NetworkImage (
  //                   imageUrl!
  //               ),
  //             ),
  //           ),
  //         ),
  //         Container(
  //           margin:  const EdgeInsets.fromLTRB(10.5, 0, 0, 14.59),
  //           child:
  //           Text(
  //             title!,
  //             style:  GoogleFonts.inter (
  //               fontSize:  13,
  //               fontWeight:  FontWeight.w700,
  //               color: const  Color(0xff000000),
  //             ),
  //           ),
  //         ),
  //         Container(
  //           margin:  const EdgeInsets.fromLTRB(14, 0, 0, 0),
  //           child:
  //           Text(
  //             price!,
  //             style:  GoogleFonts.inter (
  //               fontSize:  10,
  //               fontWeight:  FontWeight.w700,
  //               color:  const Color(0xff000000),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
///'\$1200'