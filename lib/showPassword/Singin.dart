// ignore_for_file: non_constant_identifier_names, file_names, constant_identifier_names
import 'package:flutter/material.dart';

class ChangePassScren extends StatefulWidget {
  static const String route_ChangePassScren = 'ChangePassScren';

  const ChangePassScren({Key? key}) : super(key: key);

  @override
  State<ChangePassScren> createState() => _ChangePassScrenState();
}

class _ChangePassScrenState extends State<ChangePassScren> {
  var BOOXC = const Color(0xff262626);
  var TextC = const Color(0xff5F5A5A);

  bool visState = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(20, 70, 20, 50),
            color: Colors.teal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(
                  height: 120.0,
                ),
                const Text(
                  "            Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  "",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Container(
                  height: 50,
                  // padding: EdgeInsets.fromLTRB(0, 1, 1, 5),
                  margin: const EdgeInsets.all(0.0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.tealAccent,
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3.0, color: (Colors.tealAccent)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 5.0, color: (Colors.tealAccent)),
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                      labelStyle: const TextStyle(
                          fontSize: 15.0, color: (Colors.white)),
                      hintText: "Old Password",
                      hintStyle: TextStyle(fontSize: 14.0, color: TextC),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              visState = !visState;
                            });
                          },
                          icon: Icon(
                            visState ? Icons.visibility : Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    style: const TextStyle(fontSize: 18.0, color: Colors.black),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: visState,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(bottom: 20),
          color: Colors.teal,
          child: TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: () {},
            child: const Text(
              "Back",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
