import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:news/detail.dart';
import 'package:news/homepage.dart';
import 'package:news/list_detail.dart';
import 'api_service.dart';
import 'list_page.dart';
import 'splash.dart';

void main() {
  runApp(Newspage());
}

class Newspage extends StatefulWidget {
  const Newspage({Key? key});

  @override
  State<Newspage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Newspage> {
  int _selectedButtonIndexb = 0;
  Homepage hom = Homepage();
  List<listitem> data = listitems;

  void _onButtonPressedb(int indexb) {
    setState(() {
      _selectedButtonIndexb = indexb;
    });
  }

  Widget iconro() {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.download, size: 24, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.heart_fill, size: 24, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share, size: 24, color: Colors.white),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'MOBAA',
          style: TextStyle(
              fontFamily: 'Virile',
              color: Color.fromARGB(255, 185, 169, 242),
              fontSize: 36),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          color: Color.fromARGB(255, 185, 169, 242),
          onPressed: () {
            Navigator.pop(context, _selectedButtonIndexb);
          },
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
      backgroundColor: Color.fromARGB(255, 35, 23, 80),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          String imageUrl = data[index].thumb;
          String title = data[index].title;
          String key = data[index].key;
          return ListTile(
            title: Column(
              children: [
                GestureDetector(
                  onTap: () {
                  
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(koy: key),
                      ),
                    );
                    // print(key);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(imageUrl,
                        width: 360, height: 200, fit: BoxFit.fill),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 180,
                      child: Text(
                        title,
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    iconro(),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// class Newspage extends StatefulWidget {
//   const Newspage({super.key});

//   @override
//   State<Newspage> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<Newspage> {
//   int _selectedButtonIndexb = 0;
//   final APIService _apiService = APIService();
//   Homepage hom = Homepage();
//   void _onButtonPressedb(int indexb) {
//     setState(() {
//       _selectedButtonIndexb = indexb;
//     });
//   }

//   Widget iconro() {
//     return Row(
//       children: [
//         IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.download, size: 24, color: Colors.white),
//         ),
//         IconButton(
//           onPressed: () {},
//           icon: Icon(CupertinoIcons.heart_fill, size: 24, color: Colors.white),
//         ),
//         IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.share, size: 24, color: Colors.white),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return
//         // debugShowCheckedModeBanner: false,
//         Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//         title: Text(
//           'MOBAA',
//           style: TextStyle(
//               fontFamily: 'Virile',
//               color: Color.fromARGB(255, 185, 169, 242),
//               fontSize: 36),
//         ),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios_new),
//           color: Color.fromARGB(255, 185, 169, 242),
//           onPressed: () {
//             // Navigator.pop(context);
//             Navigator.pop(context, _selectedButtonIndexb);
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.settings,
//               color: Color.fromARGB(255, 35, 23, 80),
//             ),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       backgroundColor: Color.fromARGB(255, 35, 23, 80),
//       body: FutureBuilder<List<Map<String, dynamic>>>(
//         future: _apiService.fetchData(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: Splash());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             List<Map<String, dynamic>> data = snapshot.data!;
//             return ListView.builder(
//               itemCount: data.length,
//               itemBuilder: (context, index) {
//                 String imageUrl = data[index]['thumb'];
//                 String title = data[index]['title'];
//                 String key = data[index]['key'];
//                 return ListTile(
//                   title: Column(
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => DetailPage(koy: key),
//                             ),
//                           );
//                         },
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(20.0),
//                           child: Image.network(imageUrl,
//                               width: 360, height: 200, fit: BoxFit.fill),
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             width: 180,
//                             child: Text(
//                               textAlign: TextAlign.start,
//                               title,
//                               style: GoogleFonts.montserrat(
//                                   fontSize: 14,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                           iconro(),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
