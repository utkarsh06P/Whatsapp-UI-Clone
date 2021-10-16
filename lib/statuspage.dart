import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'statustilefunction.dart';
class status extends StatefulWidget {


  @override
  _statusState createState() => _statusState();
}

class _statusState extends State<status> {
  var containerRadius = Radius.circular(40);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: containerRadius , topLeft: containerRadius
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18 , horizontal: 8),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/dp1.jpg'),
                      radius: 28,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                             Text('My status',
                               style: TextStyle(
                                 fontWeight: FontWeight.w500,
                                 fontSize: 20,
                                 color: Colors.black
                               ),
                             ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Tap to add status update',style: TextStyle(
                            fontSize: 12 , color: Colors.black54
                          ),)
                        ],
                        ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Recent updates' ,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                statusTile('images/dp1.jpg', "userName1", "Today 14:16", true),
              ],
            ),
          ),
        ),
    );
  }
}
