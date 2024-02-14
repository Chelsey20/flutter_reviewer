import 'package:flutter/material.dart';

class Portion extends StatefulWidget {
  const Portion({super.key});

  @override
  State<Portion> createState() => _PortionState();
}

class _PortionState extends State<Portion> {
  final int portionNumber = 60;
  var _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 40.0, right: 40.0),
          width: MediaQuery.sizeOf(context).width,
          height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: portionNumber,
            itemBuilder: (context, index) {
              int num = index + 1;

              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: unPressed(num, _isClicked),
                  // OutlinedButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       _isClicked = true;
                  //       //record num
                  //     });
                  //   },
                  //   style: OutlinedButton.styleFrom(
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(20.0),
                  //     ),
                  //   ),
                  //   child: Center(
                  //     child: Text(
                  //       '$num',
                  //       style: const TextStyle(
                  //         color: Colors.black38,
                  //         fontSize: 16.0,
                  //       ),
                  //     ),
                  //   ),
                  // ),
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
            'Manual',
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

Widget unPressed(int num, var _isClicked) {
  return OutlinedButton(
    onPressed: () {
      setState() {
        _isClicked = true;
      }
    },
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
    child: Center(
      child: Text(
        '$num',
        style: const TextStyle(
          color: Colors.black38,
          fontSize: 16.0,
        ),
      ),
    ),
  );
}
