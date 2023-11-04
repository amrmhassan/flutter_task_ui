import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';
import 'package:ui_task/constants/constants.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VSpace(factor: .5),
        Row(
          children: [
            Text(
              'Categories View',
              style: h3TextStyle,
            ),
            const Spacer(),
            Text(
              'See all',
              style: h4TextStyleInactive.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        const VSpace(factor: .5),
        Expanded(
            child: ListView.builder(
          padding: const EdgeInsets.symmetric(
            vertical: kVPad / 2,
            horizontal: kVPad / 2,
          ),
          itemCount: CategoriesList.models.length,
          itemBuilder: (context, index) {
            var model = CategoriesList.models[index];
            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kHPad / 2,
                vertical: kVPad / 3,
              ),
              margin: const EdgeInsets.only(bottom: kVPad / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(mediumBorderRadius),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1, 2),
                    color: Colors.grey.withOpacity(.1),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/categories/${model.iconName}.png',
                        width: largeIconSize,
                      ),
                      const HSpace(factor: .5),
                      Text(
                        model.title,
                        style: h3TextStyle.copyWith(),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ))
      ],
    );
  }
}
