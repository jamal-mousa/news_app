import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: 
          [
            Text
            (
              'News' , 
              style: TextStyle
              (
                color: Colors.black,
                fontSize: 20,
              ),
              ),
              Text
            (
              'Cloud' , 
              style: TextStyle
              (
                color: Colors.orange,
                fontSize: 20,
              ),
              ),
          ],
        ),
        
        
      ),
      body: Container
      (
        height: 150,
        width: 200,
        decoration: BoxDecoration
        (
          image: DecorationImage
          (
            image: NetworkImage('https://images.pexels.com/photos/209977/pexels-photo-209977.jpeg'),
            fit: BoxFit.fill
          ),
          borderRadius: BorderRadius.circular(16),
          color: Colors.blue,
        ),
        child: Center(child: Text('Sports' , 
        style: TextStyle
        (
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 28
        ),
        ),
        ),
      ),
    );
  }
}