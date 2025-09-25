import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EVENT',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.wavy,
          ),
        ),


        backgroundColor: Colors.red,
        centerTitle: true,


      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://grc.edu.ph/wp-content/uploads/2023/09/batch23-min-1024x575.png',
              height: 200,

            ),
            SizedBox(height: 20),
            Text(
              'Global Reciprocal Colleges’ Graduation Day 2025.',
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Global Reciprocal Colleges’ Graduation Day 2025 The 13th Global Reciprocal Colleges Commencement Exercises were held on July 24, 2025, at the University of the Philippines, Quezon City, marking a significant milestone for both the graduating class and the institution. With the theme “Transformed to Lead, Committed to Reciprocate,” the event celebrated not only academic achievement.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}