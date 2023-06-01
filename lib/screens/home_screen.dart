import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'as gf;
import 'package:softcode_test/widgets/product_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String imageUrl ='https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60';
  double fem = 1;
  double ffem = 1;
  final List<ProductCard> myProducts =[
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
    ProductCard(title: 'shoe',price: '300#',imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',),
  ];

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          color: const Color(0xffD9D9D9),
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 350,
                  childAspectRatio: 7 / 9,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30),
              itemCount: myProducts.length,
              itemBuilder: (BuildContext ctx, index) {
                return ProductCard(
                  title: 'shooos',
                   price: '500',
                  imageUrl: imageUrl,
                );

              }),
        ),
      ),
      appBar:PreferredSize(
        preferredSize: const Size(double.infinity,200),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.center,
          children:  [
            SizedBox(
              width:  double.infinity,
              height:  200,
              child: Stack(
                children:  [
                  Positioned(
                    left:  0,
                    top:  0,
                    child:
                    Align(
                      child:
                      SizedBox(
                        width:  430,
                        height:  71,
                        child:
                        Container(
                          decoration:  const BoxDecoration (
                            color:  Color(0xffd68484),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   left:  0,
                  //   top:  71,
                  //   child:
                  //   Align(
                  //     child:
                  //     SizedBox(
                  //       width:  430,
                  //       height:  218,
                  //       child:
                  //       Container(
                  //         decoration: const  BoxDecoration (
                  //           color:  Color(0xffffffff),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Positioned(
                    left:  20,
                    top:  48, child:
                    Container(
                      padding:  const EdgeInsets.fromLTRB(14, 21, 12, 22),
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
                      child: Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            margin:  EdgeInsets.fromLTRB(0*fem, 1.84*fem, 18.22*fem, 0*fem),
                            width:  16.42*fem,
                            height:  22.03*fem,
                            child:const Icon(Icons.search)
                          ),
                          Container(
                            margin:  EdgeInsets.fromLTRB(0*fem, 2.92*fem, 61.51*fem, 0*fem),
                            child: Text(
                              'Search for a product',
                              style:  gf.GoogleFonts.inter (
                                fontSize:  15*ffem,
                                fontWeight:  FontWeight.w400,
                                height:  1.2125*ffem/fem,
                                color:  const Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            padding:  EdgeInsets.fromLTRB(82.77*fem, 1.84*fem, 0*fem, 0*fem),
                            height:  double.infinity,
                            child:
                            Align(
                              alignment:  Alignment.bottomRight,
                              child:
                              SizedBox(
                                width:  16.42*fem,
                                height:  22.03*fem,
                                child:const Icon(Icons.keyboard_arrow_down)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Positioned(
                  //   left:  100,
                  //   top:  159*fem,
                  //   child:
                  //   Align(
                  //     child:
                  //     SizedBox(
                  //       width:  216*fem,
                  //       height:  43*fem,
                  //       child:
                  //       Text(
                  //         'My Products',
                  //         style: gf. GoogleFonts.inter (
                  //           fontSize:  35*ffem,
                  //           fontWeight:  FontWeight.w700,
                  //           height:  1.2125*ffem/fem,
                  //           color:  const Color(0xff000000),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),

          ],
        ),
      ) ,
    );
  }
}
