import 'package:flutter/material.dart';

import 'ProductProfile.dart';

ProductViewWigwt(String picture, String title, String price, String discription,
    String prices, String rating, String ratingStar, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductProfile(
                    Fullname: title,
                    ImagePath: picture,
                    Prices: price,
                    Description: discription,
                    Rating: rating,
                    RatingStar: ratingStar,
                  )));
    },
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Image.network(
                  picture,
                  height: 300,
                  width: 300,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style:
                      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(width: 5,),
                    Text(price,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold,color: Colors.red)),
                            
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(ratingStar,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold,color: Colors.red)),
                            Icon(Icons.star,color: Colors.red,),
                            Icon(Icons.star,color: Colors.red,),
                            Icon(Icons.star,color: Color.fromARGB(255, 153, 133, 133),),
                            const SizedBox(width: 155,),
                            Text(rating,style: const TextStyle(fontSize: 18),),
                            const Icon(Icons.favorite,color: Colors.red,),
                  ],
                ),
                
              ],
            )
          ],
        ),
      ),
    ),
  );
}
