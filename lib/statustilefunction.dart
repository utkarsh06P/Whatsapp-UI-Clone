import 'package:flutter/material.dart';


Widget statusTile(
    String imgurl, String userName,  String date, bool seen) {
  return Padding(
    padding: const EdgeInsets.all(0.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imgurl),
          radius: 28.0,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        userName,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(date),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            )),
      ],
    ),
  );
}
