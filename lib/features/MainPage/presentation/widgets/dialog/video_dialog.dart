import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shareit/features/MainPage/presentation/widgets/dialog/dialogItemWidget.dart';

class VideoDialog extends StatelessWidget {
  const VideoDialog({Key key}) : super(key: key);

  Future getVideo() async {
    File video = await ImagePicker.pickVideo(source: ImageSource.gallery);
    print(video.uri);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              DialogItemWidget(
                leading: Icon(
                  Icons.cloud_queue,
                  color: Colors.black,
                ),
                title: Text("Live stream"),
                onTap: () {},
              ),
              DialogItemWidget(
                leading: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                title: Text("Add video"),
                onTap: getVideo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
