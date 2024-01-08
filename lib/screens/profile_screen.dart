import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:namer_app/screens/home_screen.dart';
import 'package:namer_app/screens/profile_book_screen.dart';
import 'package:namer_app/widgets/custom_tab_indicator.dart';
import 'package:namer_app/models/popularbook_model.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 241, 158, 49),
    ),
  ));
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: ListView(
         
          children:[
              Container(
                height: MediaQuery.of(context).size.height * .5,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(
                                MediaQuery.of(context).size.width * 0.5, 100.0),
                            bottomRight: Radius.elliptical(
                                MediaQuery.of(context).size.width * 0.5, 100.0),
                          ),
                          
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Stack(
                        children: [
                          GestureDetector(
                             onTap: () {
                            Navigator.push(
                                context, 
                                MaterialPageRoute(builder: ((context) => HomeScreen())));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Color.fromARGB(255, 241, 158, 49),
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 40),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'Kullanıcı Profili',
                                style: GoogleFonts.openSans(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(
                                'assets/images/profile_pic.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 0,),
              DefaultTabController(length: 1, 
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelStyle: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                unselectedLabelStyle: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                indicator: RoundedRectangleTabIndicator(
                  weight: 2,
                  width: 10,
                  color: Colors.black
                
                ),
                tabs: [
                  Tab(
                    child: Container(
                      margin: EdgeInsets.only(right:20),
                      child: Text('Kütüphanedeki Kitaplar'),
                    ) ,
                  )
                ],
              )
              ),
              ListView.builder(
              padding: EdgeInsets.only(left:15),
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
                            builder: (context) => ProfileBookScreen(
                                popularBookModel: populars[index])));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 19,left :20),
                    height: 81,
                    color: const Color.fromARGB(255, 245, 213, 172),
                    child: Row(children: <Widget>[
                      Container(
                        height: 81,
                        width: 62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(populars[index].image),
                              fit: BoxFit.fill,
                              ),
                              
                          color: const Color.fromARGB(255, 247, 206, 153),
                        ),
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      Expanded(child: 
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
                      )
                    ]),
                  ),
                );
              })
             
            
          ],
        ),
      ),
      )
    );
  }
}