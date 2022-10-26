import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Center(
          child: Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Image.asset(
              'assets/donasi.png',
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Donor darah dilokasi terdekat anda",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 80,
              width: 250,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/lokasi");
                },
                child: Text(
                  "PMI Kota Bekasi",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 80,
          width: 250,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/lokasi");
            },
            child: Text(
              "PMI DKI Jakarta",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 80,
          width: 250,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/lokasi");
            },
            child: Text(
              "PMI Jakarta Timur",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 80,
          width: 250,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/lokasi");
            },
            child: Text(
              "PMI Jakarta Utara",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
