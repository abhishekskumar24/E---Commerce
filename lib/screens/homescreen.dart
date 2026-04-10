
import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_app/common/carousal_screen.dart';
import 'package:first_app/common/categorie_card.dart';
import 'package:first_app/common/screen_resulation.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}


class _HomescreenState extends State<Homescreen> {

  final searchcontroller = TextEditingController();


 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            decoration:  BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, const Color.fromARGB(255, 161, 206, 227)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                 CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage("assets/profile_images/person1.jpg"),
                ),

                 SizedBox(width: ScreenResulation.blockWidth * 4,),

                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Morning, Abhi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "What would you buy today?",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: ScreenResulation.blockWidth * 18,),

                  Row(
                    children: [
                    Container(
                      padding:  EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                
                  child: 
                  Icon(
                    Icons.shopping_bag_rounded,
                    color: Colors.blue,             
                    ),
                    ),
                    ],
                   ),
              
              ],
                ),
                
          ),
          SizedBox(height: ScreenResulation.blockHeight *1,),
          
          
          Column(
            children: [
              CarouselSlider(items: [
                Commoncarousal(subtitle: "From 14th June,2025", title: "Enjoy The Special Offer \n Up To 30%", imagepath: "assets/fruitsicon.png", backgroundColor: Colors.lightBlue),

                Commoncarousal(subtitle: "From 14th June,2025", title: "Enjoy The Special Offer \n Up To 30%", imagepath: "assets/fruitsicon.png", backgroundColor: Colors.green),

              ], options: CarouselOptions(autoPlay: true,autoPlayInterval: Duration(seconds: 8),height: 140)),
            ],
          ),
          SizedBox(height: ScreenResulation.blockHeight *2,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              
              controller: searchcontroller,
            
              decoration: InputDecoration(
                hintText: "Search vegetable, fruits and more",
                prefixIcon: Icon(Icons.search),

                suffixIcon: Icon(Icons.tune),
            
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
            
                )
              ),
            ),
          ),
          SizedBox(height: ScreenResulation.blockHeight *1,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: 
              MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
            
                TextButton(onPressed: () {}, child: Text("See all")),
             ],
            ),
          ),
          
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15),
                 child: ListView(
                
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCategorie(title: "Fruits", imagepath: "assets/categorie_icon/fruits.png",backgroundColor: const Color.fromARGB(255, 134, 182, 219),ontap: () {
                      
                    },),
                     ProductCategorie(title: "Snack", imagepath: "assets/categorie_icon/junk-food.png",backgroundColor: const Color.fromARGB(255, 241, 199, 216),ontap: () {
                      
                    },),
                     ProductCategorie(title: "Fresh", imagepath: "assets/categorie_icon/vegetables.png",backgroundColor: const Color.fromARGB(255, 208, 238, 179),ontap: () {
                      
                    },),
                    ProductCategorie(title: "Oils", imagepath: "assets/categorie_icon/palm-oil.png",
                    backgroundColor: const Color.fromARGB(255, 239, 170, 170),ontap: () {},),

                    ProductCategorie(title: "Grocery", imagepath: "assets/categorie_icon/shopping-bag.png",
                    backgroundColor: const Color.fromARGB(255, 177, 197, 231),ontap: () {},
                    ),

                    ProductCategorie(title: "Drinks", imagepath: "assets/categorie_icon/drink.png",
                    backgroundColor: const Color.fromARGB(255, 180, 202, 155),ontap: () {
                     
                  },
                    ),
                    

                  ],
                             ),
               ),
             ),
            
          
          
        ]
      ),
          );
    
  }
}
  