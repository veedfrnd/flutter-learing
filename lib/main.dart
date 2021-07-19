import 'package:flutter/material.dart';

void main() {
  runApp(CurrentLocation());
}


class CurrentLocation extends StatefulWidget {
  const CurrentLocation({Key? key}) : super(key: key);

  @override
  _CurrentLocationState createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  String _myLocation = 'My Current Location';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_myLocation),
              SizedBox(height: 10,),
              TextButton(
                onPressed: () {
                  setState(() {
                    _myLocation = 'my Location is clicked';
                  });
                },
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: Text('Click to get Current location',style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
