import 'package:enviro_info/screens/conference_agenda.dart';
import 'package:enviro_info/screens/welcome_page.dart';
import 'package:enviro_info/screens/logIn.dart';
import 'package:enviro_info/screens/personal_account.dart';
import 'package:enviro_info/widgets/custom_bottom_navbar.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:enviro_info/screens/home_screen.dart';
import 'package:flutter/material.dart';


void main() async  {
  await dotenv.load(fileName: ".env");
  runApp( MaterialApp(
    home:WelcomePage(),
  ));
}

