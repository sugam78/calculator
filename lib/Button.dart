import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  const Button({Key? key,this.title = ' ', this.color = const Color(0xffa5a5a5),required this.onpressed}) : super(key: key);
final String title;
final Color color;
final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onpressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(child: Text(title,style: const TextStyle(color: Colors.white,fontSize: 25),)),
          ),
        ),
      ),
    );
  }
}
