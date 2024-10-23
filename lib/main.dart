// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

const d_green = Color(0xFF54D3C2);

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels Booking',
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(child: Column(
        children: [
          SearchSection(),
          HotelSection(),
        ],
      ))
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size:20,
        ),
        onPressed: null,
      ),
      title: Text('Explore', style: GoogleFonts.nunito(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.w800,
        ),
      ),
      actions: [
        IconButton(
        icon: Icon(
          Icons.favorite_outline_rounded,
          color: Colors.grey[800],
          size:20,
        ),
        onPressed: null,
      ),
      IconButton(
        icon: Icon(
          Icons.place,
          color: Colors.grey[800],
          size:20,
        ),
        onPressed: null,
      ),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 160,
            color: Colors.grey[200],
            padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 4,
                            offset: Offset(0, 3)
                          ),
                        ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'London',
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 4,
                            offset: Offset(0, 4)
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                          ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 26,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          backgroundColor: d_green,
                        ),
                      ),
                    )
                  ],
                ),
                //SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Choose date',
                            style: GoogleFonts.nunito(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '12 Dec - 22 Dec',
                            style: GoogleFonts.nunito(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Number of Rooms',
                            style: GoogleFonts.nunito(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '1 Room - 2 Adults',
                            style: GoogleFonts.nunito(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
              ),
          );
  }
}

class HotelSection extends StatelessWidget {
  final List hotelList = [
    {
      'title' : 'Grand Royal',
      'place': 'Webley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/1.png',
      'price': '180'
    },
    {
      'title' : 'Queen Hotel',
      'place': 'Webley, London',
      'distance': 1,
      'review': 132,
      'picture': 'images/2.png',
      'price': '233'
    },
    {
      'title' : 'Grand Mal',
      'place': 'Webley, London',
      'distance': 1,
      'review': 51,
      'picture': 'images/3.png',
      'price': '190'
    },
    {
      'title' : 'Hilton',
      'place': 'Webley, London',
      'distance': 3,
      'review': 62,
      'picture': 'images/4.png',
      'price': '160'
    },
    {
      'title' : 'Ceasar Star',
      'place': 'Webley, London',
      'distance': 5,
      'review': 85,
      'picture': 'images/5.png',
      'price': '225'
    },
    {
      'title' : 'Star Palace',
      'place': 'Webley, London',
      'distance': 7,
      'review': 27,
      'picture': 'images/6.png',
      'price': '215'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  //color: Colors.red,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '400 hotels founds',
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                        Text(
                          'Filters',
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.filter_list_outlined,
                            color: d_green,
                            size: 25,
                            ),
                        ),
                        ],
                      ),
                    ],
                  ),
                  ),
                 Column(
                  children: hotelList.map((hotel) {
                    return HotelCard(hotel);
                    }).toList(),
                 ),
              ],
            ),
          );
  }
}

class HotelCard extends StatelessWidget {
  final Map hotelData;
  HotelCard(this.hotelData);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0,3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: 
                DecorationImage(
                  image: AssetImage(
                    hotelData['picture'],
                  ),
                  fit: BoxFit.cover,
                ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: CircleBorder(),
                    onPressed: () {},
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      color: d_green,
                      size: 20,
                    ),
                  ),
                )
            ])
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(hotelData['title'],
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  '\$' + hotelData['price'],
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  ),
                ),
              ],
              ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(hotelData['place'],
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.place,
                      color: d_green,
                      size: 14
                    ),
                    Text(
                      hotelData['distance'].toString() + 'km to city',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  'per night',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w400,
                  )
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                  ],
                ),
                SizedBox( width: 20,),
                Text(
                  hotelData['review'].toString() + ' reviews',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],)
          )
        ],
      ),
    );
  }
}