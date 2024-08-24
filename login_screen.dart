import 'package:flutter/material.dart';
import 'package:flutter_application_1/SliverLoginScreen.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(238, 72, 35, 172), 
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 120.0,
                      backgroundImage: NetworkImage(
                        'https://as2.ftcdn.net/v2/jpg/03/39/70/91/1000_F_339709166_kKKqiQFynWG7bEkl3LisH3saRrEB0HGa.jpg', // Replace with your network image URL
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Welcome to the app. Please login or sign up to continue.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the SliverLoginScreen when login button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SliverLoginScreen()),
                        );
                      },
                      child: const Text("Login",style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      )),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color.fromARGB(255, 47, 83, 202),
                        padding: EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 90.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the SliverLoginScreen when sign up button is pressed
                        
                      },
                      child: const Text("Sign up",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color.fromARGB(255, 47, 83, 202),
                        padding: EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 85.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
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
