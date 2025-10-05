//logo widgeti
import 'package:flutter/widgets.dart';

import '../../../gen/assets.gen.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    this.width = 136,
    this.height = 48,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Assets.images.logo.image(
      height: height,
    );
  }
}
