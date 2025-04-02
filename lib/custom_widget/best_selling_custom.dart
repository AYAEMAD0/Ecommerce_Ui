import 'package:ecommerce_ui/custom_widget/details_item.dart';
import 'package:flutter/material.dart';


class Best extends StatelessWidget {
  final String image;
  final String text;
  final String description;
  final String price;

  const Best({
    super.key,
    required this.image,
    required this.text,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Details(
              image: image,
              text: text,
              description: description,
              price: price,
            ),
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              child: Image.asset(image, fit: BoxFit.fill, height: 120),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(description, style: TextStyle(color: Colors.grey[600])),
            SizedBox(height: 8),
            Text(
              price,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.deepOrange),
            ),
          ],
        ),
      ),
    );
  }
}
