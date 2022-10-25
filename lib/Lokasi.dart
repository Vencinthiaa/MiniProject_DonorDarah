import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Lokasi extends StatefulWidget {
  const Lokasi({super.key});

  @override
  State<Lokasi> createState() => _LokasiState();
}

class _LokasiState extends State<Lokasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/success.png",
                  width: 200.0,
                  height: 250.0,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Booking Berhasil",
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Silahkan datang ke petugas pendaftaran\n untuk tahap selanjutnya.",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 250,
                ),
                Text(
                  "Bagikan di sosial media!",
                  style: TextStyle(color: Colors.redAccent, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/login");
                  },
                  child: Text(
                    "Back to Home",
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
