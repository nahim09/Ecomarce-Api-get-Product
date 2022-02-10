import 'package:ecommerceapigetdata/pages/productViewWiget.dart';
import 'package:flutter/material.dart';

import '../wiget.dart/user_list_header_widget.dart';
import '../wiget.dart/user_list_widget.dart';
import 'ApiHelper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var apiHelper = ApiHelper;
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          title: Text("Products"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 50, 163, 238),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder<List<dynamic>>(
            future: ApiHelper.getUserList(""),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, position) {
                      return ProductViewWigwt(
                          snapshot.data![position]["image"].toString(),
                          snapshot.data![position]["title"].toString(),"Price : "+
                          snapshot.data![position]["price"].toString(),"Description : "+
                          snapshot.data![position]["description"].toString(),
                          snapshot.data![position]["category"].toString(),
                          snapshot.data![position]["rating"]["count"].toString()," Rating : "+
                          snapshot.data![position]["rating"]["rate"].toString(),
                          context);
                    },
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}



// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<HomePage> {
//   Future<List<dynamic>> getUserInfo() async {
//     var response =
//         await http.get(Uri.parse("https://fakestoreapi.com/products"));
//     return jsonDecode(response.body);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.purple,
//       appBar: AppBar(
//         title: Text("Api data call"),
//         centerTitle: true,
//         // actions: [
//         //   IconButton(
//         //       onPressed: () {
//         //         Navigator.push(context,
//         //             MaterialPageRoute(builder: (context) => ImagePage()));
//         //       },
//         //       icon: Icon(Icons.image))
//         // ],
//       ),
//       body: Center(
//         child: FutureBuilder(
//           future: getUserInfo(),
//           builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
//             if (asyncSnapshot.hasData) {
//               return ListView.builder(
//                   itemCount: asyncSnapshot.data.length,
//                   itemBuilder: (context, int position) {
//                     return Card(
//                       child: Column(
//                         children: <Widget>[
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Column(
//                             children: [
//                               Image.network(
//                                 asyncSnapshot.data[position]["image"],
//                                 height: 300,
//                                 width: 300,
//                               ),
//                              const SizedBox(
//                                 width: 5,
//                               ),
//                               Text(
//                                 asyncSnapshot.data[position]["title"]
//                                     .toString(),
//                                 style: const TextStyle(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               const SizedBox(
//                                 height: 5,
//                               ),
//                               Row(
//                                 children: [
//                                   const Text(
//                                     "Price : ",
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                       asyncSnapshot.data[position]["price"]
//                                           .toString(),
//                                       style: const TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold)),
//                                 ],
//                               )
//                             ],
                            
//                           )
                          
//                         ],
                        
//                       ),
                      
//                     );
//                     // return Card(
//                     //   margin: EdgeInsets.all(10),
//                     //   child: Column(
//                     //     children: [
//                     //       Text(asyncSnapshot.data[position]["title"].toString()),
//                     //       //Image.network(asyncSnapshot.data[position]["image"])
//                     //     ],
//                     //   )
//                     // );
//                   });
//             } else {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
