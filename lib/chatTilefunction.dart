import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget chatTile(
    String imgurl, String userName, String msg, String date, bool seen) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
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
            Row(
              children: [
                Expanded(child: Text(userName)),
                if (seen)
                  Icon(
                    Icons.check_circle,
                    size: 16.0,
                    color: Colors.green,
                  ),
                if (!seen)
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.grey,
                    size: 18,
                  ),
              ],
            ),
          ],
        )),
      ],
    ),
  );
}
