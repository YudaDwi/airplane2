part of 'pages.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image_destination1.png'),
                fit: BoxFit.cover)),
      );
    }

    Widget customShadow() {
      return Container(
        height: 214,
        width: double.infinity,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
            //properti gradient
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            //logo
            Container(
              width: 108,
              height: 24,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_emblem.png'))),
            ),
            //text
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                              fontSize: 24, fontWeight: medium),
                        ),
                        Text(
                          'Tangerang',
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 1),
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_star.png'))),
                      ),
                      Text(
                        '4.8',
                        style: whiteTextStyle.copyWith(fontWeight: medium),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //about detail
            Container(
              //margin dgn atas ini
              margin: EdgeInsets.only(top: 30),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                  color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Berada di jalur jalan provinsi yang\nmenghubungkan Denpasar\nSingaraja serta letaknya yang dekat\ndengan Kebun Raya Eka Karya\nmenjadikan tempat Bali.',
                    style: blackTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      PhotosItem(
                        imageUrl: 'assets/image_photo1.png',
                      ),
                      PhotosItem(
                        imageUrl: 'assets/image_photo2.png',
                      ),
                      PhotosItem(
                        imageUrl: 'assets/image_photo3.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Interests',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ItemCheck(
                        title: 'Kids Park',
                      ),
                      ItemCheck(
                        title: 'Honor Bridge',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ItemCheck(
                        title: 'City Museum',
                      ),
                      ItemCheck(
                        title: 'Central Mall',
                      )
                    ],
                  ),
                ],
              ),
            ),
            //
            Container(
              margin: EdgeInsets.symmetric(vertical: 31),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 2.500.000',
                          style: blackTextStyle.copyWith(
                              fontSize: 18, fontWeight: medium),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'per orang',
                          style: greyTextStyle.copyWith(fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  CustomButton(
                    title: 'Book Now',
                    onPresed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseSeatPage()));
                    },
                    width: 170,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              backgroundImage(),
              customShadow(),
              content(),
            ],
          ),
        ));
  }
}
