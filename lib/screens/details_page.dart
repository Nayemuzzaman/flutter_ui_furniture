import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Container(
              height: height/2 + 80,
              width: width,
              color: Colors.yellow.shade800,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    child: Column(
                      children: const [
                        Text(
                          "Modern Sofa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                          "Household Series",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                      ],
                    ),
                  ),

                  Positioned(
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Text("household".toUpperCase(),
                        style: TextStyle(
                          height: 1,
                          fontWeight: FontWeight.w900,
                          fontSize: 60,
                          color: Colors.white30
                        ),),
                      ),
                    ),
                  ),

                  const Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 130,
                    ),
                  ),
                  Positioned(
                    right: 110,
                    top: 210,
                    child: Image.asset(
                      "assets/yellow_chair.png",
                      height: 230,
                      width: 220,
                      fit: BoxFit.cover,
                    ),
                  ),
                 Positioned(
                   bottom: 30,
                   left: 20,

                   child: Column(
                     children: [
                       Text("More Choice",
                       style: TextStyle(
                         fontSize: 13,
                         color: Colors.white,
                         fontWeight: FontWeight.w600,
                       ),)
                     ],
                   ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
