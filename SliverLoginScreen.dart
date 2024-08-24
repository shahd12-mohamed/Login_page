import 'package:flutter/material.dart';
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
