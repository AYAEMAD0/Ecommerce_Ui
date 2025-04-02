import 'package:ecommerce_ui/screen/home.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("Images/start.jpg", fit: BoxFit.contain),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  textColor: Colors.white,
                  color: Colors.orange,
                  child: Text("Start", style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
