import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golekos/widgets/custom_navigation_item.dart';
import '/cubit/page_cubit.dart';
import '/shared/theme.dart';

import 'nation_page.dart';
import 'user_page.dart';
import 'like_page.dart';
import 'home_page.dart';
import 'filter_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * BUILD CONTENT
    Widget buildContent(int currentIndex) {
      // * PENGKONDISIAN
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return LikePage();
        case 2:
          return FilterPage();
        case 3:
          return NationPage();
        case 4:
          return UserPage();
        default:
          return HomePage();
      }
    }

    // * CUSTOME NAVIGATION
    Widget customNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 94,
          color: kWhiteColor,
          padding: EdgeInsets.all(22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomNavigationItem(
                index: 0,
                imageUrl: 'assets/item-home.png',
                title: 'HOME',
              ),
              CustomNavigationItem(
                index: 1,
                imageUrl: 'assets/item-love.png',
                title: 'LIKE',
              ),
              CustomNavigationItem(
                index: 2,
                imageUrl: 'assets/item-filter.png',
                title: 'FILTER',
              ),
              CustomNavigationItem(
                index: 3,
                imageUrl: 'assets/item-language.png',
                title: 'NATION',
              ),
              CustomNavigationItem(
                index: 4,
                imageUrl: 'assets/item-user.png',
                title: 'USER',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, index) {
        return Scaffold(
          body: Stack(
            children: [
              buildContent(index),
              customNavigation(),
            ],
          ),
        );
      },
    );
  }
}
