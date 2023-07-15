import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workshop 01: Profile'),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          buildFeaturePicture(),

          buildNameTitle(),

          buildMail(),

          buildPhoneNumber(),
        ],
      )
    );
  }

  Padding buildPhoneNumber() {
    return const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
          child: Row(
            children: [
              Icon(Icons.phone,
                size: 26,
                color: Colors.cyan,
              ),
        
              SizedBox(
                width: 10,
              ),
        
              Text('064-0253302',
                style: TextStyle(
                  fontFamily: 'Mitr',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                ),
              ),
            ],
          ),
        );
  }

  Padding buildMail() {
    return const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
          child: Row(
            children: [
              Icon(Icons.email,
                size: 26,
                color: Colors.cyan,
              ),

              SizedBox(
                width: 10,
              ),
        
              Text('6340011013@psu.ac.th',
                style: TextStyle(
                  fontFamily: 'Mitr',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                ),
              ),
            ],
          ),
        );
  }

  Padding buildNameTitle() {
    return Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 30),
          child: Text('Mr.Weerapat Phutthamongkhon',
            style: GoogleFonts.kanit(
              textStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
        );
  }

  Padding buildFeaturePicture() {
    return const Padding(
          padding: EdgeInsets.all(20.0),
          child: Image(
            image: AssetImage('assets/images/Boo.png'),
            height: 300,
            fit: BoxFit.cover,
          ),
        );
  }
}