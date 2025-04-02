import 'package:ecommerce_ui/custom_widget/best_selling_custom.dart';
import 'package:ecommerce_ui/custom_widget/categories_custom.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  List<Map<String, String>> bestSelling = [
    {
      "image": "Images/headphone.png",
      "text": "Headphone",
      "description": "Clear sound, deep bass.",
      "price": "700\$",
    },
    {
      "image": "Images/watch.png",
      "text": "Watch",
      "description": "Stylish and waterproof.",
      "price": "400\$",
    },
    {
      "image": "Images/camera.png",
      "text": "Camera",
      "description": "High performance.",
      "price": "800\$",
    },
    {
      "image": "Images/battery.png",
      "text": "Powerbank",
      "description": "Portable and Efficient.",
      "price": "600\$",
    },
  ];

  List<Map<String, dynamic>> categories = [
    {"text": "Laptop", "icon": Icons.laptop},
    {"text": "Headphone", "icon": Icons.headphones},
    {"text": "Phone", "icon": Icons.phone_android},
    {"text": "Watch", "icon": Icons.watch},
    {"text": "TV", "icon": Icons.tv},
    {"text": "Gifts", "icon": Icons.card_giftcard},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.orange[800],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: "",
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.deepOrange,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.menu, size: 35),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, i) {
                    return Categories(
                      text: categories[i]["text"]!,
                      icon: Icon(
                        categories[i]["icon"]!,
                        size: 40,
                        color: Colors.orange[800],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Best Selling",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: bestSelling.length,
                itemBuilder: (context, i) {
                  return Best(
                    image: bestSelling[i]["image"]!,
                    text: bestSelling[i]["text"]!,
                    description: bestSelling[i]["description"]!,
                    price: bestSelling[i]["price"]!,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
