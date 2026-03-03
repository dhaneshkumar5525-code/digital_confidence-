import 'package:flutter/material.dart';
import 'home_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  String selectedCategory = "";
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter Your Name",
                style: TextStyle(color: Colors.white, fontSize: 20)),
            TextField(
              controller: nameController,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30),

            Text("Select Your Category",
                style: TextStyle(color: Colors.white, fontSize: 20)),

            buildCategoryButton("Elderly"),
            buildCategoryButton("Parent"),
            buildCategoryButton("Student"),
            buildCategoryButton("Office Worker"),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (_) => HomeScreen(
                            username: nameController.text,
                            category: selectedCategory)));
              },
              child: Text("Next"),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCategoryButton(String category) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Text(category),
    );
  }
}