import 'package:flutter/material.dart';

class DialogItemWidget extends StatelessWidget {
  final Text title;
  final Icon leading;
  final Function onTap;

  const DialogItemWidget({Key key, this.title, this.leading, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: child(),
      onTap: onTap,
    );
  }

  Container child() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
      margin: EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            child: leading,
          ),
          title,
        ],
      ),
    );
  }
}
