import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';

const kPrimaryColor = Color(0xfff1bb274);
const kPrimaryLightColor = Color(0xfffeeeee4);

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                      'assets/images/register.png',
                      alignment: Alignment.topCenter,
                      scale: 8,
                    ),
                  ),
                ), // Gambar untuk Background aplikasi
                iconBackButton(context),
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
                        'Halaman Daftar',
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
                    decoration: const BoxDecoration(
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
                          height: 30,
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
                                        // controller: ,
                                        cursorColor: kPrimaryColor,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.people,
                                            color: kPrimaryColor,
                                          ),
                                          labelText: "Username",
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
                                        // controller: ,
                                        cursorColor: kPrimaryColor,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.phone,
                                            color: kPrimaryColor,
                                          ),
                                          labelText: "Nomor Telepon",
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
                                              'DAFTAR',
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
                                        height: 10,
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

  iconBackButton(BuildContext context) {
    return IconButton(
      color: Colors.white,
      iconSize: 28,
      icon: const Icon(CupertinoIcons.arrow_left),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
