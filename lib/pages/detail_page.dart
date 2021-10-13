import 'package:flutter/material.dart';
import '/shared/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * BACK GROUND
    Widget backgroundImage() {
      return Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image3.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    // * CONTENT
    Widget content() {
      return Container(
        width: double.infinity,
        child: Column(
          children: [
            // * NAV
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 22),
              margin: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // * LEFT
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/icon-left.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // * LOVE
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon-love.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // * INDICATOR
            Container(
              margin: EdgeInsets.only(top: 216),
              width: 80,
              height: 14,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: Color(0xffFDFEFF),
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                        color: kWhiteColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                        color: kWhiteColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                        color: kWhiteColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                        color: kWhiteColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // * DESCRIPTION
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(
                top: 22,
                left: 22,
                right: 22,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(28),
                  topLeft: Radius.circular(28),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // * SECTION 1
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Blue Fast',
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: semiBold,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Umum',
                                style: greyTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: regular,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              color: kYellowColor,
                              size: 22,
                            ),
                            Icon(
                              Icons.star,
                              color: kYellowColor,
                              size: 22,
                            ),
                            Icon(
                              Icons.star,
                              color: kYellowColor,
                              size: 22,
                            ),
                            Icon(
                              Icons.star,
                              color: kYellowColor,
                              size: 22,
                            ),
                            Icon(
                              Icons.star,
                              color: kGreyColor,
                              size: 22,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // * SECTION 2
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Room Specs',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/room-double-bed.png',
                                        width: 28,
                                        height: 28,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '3',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 20,
                                          fontWeight: medium,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Master Bed',
                                    style: greyTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/room-bath.png',
                                        width: 28,
                                        height: 28,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '2',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 20,
                                          fontWeight: medium,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Bathrooms',
                                    style: greyTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/room-bar-counter.png',
                                        width: 28,
                                        height: 28,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '1',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 20,
                                          fontWeight: medium,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Kitchen',
                                    style: greyTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // * SECTION 3
                  Text(
                    'Happy Tenant',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage('assets/user2.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Masayoshi',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: medium,
                                    ),
                                  ),
                                  Text(
                                    'Cozy for Freelancer',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: light,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '5/5',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: medium,
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Icon(
                                  Icons.star,
                                  color: kYellowColor,
                                  size: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage('assets/user3.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aken Tell',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: medium,
                                    ),
                                  ),
                                  Text(
                                    'Feels like at home',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: light,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '4/5',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: medium,
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Icon(
                                  Icons.star,
                                  color: kYellowColor,
                                  size: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            // * BUTTON
            Container(
              margin: EdgeInsets.only(top: 44),
              width: double.infinity,
              height: 94,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$1,355',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: medium,
                          ),
                        ),
                        Text(
                          '/month',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 250,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'BOOKING NOW',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          backgroundImage(),
          content(),
        ],
      ),
    ));
  }
}
