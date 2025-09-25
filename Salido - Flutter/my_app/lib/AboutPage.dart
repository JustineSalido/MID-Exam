import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ABOUT',
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
              'https://tse3.mm.bing.net/th/id/OIP.TCDho8rcR_oDNIe7cEkcWQHaDA?rs=1&pid=ImgDetMain&o=7&rm=3',
              height: 200,

            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Global Reciprocal College (GRC).',
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'At GRC, we are committed to shaping the future by providing quality education that empowers students to excel in their chosen careers. With a focus on innovation, industry relevance, and holistic development, our college offers a wide range of programs designed to meet the demands of today\'s dynamic world. Join us and become part of a community dedicated to learning, growth, and success.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}