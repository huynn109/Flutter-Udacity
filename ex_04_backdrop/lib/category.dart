import 'package:ex_04_backdrop/unit.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Category {
  final String name;
  final ColorSwatch color;
  final List<Unit> units;
  final String iconLocation;

  const Category(
      {@required this.name,
      @required this.color,
      @required this.units,
      @required this.iconLocation})
      : assert(name != null),
        assert(color != null),
        assert(units != null),
        assert(iconLocation != null);
}
