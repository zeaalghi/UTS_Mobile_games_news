import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'newspage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  final _controller = PageController();
  int _selectedButtonIndex = 0;
  int _selectedButtonIndexb = 0;

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  void initState() {
    super.initState();
    _selectedButtonIndex = 0;
    _selectedButtonIndexb = 0;
  }

  void _onButtonPressedb(int indexb) {
    setState(() {
      _selectedButtonIndexb = indexb;
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white10);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'MOBAA',
          style: TextStyle(
              fontFamily: 'Virile',
              color: Color.fromARGB(255, 35, 23, 80),
              fontSize: 36),
        ),
        leading: IconButton(
          icon: Icon(Icons.notifications),
          color: Color.fromARGB(255, 35, 23, 80),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Color.fromARGB(255, 35, 23, 80),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Container(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                  ),
                  for (int i = 0; i < 10; i++)
                    Padding(
                      padding:
                          EdgeInsets.all(8.0), // Add some space between items
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                ],
              ),
            )),
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 330.37,
                      height: 183.97,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 228, 71, 40)
                                .withOpacity(0.7),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(22.0),
                        child: Image.asset(
                          'images/dota2 1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 330.37,
                      height: 183.97,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 228, 71, 40)
                                .withOpacity(0.7),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(22.0),
                        child: Image.asset(
                          'images/dota2 1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 330.37,
                      height: 183.97,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 228, 71, 40)
                                .withOpacity(0.7),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(22.0),
                        child: Image.asset(
                          'images/dota2 1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ScaleEffect(
                activeDotColor: Color.fromARGB(255, 233, 107, 82),
                dotHeight: 15,
                dotWidth: 15,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _onButtonPressed(0);
                  },
                  child: Column(
                    children: [
                      Text(
                        'News',
                        style: GoogleFonts.montserrat(
                          color: _selectedButtonIndex == 0
                              ? Color.fromARGB(255, 35, 23, 80)
                              : Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 32,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: _selectedButtonIndex == 0
                              ? Color.fromARGB(255, 35, 23, 80)
                              : Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _onButtonPressed(1);
                  },
                  child: Column(
                    children: [
                      Text(
                        'Team Ranking',
                        style: GoogleFonts.montserrat(
                          color: _selectedButtonIndex == 1
                              ? Color.fromARGB(255, 35, 23, 80)
                              : Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 32,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: _selectedButtonIndex == 1
                              ? Color.fromARGB(255, 35, 23, 80)
                              : Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _onButtonPressed(2);
                  },
                  child: Column(
                    children: [
                      Text(
                        'Watch',
                        style: GoogleFonts.montserrat(
                          color: _selectedButtonIndex == 2
                              ? Color.fromARGB(255, 35, 23, 80)
                              : Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        width: 32,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: _selectedButtonIndex == 2
                              ? Color.fromARGB(255, 35, 23, 80)
                              : Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Stack(
              // clipBehavior: Clip.antiAlias,
              children: [
                Container(
                  width: 330,
                  height: 273,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(46)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(46),
                    child: Image.asset(
                      'images/roshan.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  top: 200,
                  left: 0,
                  right: 0,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        child: Container(
                          width: 241,
                          height: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45),
                            ),
                            color: Color.fromARGB(255, 35, 23, 80),
                          ),
                          child: Center(
                            child: Text(
                              'Diretide Event',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            top: null,
                            left: 230,
                            child: Container(
                              width: 100,
                              height: 62,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(0),
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(40),
                                ),
                                color: Color.fromARGB(255, 64, 255, 175),
                              ),
                              child: Center(
                                child: Text(
                                  'NEWS',
                                  style: GoogleFonts.montserrat(
                                      color: Color.fromARGB(255, 35, 23, 80),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            BottomAppBar(
                color: Colors.transparent,
                elevation: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _onButtonPressedb(0);
                      },
                      child: Column(
                        children: [
                          Text(
                            'Home',
                            style: GoogleFonts.montserrat(
                              color: _selectedButtonIndexb == 0
                                  ? Color.fromARGB(255, 64, 255, 175)
                                  : Color.fromARGB(255, 35, 23, 80),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: _selectedButtonIndexb == 0
                                  ? Color.fromARGB(255, 64, 255, 175)
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Newspage(),
                          ),
                        ).then((selectedIndex) {
                          if (selectedIndex != null) {
                            setState(() {
                              _selectedButtonIndexb = selectedIndex;
                            });
                          }
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            'News',
                            style: GoogleFonts.montserrat(
                              color: _selectedButtonIndexb == 1
                                  ? Color.fromARGB(255, 64, 255, 175)
                                  : Color.fromARGB(255, 35, 23, 80),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: _selectedButtonIndexb == 1
                                  ? Color.fromARGB(255, 64, 255, 175)
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _onButtonPressedb(2);
                      },
                      child: Column(
                        children: [
                          Text(
                            'Watch',
                            style: GoogleFonts.montserrat(
                              color: _selectedButtonIndexb == 2
                                  ? Color.fromARGB(255, 64, 255, 175)
                                  : Color.fromARGB(255, 35, 23, 80),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: _selectedButtonIndexb == 2
                                  ? Color.fromARGB(255, 64, 255, 175)
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
