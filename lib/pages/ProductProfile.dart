import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ProductProfile extends StatefulWidget {
  ProductProfile(
      {Key? key,
      required this.Fullname,
      required this.ImagePath,
      required this.Prices,
      required this.Description,
      required this.Rating,
      required this.RatingStar})
      : super(key: key);

  String Fullname;
  String ImagePath;
  String Prices;
  String Description;
  String Rating;
  String RatingStar;

  @override
  State<ProductProfile> createState() => _ProductProfileState();
}

class _ProductProfileState extends State<ProductProfile> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Product Profile"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 30, 192, 233),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                const SizedBox(
                  height: 25,
                ),
                Center(
                    child: Image(
                  image: NetworkImage(widget.ImagePath),
                  height: 230,
                  width: 230,
                )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.Fullname,
                  style:
                      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.Prices,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.Description,
                  style:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      widget.RatingStar,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    Icon(Icons.star),
                    SizedBox(
                      width: 135,
                    ),
                    Text(
                      widget.Rating,
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
