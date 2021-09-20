part of 'pages.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget status() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Row(
          children: [
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_available.png'))),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_selected.png'))),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_unavailable.png'))),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget indicator() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            //seat
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            //seat 1
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 2),
                SeatItem(status: 2),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '1',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(status: 0),
                SeatItem(status: 2),
              ],
            ),
            //seat 2
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 0),
                SeatItem(status: 0),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '2',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(status: 0),
                SeatItem(status: 2),
              ],
            ),
            //seat 3
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 1),
                SeatItem(status: 1),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '3',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(status: 0),
                SeatItem(status: 0),
              ],
            ),
            //seat 4
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 0),
                SeatItem(status: 2),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '4',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(status: 0),
                SeatItem(status: 0),
              ],
            ),
            //seat 5
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 0),
                SeatItem(status: 0),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '5',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(status: 2),
                SeatItem(status: 0),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your seat',
                  style: greyTextStyle.copyWith(fontWeight: light),
                ),
                Text(
                  'A3, B3',
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Total',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ),
                Text(
                  'IDR 540.000.000',
                  style: purpleTextStyle.copyWith(
                      fontWeight: semibold, fontSize: 16),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget continueButton() {
      return CustomButton(
        title: 'Continue to Checkout',
        onPresed: () {},
        margin: EdgeInsets.symmetric(vertical: 30),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), status(), indicator(), continueButton()],
        ),
      ),
    );
  }
}
