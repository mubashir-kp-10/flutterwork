import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled2/list_model.dart';

class ListBuilder extends StatelessWidget {
  const ListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SizedBox(
          child: ListView.builder(
            itemCount: student.length,
            itemBuilder:(context,index){
              return Padding(
                padding: EdgeInsetsDirectional.all(9),
                child:ListTile(
                  leading: Icon(Icons.person),
                  title: Text(student[index]['name']),
                  subtitle: Text(student[index]['email'])
                ),
              );
            },
          )

      )
      ),

    );
  }
}
