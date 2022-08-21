import 'package:flutter/material.dart';

class tempconvert extends StatefulWidget{
  @override
  State<tempconvert> createState() => title();
}

class title extends State<tempconvert> {
  final bag  = TextEditingController();
  var result = '';


  void CeltoFa() {
    var input = double.tryParse(bag.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var f = (9/5)*(input) + 32;
      setState(() {
        result = '$input Celsius = $f Fahrenheit';
      });
    }
  }
  void CelToKel() {
    var input = double.tryParse(bag.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var k = input + 273;
      setState(() {
        result = '$input Celsius = $k Kelvin';
      });
    }
  }
  void FatoCel() {
    var input = double.tryParse(bag.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var c = (5/9)*(input-32);
      setState(() {
        result = '$input Fahrenheit = $c Celsius';
      });
    }
  }
  void FatoKel() {
    var input = double.tryParse(bag.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var k = (5/9)*(input-32)+273;
      setState(() {
        result = '$input Fahrenheit = $k Kelvin';
      });
    }
  }
  void KeltoCel() {
    var input = double.tryParse(bag.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var c = input-273;
      setState(() {
        result = '$input Kelvin = $c Celsius';
      });
    }
  }
  void KeltoFa() {
    var input = double.tryParse(bag.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var f = (9/5)*(input-273)+32;
      setState(() {
        result = '$input Kelvin = $f Fahrenheit';
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Caculater Temp')),
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text('Temparature Converter'),
            TextField(
              controller: bag,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a tempetature value to convert'
              ),
            ),

            ElevatedButton(
              onPressed: CeltoFa ,
              child: Text('Celsius to Fahrenheit'),
            ),

            ElevatedButton(
              onPressed: CelToKel ,
              child: Text('Celsius to Kelvin'),
            ),

            ElevatedButton(
              onPressed: FatoCel ,
              child: Text('Fahrenheit to Celsius'),
            ),

            ElevatedButton(
              onPressed: FatoKel ,
              child: Text('Fahrenheit to Kelvin'),
            ),
            ElevatedButton(
              onPressed: KeltoCel ,
              child: Text('Kelvin to Celsius'),
            ),
            ElevatedButton(
              onPressed: KeltoFa ,
              child: Text('Kelvin to Fahrenheit'),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}