import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:namer_app/models/popularbook_model.dart';

import 'package:namer_app/widgets/custom_tab_indicator.dart';

class SelectedBookScreen extends StatelessWidget {
  final Key? key;
  final PopularBookModel popularBookModel;

  SelectedBookScreen({this.key, required this.popularBookModel});
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      foregroundColor: Color.fromARGB(255, 241, 158, 49),
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
        height: 49,
        color: Color.fromARGB(255, 241, 158, 49),
        child: TextButton(
          style: flatButtonStyle,
          onPressed: () {},
          child: Text(
            'Kütüphaneye Ekle',
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 247, 206, 153),
              expandedHeight: MediaQuery.of(context).size.height * 0.5,
              flexibleSpace: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        left: 25,
                        top: 35,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, "/homeScreen");
                          },
                          
                        )),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 62),
                        width: 172,
                        height: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(popularBookModel.image),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.only(top: 24, left: 25),
                child: Text(
                  popularBookModel.title,
                  style: GoogleFonts.openSans(
                    fontSize: 27,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 7, left: 25),
                child: Text(
                  popularBookModel.author,
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 7, left: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'TL',
                        style: GoogleFonts.openSans(
                          fontSize: 32,
                          color: Colors.orange.shade500,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        popularBookModel.price,
                        style: GoogleFonts.openSans(
                          fontSize: 32,
                          color: Colors.orange.shade500,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )),
              Container(
                height: 28,
                margin: EdgeInsets.only(top: 23, bottom: 36),
                padding: EdgeInsets.only(left: 25),
                child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                      labelPadding: EdgeInsets.all(0),
                      indicatorPadding: EdgeInsets.all(0),
                      isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      labelStyle: GoogleFonts.openSans(
                          fontSize: 14, fontWeight: FontWeight.w700),
                      unselectedLabelStyle: GoogleFonts.openSans(
                          fontSize: 14, fontWeight: FontWeight.w600),
                      indicator: RoundedRectangleTabIndicator(
                          weight: 2, width: 30, color: Colors.black),
                      tabs: [
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 39),
                            child: Text('Açıklama'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 39),
                            child: Text('Değerlendirmeler'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 39),
                            child: Text('Benzer'),
                          ),
                        )
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: Text(
                  popularBookModel.description,
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    letterSpacing: 1.5,
                    height: 2,
                  ),
                ),
              )
            ]))
          ],
        ),
      )),
    );
  }
}
