import 'package:enviro_info/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

String userName = 'Not Found';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _idController = TextEditingController();
  String _errorMessage = '';

  void _login() { 
    String enteredId = _idController.text.trim();

    // Fetch the user data from the .env file
    String? usersData = dotenv.env['users'];

    if (usersData != null) {
      List<List<String>> users = usersData.split(';').map((user) => user.split(',')).toList();

      bool userFound = false;

      for (var user in users) {
        if (user[1] == enteredId) { // Check if the entered ID matches
          userName = user[0]; // Extract the user's name
          userFound = true;
          break;
        }
      }

      if (userFound) {
        // User ID exists, proceed to the next screen or show a success message
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const CustomBottomNavbar(), // Use your home screen widget here
          ),
        );
      } else {
        // User ID does not exist, show an error message
        setState(() {
          _errorMessage = 'Invalid ID. Please try again.';
        });
      }
    } else {
      setState(() {
        _errorMessage = 'User data not found.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _idController,
              decoration: InputDecoration(
                labelText: 'Enter your ID',
                errorText: _errorMessage.isNotEmpty ? _errorMessage : null,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
