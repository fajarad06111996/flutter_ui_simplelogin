import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_login/screens/signup_screen.dart';

const kPrimaryColor = Color(0xfff1bb274);
const kPrimaryLightColor = Color(0xfffeeeee4);

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; // untuk membagi ukuran pada layar aplikasi
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height / 2,
                  color: kPrimaryColor,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image.asset(
                      'assets/images/login.png',
                      alignment: Alignment.topCenter,
                      scale: 8,
                    ),
                  ),
                ), // Gambar untuk Background aplikasi
                Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: const BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Halaman Login',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff575861)),
                      ),
                    ),
                  ),
                ), // Untuk page title
                Padding(
                  padding: EdgeInsets.only(top: 300),
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text('Login'),
                        SizedBox(
                          height: 40,
                        ),

                        Form(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                            child: Column(
                              children: [
                                Form(
                                  // key: ,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      TextFormField(
                                        // controller: ,
                                        cursorColor: kPrimaryColor,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.mail,
                                            color: kPrimaryColor,
                                          ),
                                          labelText: "Email",
                                          labelStyle: TextStyle(
                                              fontFamily: 'OpenSans',
                                              color: kPrimaryColor),
                                          border: myinputborder(),
                                          enabledBorder: myinputborder(),
                                          focusedBorder: myfocusborder(),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      TextFormField(
                                        cursorColor: kPrimaryColor,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.lock,
                                            color: kPrimaryColor,
                                          ),
                                          labelText: "Password",
                                          labelStyle: TextStyle(
                                              fontFamily: 'OpenSans',
                                              color: kPrimaryColor),
                                          border: myinputborder(),
                                          enabledBorder: myinputborder(),
                                          focusedBorder: myfocusborder(),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        width: size.width * 0.99,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: ElevatedButton(
                                            child: Text(
                                              'MASUK',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17),
                                            ),
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                primary: kPrimaryColor,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 30,
                                                    vertical: 17),
                                                textStyle: TextStyle(
                                                    letterSpacing: 2,
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'OpenSans')),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Belum Punya Akun ??',
                                            style: const TextStyle(
                                                fontFamily: 'OpenSans',
                                                fontSize: 15,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          InkWell(
                                            onTap: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => SignUp(),
                                              ),
                                            ),
                                            child: Text(
                                              'Daftar',
                                              style: const TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Opensans'),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(
          color: kPrimaryColor,
          width: 2,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(
          color: kPrimaryColor,
          width: 2,
        ));
  }
}
