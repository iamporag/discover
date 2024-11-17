import 'package:flutter/material.dart';

import '../../utils/assets_manager.dart';
import 'image_card.dart';

class BrowseAllImageArea extends StatelessWidget {
  const BrowseAllImageArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  ImageCardStyle(
                    height: 220,
                    imagePath: AssetsManager.IMAGE_2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ImageCardStyle(
                    height: 310,
                    imagePath: AssetsManager.IMAGE_4,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ImageCardStyle(
                    height: 220,
                    imagePath: AssetsManager.IMAGE_6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ImageCardStyle(
                    height: 310,
                    imagePath: AssetsManager.IMAGE_8,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ImageCardStyle(
                    height: 310,
                    imagePath: AssetsManager.IMAGE_10,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                children: [
                  ImageCardStyle(
                    height: 310,
                    imagePath: AssetsManager.IMAGE_3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ImageCardStyle(
                    height: 310,
                    imagePath: AssetsManager.IMAGE_5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ImageCardStyle(
                    height: 220,
                    imagePath: AssetsManager.IMAGE_7,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ImageCardStyle(
                    height: 310,
                    imagePath: AssetsManager.IMAGE_9,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ImageCardStyle(
                    height: 220,
                    imagePath: AssetsManager.IMAGE_11,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}