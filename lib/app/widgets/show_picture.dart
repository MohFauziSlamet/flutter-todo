import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

Widget showPicture(String path, double? imageSize, {Color? imageColor, BoxFit? fit}) {
  if (path.contains('.json')) {
    return Lottie.asset(
      path,
      fit: BoxFit.cover,
    );
  } else if (path.contains('http')) {
    return Image.network(
      path,
      height: imageSize ?? 150.w,
      fit: BoxFit.cover,
    );
  } else if (path.contains('.png') || path.contains('.jpg')) {
    return Image.asset(
      path,
      height: imageSize ?? 150.w,
      fit: fit ?? BoxFit.fitHeight,
      color: imageColor,
    );
  }

  return const SizedBox.shrink();
}
