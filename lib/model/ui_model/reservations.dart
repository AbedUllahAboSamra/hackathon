import 'package:flutter/material.dart';
class Reservations {
  final String name , data;
    final Widget?  reservation;

  bool isExpandeed;

  Reservations({
   required this.name,
   required this.data,
     this.reservation,
    this.isExpandeed = false,
  });
}
