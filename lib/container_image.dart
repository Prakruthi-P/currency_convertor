import 'package:flutter/material.dart';
class ContainerImage extends StatefulWidget {
  const ContainerImage({super.key});

  @override
  State<ContainerImage> createState() => _ContainerImageState();
}

class _ContainerImageState extends State<ContainerImage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Centered Container with Image'),
        ),
        body: Center(
          child: Container(
              width: 300, // Adjust according to your needs
              height: 400, // Adjust according to your needs
              color: Colors.blue,
              child: Column(
                children: [
                  Text("Flower",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "Workbench",
                  ),),
                  // Image(
                  // image: AssetImage('assets/flower.png'),
                  // width: 200,
                  // height: 300,
                  //             ),
                  Image(
                    image: NetworkImage("https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg"),
                    width: 200,
                    height: 300,
                  ),
                ],
              ),
          ),
        ),
      ),
    );
  }
}
