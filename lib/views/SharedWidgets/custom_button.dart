import 'package:bazzar/constant/color.dart';
import 'package:velocity_x/velocity_x.dart';

customButton({title, width, onTap}) {
  return "${title}"
      .text
      .white
      .size(18)
      .make()
      .centered()
      .box
      .color(greenColor)
      .height(50)
      .width(width)
      .roundedSM
      .make()
      .onTap(() {
    onTap();
  });
}
