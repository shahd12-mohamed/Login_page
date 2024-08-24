import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

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

class SliverLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Login'),
              background: Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Image.network(
                  'https://static.vecteezy.com/system/resources/previews/005/879/539/original/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.only(top:50 , right:20 , left:20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Name",
                        suffixIcon: Icon(Icons.person , color:  Color.fromARGB(255, 47, 83, 202)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        suffixIcon: Icon(Icons.email , color:  Color.fromARGB(255, 47, 83, 202)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        suffixIcon: Icon(Icons.lock , color:  Color.fromARGB(255, 47, 83, 202)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        
                      ),
                    ),
                    SizedBox(height: 40),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.facebook, size: 50,),
                        color: Color.fromARGB(172, 47, 83, 202),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.g_mobiledata_rounded, size: 80,),
                        color: Color.fromARGB(172, 47, 83, 202),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.apple,shadows: [Shadow(color: Color.fromARGB(255, 81, 236, 241))],size: 50,),
                        color: Color.fromARGB(172, 47, 83, 202),
                        onPressed: () {},
                      ),
                    ],
                  ),
                
              
          
                    ElevatedButton(
                      onPressed: () { },
                      child: Text("Login" ,style: TextStyle(fontSize: 25),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Color.fromARGB(255, 47, 83, 202),
                        foregroundColor: Colors.white,
                      
                        padding: EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 100.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
