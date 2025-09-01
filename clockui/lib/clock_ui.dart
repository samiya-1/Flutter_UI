import 'package:animated_analog_clock/animated_analog_clock.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.black : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                color: darkMode ? Colors.black : Colors.grey[300],
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 99, 95, 95),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: 
              AnimatedAnalogClock(
                dialType: DialType.dashes,
                backgroundColor: darkMode?Colors.white:Colors.black,
                hourHandColor: Colors.blue,
                hourDashColor: Colors.green,
                minuteHandColor: Colors.indigo,
                centerDotColor: Colors.brown,
               
                
              )
             
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      darkMode = false;
                    });
                  },

                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(color: Colors.grey, width: 2),
                  ),
                  child: Text(
                    "Light",
                    style: TextStyle(color: Colors.grey[850]),
                  ),
                ),
                SizedBox(width: 50),
                TextButton(
                  onPressed: () {
                    setState(() {
                      darkMode = true;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide(color: Colors.grey, width: 2),
                  ),
                  child: Text("Dark", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
