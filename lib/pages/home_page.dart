import 'package:flutter/material.dart';
import 'package:golekos/shared/theme.dart';
import 'package:golekos/widgets/most_people_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * NAVBAR
    Widget navbar() {
      return Container(
        width: double.infinity,
        height: 72,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 24,
              height: 24,
              margin: EdgeInsets.only(right: 20, top: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon-menu.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: regular,
                    ),
                  ),
                  Text(
                    'Shayna Far',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 55,
              height: 55,
              margin: EdgeInsets.only(top: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage('assets/user1.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            )
          ],
        ),
      );
    }

    // * SEARCH
    Widget search() {
      return Container(
        width: double.infinity,
        height: 55,
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: TextFormField(
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Find your next home',
              hintStyle: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              suffixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.all(16),
            ),
          ),
        ),
      );
    }

    // * TIPS
    Widget tips() {
      return Container(
        width: double.infinity,
        height: 90,
        margin: EdgeInsets.only(top: 33),
        padding: EdgeInsets.only(
          left: 16,
          top: 15,
          bottom: 15,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/box.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon-payment.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Payment Safety',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Kindly only use our official card',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    // * MOST PEOPLE
    Widget mostPeople() {
      return Container(
        margin: EdgeInsets.only(top: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Most People Go',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: kWhiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MostPeopleTile(
                    imageUrl: 'assets/image2.png',
                    name: 'Fukko Cozy',
                    type: 'Wanita',
                    price: 55,
                  ),
                  MostPeopleTile(
                    imageUrl: 'assets/image3.png',
                    name: 'Blue Fast',
                    type: 'Umum',
                    price: 21,
                  ),
                  MostPeopleTile(
                    imageUrl: 'assets/image4.png',
                    name: 'Jamaixa IIX',
                    type: 'Pria',
                    price: 49,
                  ),
                  MostPeopleTile(
                    imageUrl: 'assets/image5.png',
                    name: 'Yaka Past',
                    type: 'Wanita',
                    price: 82,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 30,
          ),
          children: [
            navbar(),
            search(),
            tips(),
            mostPeople(),
          ],
        ),
      ),
    );
  }
}
