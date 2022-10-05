import 'package:flutter/widgets.dart';

class Dimensions {
  //default dimension size
  static const Size defaultSize = Size(360, 690);

  // class constructor
  static final Dimensions _instance = Dimensions._();

  late Size _uiSize;

  late Orientation _orientation;

  late double _screenWidth;
  late double _screenHeight;

  //instance of BuildContext
  BuildContext? _context;

  Dimensions._();

//returns an instance of class
  factory Dimensions() {
    return _instance;
  }

//get orientation of device
  Orientation get orientation => _orientation;

  double get screenWidth =>
      _context != null ? MediaQuery.of(_context!).size.width : _screenWidth;

  double get screenHeight =>
      _context != null ? MediaQuery.of(_context!).size.height : _screenHeight;

  double get scaleWidth => screenWidth / _uiSize.width;
  double get scaleHeight => screenHeight / _uiSize.height;

  //set a scale width
  double setWidth(num width) => width * scaleWidth;

  //set a scale width
  double setHeight(num height) => height * scaleHeight;

  //set a scale width
  // double radius(num r) => r * min(scaleWidth, scaleHeight);
}
