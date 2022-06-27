import 'package:flutter/material.dart';
import 'package:it_app/config.dart';
import 'package:it_app/stu_loginPage.dart';
import 'package:it_app/tea_loginPage.dart';

class title extends StatefulWidget {
  const title({Key? key}) : super(key: key);

  @override
  State<title> createState() => _titleState();
}

class _titleState extends State<title> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Config.themeData,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: themeColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "IT SOLUTIONS",
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 12,
                        fontWeight: FontWeight.w600,
                        color: txtcolor,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Where Quality and Ethics Matter",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => stu_loginPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(14), primary: btncolor),
                          child: Text(
                            "Student Login",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => tea_loginPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(14), primary: btncolor),
                          child: Text(
                            "Teacher Login",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
