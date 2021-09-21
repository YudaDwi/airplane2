part of 'pages.dart';

class SuccesCheckoutPage extends StatelessWidget {
  const SuccesCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget calenderImage() {
      return Container(
        width: 300,
        height: 150,
        margin: EdgeInsets.symmetric(horizontal: 36),
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/image_success.png'))),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text('Well Booked 😍',
                style: blackTextStyle.copyWith(
                    fontSize: 32, fontWeight: semibold)),
            SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget bookingButton() {
      return CustomButton(
        title: 'My Booking',
        onPresed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        },
        margin: EdgeInsets.only(top: 50, right: 77, left: 77),
      );
    }

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [calenderImage(), subtitle(), bookingButton()],
      )),
    );
  }
}
