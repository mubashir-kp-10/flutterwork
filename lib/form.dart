import 'dart:html';

import 'package:flutter/material.dart';
class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  var namecontoller = TextEditingController();
  var passCantroller = TextEditingController();
  var genter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Center(child: Text('LOGIN PAGE ', style: TextStyle(
                  color: Colors.red, fontSize: Checkbox.width),)),
              Icon(Icons.access_time),
            ],
          ),
          Padding(padding: EdgeInsets.all(8),
            child: TextField(
              controller: namecontoller,
              keyboardType: TextInputType.text, decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                ),
                label: Text(
                  'Name',
                  style: TextStyle(color: Colors.black),
                ),
                hintText: 'Enter Name',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              style: TextStyle(color: Colors.black),
              controller: passCantroller,
              obscureText: true,
              obscuringCharacter: '*',
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(
                      Icons.remove_red_eye,
                      color: Colors.black,
                    ),
                  ),
                  label: Text(
                    'Password',
                    style: TextStyle(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white),
            ),
          ),
          Text('GENDER'),
          Row(
            children: [
              Radio(
                  value: 'female',
                  groupValue: genter,
                  onChanged: (val) {
                    setState(() {
                      genter = val;
                    });
                  }),
              Text('Female'),
              Radio(
                value: 'male',
                groupValue: genter,
                onChanged: (val) {
                  setState(() {
                    genter = val;
                  });
                },
              ),
              Text('male'),
            ],
          ),

        ],
      ),
    );
  }
}