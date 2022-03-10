import 'package:flutter/material.dart';

extension Media on BuildContext {
  MediaQueryData get media {
    return MediaQuery.of(this);
  }

  bool get isTabletSize {
    return media.size.shortestSide >= 768;
  }
}
