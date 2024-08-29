import 'package:enviro_info/utils/bullet_list_agenda.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ConferenceAgenda extends StatefulWidget {
  const ConferenceAgenda({super.key});

  @override
  _ConferenceAgendaState createState() => _ConferenceAgendaState();
}

class _ConferenceAgendaState extends State<ConferenceAgenda> {
  
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 175,
            color: Colors.green,
            child: Center(
              child: Text(
                'Conference Agenda',
                style: GoogleFonts.montserrat(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 300,
              color: Colors.white,
              child: const BulletListAgenda(),
            ),
          ),
        ],
      ),
     
    );
  }
}
