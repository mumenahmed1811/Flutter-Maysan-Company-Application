import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppAssetsImage extends StatelessWidget {
  double height;
  double width;
  String dir;
  AppAssetsImage(this.height, this.width, this.dir);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(dir),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CircularBorderImage extends StatelessWidget {

  double height;
  double width;
  Color borderColor;
  double borderWidth;
  String dir;


  CircularBorderImage(this.height, this.width, this.borderColor, this.borderWidth,  this.dir);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xff7c94b6),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(dir),
          fit: BoxFit.cover,

        ),
        //borderRadius: BorderRadius.all( Radius.circular(50.0) ),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CircularUnborderImage extends StatelessWidget {

  double height;
  double width;
  String dir;


  CircularUnborderImage(this.height, this.width,  this.dir);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xff7c94b6),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(dir),
          fit: BoxFit.cover,

        ),
        //borderRadius: BorderRadius.all( Radius.circular(50.0) ),
      ),
    );
  }
}

// ignore: must_be_immutable
class RoundedUnborderedImage extends StatelessWidget {

  double height;
  double width;
  double borderRadius;
  String dir;


  RoundedUnborderedImage(this.height, this.width, this.borderRadius, this.dir);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(dir),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all( Radius.circular(borderRadius) ),
      ),
    );
  }
}
