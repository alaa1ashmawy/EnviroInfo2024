import 'package:enviro_info/screens/logIn.dart';
import 'package:enviro_info/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';



class HeldByPage extends StatefulWidget {
  const HeldByPage({super.key});

  @override
  State<HeldByPage> createState() => _HeldByPageState();
}

class _HeldByPageState extends State<HeldByPage> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _opacity = 1.0; // Fade in to full opacity
      });
    });

    // Navigate to the next page after 4 seconds
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "This event is held by:",
                style: TextStyle(
                 fontSize: 30,
                  
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16), // Space between the text and the images
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Image.asset('assets/images/GI logo.png', width: 300,height: 100,),
                  ),
                ],
              ),
              const SizedBox(height: 16), // Space between the images
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Image.asset('assets/images/shagara bs german.png', width: 300,height:200 ,),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
