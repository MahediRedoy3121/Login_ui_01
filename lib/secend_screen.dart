import 'package:flutter/material.dart';

class secend_screen extends StatelessWidget {
  const secend_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff2f2f2),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello Again!",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back you've \nbeen missed",
                  style: TextStyle(fontSize: 27),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            textfild(
              hinttext: "Your Name",
              prefixicon: Icon(Icons.ac_unit_rounded),
            ),
            textfild(
              prefixicon: Icon(Icons.lock),
              hinttext: "Passeord",
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Forget Password",
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                        minimumSize: Size(0, 50),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Text("Log In"))),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                    thickness: 3,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Text("or Continue With"),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Container(
                    child: Divider(
                      color: Colors.black,
                      thickness: 3,
                      indent: 3,
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class textfild extends StatelessWidget {
  final hinttext;
  final prefixicon;
  const textfild({Key? key, this.hinttext, this.prefixicon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: TextField(
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: hinttext,
              prefixIcon: prefixicon,
              focusColor: Colors.amber,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
