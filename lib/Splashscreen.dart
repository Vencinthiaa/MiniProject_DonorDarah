import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset("assets/donasi.png"),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Splashscreenbutton(
            "Aplikasi booking donor darah dapat mempermudah masyarakat umum untuk mendaftar donor darah dan menentukan lokasi daerah terdekatnya."),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Align(
            alignment: Alignment.topCenter,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed("/login");
          },
          child: Text(
            "Next",
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
        )
      ],
    );
  }
}

Widget Splashscreenbutton(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    ),
  );
}
