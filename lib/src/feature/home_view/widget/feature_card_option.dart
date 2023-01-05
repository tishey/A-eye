

import 'package:a_eye/src/share/res/styling.dart';
import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {

    final String img;
    final String label;
    final String desc;

   const FeatureCard({
     super.key,
     required this.img,
     required this.label,
     required this.desc
     });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const  EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            offset: const Offset(0,5),
            blurRadius: 20
          )
        ]
      ),
      child: ListTile(
        leading: Image.asset(img),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, 
            style: normalTextStyle(context).copyWith(fontWeight: FontWeight.bold),),
            Text(desc,
            style: normalTextStyle(context).copyWith(color: Colors.grey, fontSize: 12)),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16,),
      ),
    );
  }
}