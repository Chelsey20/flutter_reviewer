import 'package:flutter/material.dart';

class Portion extends StatefulWidget {
  const Portion({super.key});

  @override
  State<Portion> createState() => _PortionState();
}

class _PortionState extends State<Portion> {
  final int portionNumber = 60;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 40.0, right: 40.0),
          width: MediaQuery.sizeOf(context).width,
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: portionNumber,
            itemBuilder: (context, index) {
              int num = index + 1;

              return Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text('$num'),
                  ),
                ),
              );
            },
          ),
        ),
        // const Text(
        //   'Portion',
        //   style: TextStyle(
        //     color: Colors.grey,
        //   ),
        // ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            minimumSize: Size(150, 40),
          ),
          child: const Text(
            'Quick',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        )
      ],
    );
  }
}
