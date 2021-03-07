import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 120,
                backgroundImage: NetworkImage(
                  "https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg",
                ),
              ),
              Text(
                "Bundit Nuntates",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        5,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Profile: ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Lorem ipsum")
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
