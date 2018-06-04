
import 'package:ex_03_category_route/unit.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ConverterRoute extends StatefulWidget {
  /// Units for this [Category].
  final List<Unit> units;
  /// This [ConverterRoute] requires the name, color, and units to not be null.
  // TODO: Pass in the [Category]'s name and color
  const ConverterRoute({
    @required this.units,
  }) : assert(units != null);

  @override
  State<StatefulWidget> createState() => _MyConverterRouteState();
}
class _MyConverterRouteState extends State<ConverterRoute>{

  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    final unitWidgets = widget.units.map((Unit unit) {
      // TODO: Set the color for this Container
      return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}