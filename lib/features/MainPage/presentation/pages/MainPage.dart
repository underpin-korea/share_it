import 'package:flutter/material.dart';
import 'package:shareit/features/MainPage/presentation/widgets/dialog/video_dialog.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () => showDialog(
          context: context,
          builder: (BuildContext context) => VideoDialog(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.apps),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.blue,
      ),
    );
  }
}
