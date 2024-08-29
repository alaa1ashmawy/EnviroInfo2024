import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:enviro_info/screens/logIn.dart' as logIn;

class PersonalAccount extends StatefulWidget {
  const PersonalAccount({super.key});

  @override
  _PersonalAccountState createState() => _PersonalAccountState();
}

class _PersonalAccountState extends State<PersonalAccount> {
     String userName='';

  @override
  void initState() {
    super.initState();
    userName = logIn.userName; 
  }
  
    @override
      Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EnviroInfo',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.grey[300],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
     child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          

          Container(
            width: 100,
            height: 250,
            color: Colors.green,
            child: Center(
              child: Text(
                'Welcome to EnviroInfo 2024 Conference',
                style: GoogleFonts.montserrat(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
         Container(
  padding: const EdgeInsets.all(16.0),
  color: Colors.green,
  child: Center(
    child: Text(
      userName,
      style: GoogleFonts.montserrat(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
  ),
),

          Container(
            width: 100,
            height: 250,
            color: Colors.white,
            child: Center(
              child: Text(
                'QR code hayeb2a hena ',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 100,
            height: 250,
            color: Colors.green,
            child: Center(
              child: Text(
                'Have any Questions?     Contact us ',
                style: GoogleFonts.montserrat(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          
        ],
      ),
      ),
    );
  }
}

