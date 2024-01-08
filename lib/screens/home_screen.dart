import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:namer_app/widgets/custom_tab_indicator.dart';
import 'package:namer_app/models/newbook_model.dart';
import 'package:namer_app/models/popularbook_model.dart';
import 'package:namer_app/screens/selected_book_screen.dart';
import 'package:namer_app/screens/profile_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: ListView(physics: BouncingScrollPhysics(), children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 25, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hoşgeldiniz',
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.orangeAccent.shade200),
                  ),
                  Text(
                    'Kitapları Keşfet',
                    style: GoogleFonts.openSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  
                ],
              )),
          
            Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                child: SvgPicture.asset('assets/icons/icon_user_grey.svg'),
              ),
            ],
          ),
          Container(
            height: 39,
            margin: EdgeInsets.only(left: 25, right: 25, top: 18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 236, 234, 234)),
            child: Stack(
              children: <Widget>[
                TextField(
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 19, right: 50, bottom: 8),
                      border: InputBorder.none,
                      hintText: 'Kitap Ara',
                      hintStyle: GoogleFonts.openSans(
                          fontSize: 12,
                          color: Color.fromARGB(255, 165, 163, 163),
                          fontWeight: FontWeight.w600)),
                ),
                Positioned(
                    right: 0,
                    child:
                        SvgPicture.asset('assets/svg/background_search.svg')),
                Positioned(
                  top: 8,
                  right: 9,
                  child: SvgPicture.asset('assets/icons/icon_search_white.svg'),
                )
              ],
            ),
          ),
          Container(
            height: 25,
            margin: EdgeInsets.only(top: 30),
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
                      weight: 2, width: 10, color: Colors.black),
                  tabs: [
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('Yeniler'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('Trendler'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        margin: EdgeInsets.only(right: 23),
                        child: Text('Çok Satanlar'),
                      ),
                    )
                  ]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 21.0),
            height: 210.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 25.0, right: 6.0),
              itemCount: newbooks.length,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    print("Listview'a dokunuldu");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectedBookScreen(
                          popularBookModel: populars[index], 
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 19.0),
                    height: 210.0,
                    width: 153.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orangeAccent.shade200,
                      image: DecorationImage(
                        image: AssetImage(newbooks[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
            Padding(
            padding: EdgeInsets.only(left: 25, top: 25),
            child: Text(
              'Popüler',
              style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          ListView.builder(
              padding: EdgeInsets.only(top: 25, right: 25, left: 25),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: populars.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    print("Listview'a dokunuldu");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectedBookScreen(
                                popularBookModel: populars[index])));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 19),
                    height: 81,
                    width: MediaQuery.of(context).size.width - 50,
                    color: const Color.fromARGB(255, 245, 213, 172),
                    child: Row(children: <Widget>[
                      Container(
                        height: 81,
                        width: 62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(populars[index].image)),
                          color: const Color.fromARGB(255, 247, 206, 153),
                        ),
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            populars[index].title,
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            populars[index].author,
                            style: GoogleFonts.openSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${populars[index].price}TL',
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ]),
                  ),
                );
              })
        ]),
      ),
    ));
  }
}
