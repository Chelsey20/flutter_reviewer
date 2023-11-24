import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyPractice(),
    ),
  );
}

class MyPractice extends StatelessWidget {
  const MyPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 200.0),
                width: 130.0,
                height: 130.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: const Center(
                  child: Text(
                    'HeyTalk',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
            const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Text('HEY! TALK', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),),
                      Text('Get ready to chat and have a blast', style: TextStyle(fontWeight: FontWeight.w500),),
                    ],
                  ),
                )),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 170.0),
                child: SizedBox(
                  width: 280.0,
                  height: 50.0,
                  child: Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lets begin   ',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 15.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
