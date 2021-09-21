part of 'pages.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_checkout.png'))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semibold),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semibold),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget detailStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                          image: AssetImage('assets/image_destination1.png'),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      margin: EdgeInsets.only(right: 1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          image: DecorationImage(
                              image: AssetImage('assets/icon_star.png'))),
                    ),
                    Text(
                      '4.8',
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Booking Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
            SizedBox(
              height: 10,
            ),
            BookingDetails(
              title: 'Traveler',
              valueText: '2 person',
              valueColor: kBlackColor,
            ),
            BookingDetails(
              title: 'Seat',
              valueText: 'A3, B3',
              valueColor: kBlackColor,
            ),
            BookingDetails(
              title: 'Insurance',
              valueText: 'YES',
              valueColor: kGreenColor,
            ),
            BookingDetails(
              title: 'Refundable',
              valueText: 'NO',
              valueColor: kRedColor,
            ),
            BookingDetails(
              title: 'VAT',
              valueText: '45%',
              valueColor: kBlackColor,
            ),
            BookingDetails(
              title: 'Price',
              valueText: 'IDR 8.500.690',
              valueColor: kBlackColor,
            ),
            BookingDetails(
              title: 'Grand Total',
              valueText: 'IDR 12.000.000',
              valueColor: kPrimaryColor,
            ),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 23),
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.95),
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        margin: EdgeInsets.only(right: 6),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_plane.png'))),
                      ),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('IDR 80.400.000',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Current Balance',
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget payButton() {
      return CustomButton(
        title: 'Pay Now',
        onPresed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SuccesCheckoutPage()));
        },
        margin: EdgeInsets.only(top: 30),
      );
    }

    Widget tac() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        child: TextButton(
            onPressed: () {},
            child: Text(
              'Terms and Conditions',
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
            )),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
            child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            header(),
            detailStatus(),
            paymentDetails(),
            payButton(),
            tac()
          ],
        )));
  }
}
