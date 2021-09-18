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

    Widget inputSection() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            CustomTextFormField(title: 'Full Name', hintText: 'Your Full Name'),
            CustomTextFormField(
                title: 'Email Address', hintText: 'Your Email Address'),
            CustomTextFormField(
              title: 'Password',
              hintText: 'Your Password',
              obsecureText: true,
            ),
            CustomTextFormField(title: 'Hobby', hintText: 'Your Hobby'),
            CustomButton(
              title: 'Get Started',
              onPresed: () {
                Navigator.pushNamed(context, '/bonus');
              },
              margin: EdgeInsets.only(top: 10),
            )
          ],
        ),
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
        children: [title(), inputSection(), tac()],
      )),
    );
  }
}
