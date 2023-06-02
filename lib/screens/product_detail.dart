import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:softcode_test/models/product.dart';
class ProductDetail extends StatelessWidget {
  Product? product;
   ProductDetail({Key? key,this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = 1;
    double ffem = 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // iphone14promax2xqV (1:2)
          width:  double.infinity,
          decoration:  const BoxDecoration (
            color:  Color(0xffffffff),
          ),
          child:
          Column(
            crossAxisAlignment:  CrossAxisAlignment.center,
            children:  [
              SizedBox(
                // autogroup7mhh36F (RFVVQRcFRjq8TrCDSk7mhh)
                width:  double.infinity,
                height:  289*fem,
                child:
                Stack(
                  children:  [
                    Positioned(
                      // rectangle13n3q (1:3)
                      left:  0*fem,
                      top:  0*fem,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  430*fem,
                          height:  71*fem,
                          child:
                          Container(
                            decoration:  const BoxDecoration (
                              color:  Color(0xffd68484),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle13D99 (1:4)
                      left:  0*fem,
                      top:  71*fem,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  430*fem,
                          height:  218*fem,
                          child:
                          Container(
                            decoration:  const BoxDecoration (
                              color:  Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group118mu (1:6)
                      left:  20*fem,
                      top:  48*fem,
                      child:
                      Container(
                        padding:  EdgeInsets.fromLTRB(14.36*fem, 21.11*fem, 12.31*fem, 22.03*fem),
                        width:  368*fem,
                        height:  67*fem,
                        decoration:  BoxDecoration (
                          color:  const Color(0xffffffff),
                          borderRadius:  BorderRadius.circular(10*fem),
                          boxShadow:  [
                            BoxShadow(
                              color:  const Color(0x3f000000),
                              offset:  Offset(0*fem, 4*fem),
                              blurRadius:  2*fem,
                            ),
                          ],
                        ),
                        child:
                        Row(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          children:  [
                            Container(
                              // searchBEP (1:8)
                              margin:  EdgeInsets.fromLTRB(0*fem, 1.84*fem, 18.22*fem, 0*fem),
                              width:  16.42*fem,
                              height:  22.03*fem,
                              child:const Icon(Icons.search)
                            ),
                            Container(
                              // searchforaproductYUF (1:9)
                              margin:  EdgeInsets.fromLTRB(0*fem, 2.92*fem, 61.51*fem, 0*fem),
                              child:
                              Text(
                                'Search for a product',
                                style:  GoogleFonts.inter (
                                  fontSize:  15*ffem,
                                  fontWeight:  FontWeight.w400,
                                  height:  1.2125*ffem/fem,
                                  color:  const Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // group23A7 (1:10)
                              padding:  EdgeInsets.fromLTRB(82.77*fem, 1.84*fem, 0*fem, 0*fem),
                              height:  double.infinity,
                              child:
                              Align(
                                alignment:  Alignment.bottomRight,
                                child:
                                SizedBox(
                                  width:  5.42*fem,
                                  height:  22.03*fem,
                                  child:const Icon(Icons.search)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // myproductstgX (1:13)
                      left:  96*fem,
                      top:  159*fem,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  216*fem,
                          height:  43*fem,
                          child:
                          Text(
                            'My Products',
                            style:  GoogleFonts.inter (
                              fontSize:  35*ffem,
                              fontWeight:  FontWeight.w700,
                              height:  1.2125*ffem/fem,
                              color:  const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupbfsmckw (RFVVbAoM2wCC178oXwBFsm)
                padding:  EdgeInsets.fromLTRB(43*fem, 44*fem, 19*fem, 44*fem),
                width:  double.infinity,
                height:  643*fem,
                decoration:  const BoxDecoration (
                  color:  Color(0xfffdfdfd),
                ),
                child:
                Container(
                  // group12kMM (1:38)
                  width:  double.infinity,
                  height:  166*fem,
                  decoration:  BoxDecoration (
                    borderRadius:  BorderRadius.circular(10*fem),
                  ),
                  child:
                  Column(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children:  [
                      Container(
                        // autogroupnqesV43 (RFVVgR9buqxCP7grhDNQEs)
                        margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 32*fem),
                        padding:  EdgeInsets.fromLTRB(49*fem, 25*fem, 49*fem, 23*fem),
                        width:  double.infinity,
                        decoration:  BoxDecoration (
                          color:  const Color(0xffffffff),
                          borderRadius:  BorderRadius.circular(10*fem),
                          boxShadow:  [
                            BoxShadow(
                              color:  const Color(0x3f000000),
                              offset:  Offset(0*fem, 4*fem),
                              blurRadius:  2*fem,
                            ),
                          ],
                        ),
                        child:
                        Text(
                          product!.productName!,
                          style:  GoogleFonts.inter (
                            fontSize:  15*ffem,
                            fontWeight:  FontWeight.w400,
                            height:  1.2125*ffem/fem,
                            color:  const Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupgmlkXFd (RFVVjqDaYfBBi3SjYXGmLK)
                        padding:  EdgeInsets.fromLTRB(49*fem, 24*fem, 49*fem, 24*fem),
                        width:  double.infinity,
                        decoration:  BoxDecoration (
                          color:  const Color(0xffffffff),
                          borderRadius:  BorderRadius.circular(10*fem),
                          boxShadow:  [
                            BoxShadow(
                              color:  const Color(0x3f000000),
                              offset:  Offset(0*fem, 4*fem),
                              blurRadius:  2*fem,
                            ),
                          ],
                        ),
                        child:
                        Text(
                          'Gender',
                          style:  GoogleFonts.inter (
                            fontSize:  15*ffem,
                            fontWeight:  FontWeight.w400,
                            height:  1.2125*ffem/fem,
                            color:  const Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
