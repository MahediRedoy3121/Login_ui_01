import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFDFCFF),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  "Images/image1.jpg",
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Discover your\nDream job Here",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                child: Text(
                  "It is a long established fact that a reader will be distracted its layout.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: Row(children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(15)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.teal.shade400),
                                elevation: MaterialStateProperty.all(0.0),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ))),
                            onPressed: () {},
                            child: Text("Buy now".toUpperCase(),
                                style: TextStyle(fontSize: 14)),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(15)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.teal),
                                elevation: MaterialStateProperty.all(0.0),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ))),
                            onPressed: () {},
                            child: Text("Buy now".toUpperCase(),
                                style: TextStyle(fontSize: 14)),
                          ),
                        ),
                      ])))
            ],
          ),
        ),
      ),
    );
  }
}
