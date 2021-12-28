import 'package:flutter/material.dart';

class FlutterWhiteButton extends StatelessWidget {
  const FlutterWhiteButton(
      {Key? key,
      this.size = const Size(150, 150),
      this.radius = 5,
      this.distance = 6,
      this.blur = 20,
      this.spreadRadius = 0,
      this.lightLocation = LightLocation.topLeft,
      this.backgroundColor = const Color(0xffe0e0e0),
      this.whiteColor = Colors.white,
      this.blackColor = const Color(0xffbababa)})
      : super(key: key);
  final Size size;
  //圆角
  final double radius;
  //阴影距离
  final double distance;
  final double blur;
  final double spreadRadius;
  //灯光位置
  final LightLocation lightLocation;
  // border-radius: 95px;
  // background: #e0e0e0;
  // box-shadow:  28px 28px 56px #848484,
  // -28px -28px 56px #ffffff;

  final Color backgroundColor;
  final Color whiteColor;
  final Color blackColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        width: size.width,
        height: size.height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          color: backgroundColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: whiteColor.withOpacity(0.8),
                offset: lightLocation*distance,
                blurRadius: blur,
                spreadRadius: spreadRadius),
            BoxShadow(
              color: blackColor,
              offset: lightLocation*-distance,
              blurRadius: blur,
              spreadRadius: spreadRadius,
            ),
          ],
        ),
      ),
      alignment: Alignment.center,
    );
  }
}

///灯光位置
class LightLocation extends Offset{
  const LightLocation(this.dx, this.dy) : super(dx, dy);
  @override
  final double dx;
  @override
  final double dy;

  static const topLeft = LightLocation(-1,-1);
  static const topRight = LightLocation(1,-1);
  static const bottomLeft = LightLocation(-1,1);
  static const bottomRight = LightLocation(1,1);
}
