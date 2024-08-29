import 'package:enviro_info/screens/heldby_page.dart';
import 'package:flutter/material.dart';


class SponsorsPage extends StatefulWidget {
  const SponsorsPage({super.key});

  @override
  State<SponsorsPage> createState() => _SponsorsPageState();
}

class _SponsorsPageState extends State<SponsorsPage> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _opacity = 1.0; // Fade in to full opacity
      });
    });

    // Navigate to the next page after 5 seconds
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HeldByPage()),
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
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
            children: <Widget>[
              const Text(
                "Sponsors of this year's conference:",
                style: TextStyle(
                  fontSize: 30,
                  
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16), // Space between the text and the grid
              SizedBox(
                height: 400, // Adjust height to fit your content
                child: GridView.count(
                  crossAxisCount: 2, // Number of columns
                  padding: const EdgeInsets.all(8.0),
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: <Widget>[
                    Image.asset('assets/images/disy logo.png'),
                    Image.asset('assets/images/GUC logo.jpeg'),
                    Image.asset('assets/images/meteocontrol.png'),
                    Image.asset('assets/images/sustain-logo-new.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
