import 'package:flutter/material.dart';
import 'colors.dart';
import 'chatspage.dart';
import 'statuspage.dart';
import 'package:camera/camera.dart';
import 'camerapage.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {

  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child:  Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        elevation: 0,
        title: Text('Whatsapp Clone'),
        backgroundColor: MainColor,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: IndicatorColor,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          tabs: [
              Tab(
                icon: Icon(Icons.camera_alt_rounded),
              ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
        ),
      ),
        body: TabBarView(
          children: [
            Center(
              child: CameraPage()

            ),
            Center(
              child: chats()
            ),
            Center(
              child: status()
            ),
            Center(
              child: Text(
                'calls page is working'
              ),
            ),

          ],
          ),
          floatingActionButton: FloatingActionButton.extended(
              onPressed: () {}, label: Icon(Icons.speaker_notes),
            backgroundColor: MainColor,
          ),
        ),
    );
  }
}


