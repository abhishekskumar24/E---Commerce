import 'package:flutter/material.dart';

class ProductCategorie extends StatelessWidget {
  
  final String title;
  final Color?  backgroundColor;
  final VoidCallback ? ontap;
  final String  imagepath;

  const ProductCategorie({
    super.key,
    required this.title,
     this.backgroundColor,
    this.ontap,
    required this.imagepath,



  });

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: ontap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              // padding: EdgeInsets.symmetric(vertical: 10),
              width: 50,
              decoration: BoxDecoration(
                color: backgroundColor??Colors.white,
                shape: BoxShape.circle
              
              ),
              child: Center(
                
                    child: Image.asset(imagepath, 
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                    ),
            
                    
                   
                    
                  ),
              ),
          ),
             SizedBox(height: 2,),
                Text(title,style: TextStyle(fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                ),

           
          
        ],
      ),
    );
  }
}

