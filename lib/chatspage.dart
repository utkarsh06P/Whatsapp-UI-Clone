import 'package:flutter/material.dart';
import 'colors.dart';
import 'chatTilefunction.dart';
class chats extends StatefulWidget {


  @override
  _chatsState createState() => _chatsState();
}

class _chatsState extends State<chats> {
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
            padding:  const EdgeInsets.symmetric(vertical: 18 , horizontal: 8),
            child: ListView(
              children: [
                chatTile("images/dp1.jpg" , "username1" , "msg1" , "9AM" , true),
                chatTile("images/dp2.jpg" , "username2" , "msg2" , "11AM" , false),
                chatTile("images/dp3.jpg" , "username3" , "msg3" , "Yesterday" , true),
                chatTile("images/dp4.jpg" , "username4" , "msg4" , "Yesterday" , true),
                chatTile("images/dp5.jpg" , "username5" , "msg5" , "Sun 20" , false),
                chatTile("images/dp6.jpg" , "username6" , "msg6" , "Fri 12" , false),
                chatTile("images/dp7.jpg" , "username7" , "msg7" , "Sat 11" , true),
                chatTile("images/dp8.jpg" , "username8" , "msg8" , "Sat 11" , false),

              ],
            ),
          ),
        ),
    );
  }
}

