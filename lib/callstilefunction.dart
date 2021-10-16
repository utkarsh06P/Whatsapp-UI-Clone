import 'package:flutter/material.dart';

Widget callsTile(String imgurl, String userName,  String date, bool call)
{
  return Padding(padding: const EdgeInsets.all(12),
   child: Row(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       CircleAvatar(
        backgroundImage: AssetImage('imgurl'),
         radius: 28,
       ),
       SizedBox(
         width: 8,
       ),
       Expanded(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,

         ),
       ),
     ],
   ),
  );
}
