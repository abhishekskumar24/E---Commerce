import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key,required this.imagepath,required this.productname,required this.productprice,required this.productquantity,required this.onTap,
  });

  final String imagepath;
  final String productname;
  final String productprice;
  final String productquantity;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 160,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 105,
            
            child: Image.asset(
              imagepath,
              height: 80,
              fit: BoxFit.cover,
            
            ),
          ),
          SizedBox(height: 5,),

          Text(productname,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          ),

          SizedBox(height: 5,),

          Row(children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(productprice,
                 style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold
                 ),
          ),

           SizedBox(height: 2,),

          Text(productquantity,
          style: TextStyle(
            color: const Color.fromARGB(255, 54, 53, 53),
            fontSize: 12,
          ),
          ),

           SizedBox(height: 8,),

              ],
            ),
            ElevatedButton(onPressed: onTap, child: Text("+",style: TextStyle(color: Colors.white,fontSize: 20),
            ),
            style: ElevatedButton.styleFrom( 
              shape: CircleBorder(),
              backgroundColor: Colors.green),
            ),
          ],),
         



        ],
      ),

    );
  }
}