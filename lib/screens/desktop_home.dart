import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:softcode_test/blocs/product/product_bloc.dart';
import 'package:softcode_test/widgets/destop_card.dart';
import 'package:softcode_test/widgets/product_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/product.dart';
import '../utils/utilities.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  double fem = 1;
  double ffem = 1;
  String imageUrl = 'https://media.istockphoto.com/id/1308274455/photo/blue-sneakers-isolated-on-white-background.webp?b=1&s=170667a&w=0&k=20&c=BAAB67D78Mx7GgyUPnTVA01z2xrY6Hj0rJ_O6swbNvY=';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (BuildContext context) => ProductBloc()..add(GetAllProductEvent()),
  child: Scaffold(
    body:  BlocBuilder<ProductBloc, ProductState>(
  builder: (context, state) {
    if(state is ProductLoadingState){
    return Utilities.showLoader();
    }else if(state is ProductErrorState){
    return  Center(child: Text(state.errorMessage),);
    }else if (state is ProductLoadedState){
      return    SafeArea(
        child: Container(
          //margin: EdgeInsets.only(left: 20,right: 20),
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
          color: const Color(0xffD9D9D9),
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 7 / 9,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 0),
              itemCount: state.products.length,
              itemBuilder: (BuildContext ctx, index) {
                Product product = state.products[index];
                return GestureDetector(
                  onTap: (){
                    ///implement click
                  },
                  child: DesktopCard(
                    title: product.productName,
                    price: product.price,
                    imageUrl: product.imageUrl,
                  ),
                );

              }),
        ),
      );

    }

    return Container();


  },
),
      appBar:PreferredSize(
        preferredSize: const Size(double.infinity,2000),
        child: SingleChildScrollView(
          child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 287 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 1600 * fem,
                          height: 71 * fem,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xffd68484),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0 * fem,
                      top: 69 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 1440 * fem,
                          height: 218 * fem,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group1TAP (0:7)
                      left: 451 * fem,
                      top: 35 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            21 * fem, 23 * fem, 18 * fem, 24 * fem),
                        width: 538 * fem,
                        height: 73 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(10 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x3f000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                        child: TextFormField(

                          decoration: const InputDecoration(
                          border: InputBorder.none,
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search for a product'
                        ),),
                      ),
                    ),
                    Positioned(
                      left: 612 * fem,
                      top: 137 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 216 * fem,
                          height: 43 * fem,
                          child: Text(
                            'My Products',
                            style: GoogleFonts.inter(
                              fontSize: 35 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 104 * fem,
                      top: 207 * fem,
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProductButton(),
                            SizedBox(width: 15,),
                            ProductButton(),
                            SizedBox(width: 15,),

                            ProductButton(),
                            SizedBox(width: 15,),

                            ProductButton(),
                            SizedBox(width: 15,),

                            ProductButton(),
                            SizedBox(width: 15,),

                            ProductButton(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                EdgeInsets.fromLTRB(104 * fem, 51 * fem, 148 * fem, 0 * fem),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffd9d9d9),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group9qvw (0:34)
                      margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
                      padding: EdgeInsets.fromLTRB(
                          31 * fem, 21 * fem, 99 * fem, 21 * fem),
                      width: double.infinity,
                      height: 124 * fem,
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse1wyy (0:36)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 38 * fem, 0 * fem),
                            width: 83 * fem,
                            height: 82 * fem,

                          ),
                          Container(
                            // adiddasportwearsH2F (0:37)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 258 * fem, 0 * fem),
                            child: Text(
                              'Adidda Sport ',
                              style: GoogleFonts.inter(
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2125 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 19 * fem, 0 * fem),
                            width: 65 * fem,
                            height: 65 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10 * fem),
                              color: const Color(0xffd9d9d9),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  imageUrl,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // rectangle8UsR (0:39)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 19 * fem, 0 * fem),
                            width: 65 * fem,
                            height: 65 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10 * fem),
                              color: const Color(0xffd9d9d9),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  imageUrl,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // rectangle9xGo (0:40)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 19 * fem, 0 * fem),
                            width: 65 * fem,
                            height: 65 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10 * fem),
                              color: const Color(0xffd9d9d9),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  imageUrl,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // rectangle1044w (0:41)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 19 * fem, 0 * fem),
                            width: 65 * fem,
                            height: 65 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10 * fem),
                              color: const Color(0xffd9d9d9),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  imageUrl,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // rectangle11ZGb (0:42)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 17 * fem, 0 * fem),
                            width: 65 * fem,
                            height: 65 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10 * fem),
                              color: const Color(0xffd9d9d9),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  imageUrl,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 7 * fem, 0 * fem, 8 * fem),
                            width: 67 * fem,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle12QHD (0:43)
                                  left: 2 * fem,
                                  top: 2 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 65 * fem,
                                      height: 65 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(10 * fem),
                                          color: const Color(0xffd9d9d9),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                              imageUrl,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group10JdV (0:44)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Container(
                                    width: 67 * fem,
                                    height: 67 * fem,
                                    decoration: BoxDecoration(
                                      color: const Color(0xb2000000),
                                      borderRadius: BorderRadius.circular(10 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '10+',
                                        style: GoogleFonts.inter(
                                          fontSize: 20 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                  ],
                ),
              ),
            ],
          ),
    ),
        ),
      ),
    ),
);
  }
}
