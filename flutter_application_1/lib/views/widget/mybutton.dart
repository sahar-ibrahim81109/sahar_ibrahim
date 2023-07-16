import 'package:flutter/material.dart';

class mybutton extends StatefulWidget {
 final String label;
 const mybutton({super.key,required this.label});

  @override
  State<mybutton> createState() => _mybuttonState();
}

class _mybuttonState extends State<mybutton> {
  @override
  Widget build(BuildContext context) {
    return    Container(
            height: 45,width: 150,
            decoration: BoxDecoration(
              color: Colors.purple[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child:Text(widget.label)),
          );
            }
}