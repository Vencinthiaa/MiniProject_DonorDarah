import 'package:donor_darah/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Survey extends StatefulWidget {
  const Survey({super.key});

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Image.asset("assets/donasi.png"),
          ),
          Transform(
            transform: Matrix4.translationValues(0, -10, 0),
            child: Text(
              "Booking",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              hintText: 'Masukan Nama',
              labelText: 'Masukan Nama Lengkap',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.map),
              hintText: 'Masukan Alamat',
              labelText: 'Alamat',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.transgender),
              hintText: 'Jenis Kelamin',
              labelText: 'Jenis Kelamin',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.numbers),
              hintText: 'Masukan Umur',
              labelText: 'Umur',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.sim_card),
              hintText: 'Masukan nomor KTP',
              labelText: 'Nomor KTP',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.calendar_today),
              hintText: 'dd-mmm-yyyy',
              labelText: 'Masukan Tempat Tanggal lahir',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.phone),
              hintText: 'Masukan no hp',
              labelText: 'No HP',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.bloodtype),
              hintText: 'Masukan golongan darah',
              labelText: 'Golongan Darah',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/booking");
              },
              child: Text(
                "Booking",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
