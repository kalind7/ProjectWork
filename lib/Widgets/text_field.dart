import 'package:flutter/material.dart';
class TextFieldss extends StatelessWidget {
  const TextFieldss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              width: 5.0,
              color: Theme.of(context).primaryColor,
            ),
          ),
          contentPadding: EdgeInsets.all(20.0),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(Icons.search, size: 25.0, ),
          ),
          hintText: 'Search your Hotels.',
          hintStyle: TextStyle(fontStyle: FontStyle.italic),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(
              Icons.settings_input_composite,
              size: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
