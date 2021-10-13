import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golekos/cubit/page_cubit.dart';
import '/shared/theme.dart';

class CustomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String title;

  CustomNavigationItem({
    required this.index,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var pageCubit = context.read<PageCubit>();
    return GestureDetector(
      onTap: () {
        pageCubit.setPage(index);
      },
      child: pageCubit.state == index
          ? Container(
              width: 110,
              height: 42,
              padding: EdgeInsets.symmetric(
                vertical: 9,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: kLightBLueColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imageUrl,
                    width: 24,
                    height: 24,
                    color: kBlueColor,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: blueTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            )
          : Image.asset(
              imageUrl,
              width: 24,
              height: 24,
              color: kGreyColor,
              fit: BoxFit.cover,
            ),
    );
  }
}
