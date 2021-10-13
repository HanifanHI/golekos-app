import 'package:flutter/material.dart';
import 'package:golekos/pages/detail_page.dart';
import '/shared/theme.dart';

class MostPeopleTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String type;
  final int price;

  MostPeopleTile({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailPage();
            },
          ),
        );
      },
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        Text(
                          type,
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$$price',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        '/month',
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 2.0,
              color: Color(0xffF4F6FA),
            ),
          ],
        ),
      ),
    );
  }
}
