import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  get _borderRadius => new BorderRadius.circular(50.0);

  get _heightRow => 50.0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: _heightRow,
        child: InkWell(
          borderRadius: _borderRadius,
          onTap: () {
            print('On tap row');
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(Icons.cake),
                ),
                Center(
                  child: Text(
                    "Testing",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.display1.copyWith(
                          color: Colors.grey,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
