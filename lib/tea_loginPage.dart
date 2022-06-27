import 'package:flutter/material.dart';
import 'config.dart';

class tea_loginPage extends StatefulWidget {
  const tea_loginPage({Key? key}) : super(key: key);

  @override
  State<tea_loginPage> createState() => _tea_loginPageState();
}

class _tea_loginPageState extends State<tea_loginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Config.themeData,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
            color: themeColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/TCE logo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 20, 35, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: txtcolor,
                            ),
                          ),
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
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Email Address",
                              hintStyle: TextStyle(
                                fontSize: 15,
                              ),
                              prefixIcon: Icon(
                                Icons.email,
                                size: 20,
                                color: Colors.grey[600],
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                fontSize: 15,
                              ),
                              prefixIcon: Icon(
                                Icons.remove_red_eye,
                                size: 20,
                                color: Colors.grey[600],
                              )),
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
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
                        "Login",
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
          ),
        ),
      ),
    );
  }
}
