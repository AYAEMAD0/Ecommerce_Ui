import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String image;
  final String text;
  final String description;
  final String price;

  const Details({
    super.key,
    required this.image,
    required this.text,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[200],
        iconTheme: IconThemeData(color: Colors.grey[600]),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart_outlined, color: Colors.grey[900]),
            Text(
              "  Ecommerce",
              style: TextStyle(
                color: Colors.orange[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Devices ",
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Image.asset(image, fit: BoxFit.cover, height: 330),
          SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            price,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Color: ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
              ),
              SizedBox(width: 5),
              Text(
                "Grey",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[700], fontSize: 20),
              ),
              SizedBox(width: 22),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.deepOrange, width: 3),
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
              ),
              SizedBox(width: 5),
              Text(
                "Black",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[700], fontSize: 20),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 12),
              onPressed: () {},
              textColor: Colors.white,
              color: Colors.orange,
              child: Text("Add to Card", style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}
