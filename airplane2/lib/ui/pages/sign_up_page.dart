part of 'pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text('Join us and get\nyour next journey',
            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold)),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: defautlMargin),
        children: [title()],
      )),
    );
  }
}
