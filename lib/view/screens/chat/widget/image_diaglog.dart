import 'package:flutter/material.dart';
import 'package:sixvalley_delivery_boy/utill/dimensions.dart';
import 'package:sixvalley_delivery_boy/view/base/custom_image.dart';


class ImageDialog extends StatelessWidget {
  final String imageUrl;
  const ImageDialog({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
          Stack(children: [
              CustomImage(image: imageUrl, fit: BoxFit.contain,),
              Align(alignment: Alignment.centerRight,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
