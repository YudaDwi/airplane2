part of 'pages.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController hobbyController = TextEditingController();
  // const SignUpPage({Key? key}) : super(key: key);

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
      Widget nameInput() {
        return CustomTextFormField(
          title: 'Full Name',
          hintText: 'Your Full Name',
          controller: nameController,
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your Email Address',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Your Password',
          obsecureText: true,
          controller: passwordController,
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          title: 'Hobby',
          hintText: 'Your Hobby',
          controller: hobbyController,
        );
      }

      Widget submitButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSucces) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bonus', (route) => false);
            } else if (state is AuthFailed) {
              //baru ngerti bawaan snackbar dari flutter aslinya
              ScaffoldMessenger.of(context)
                  //eror disini dari authfailed
                  .showSnackBar(SnackBar(
                      backgroundColor: kRedColor, content: Text(state.error)));
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return CircularProgressIndicator();
            }
            return CustomButton(
              title: 'Get Started',
              onPresed: () {
                //pengecekan
                context.read<AuthCubit>().signUp(
                    //jadi memang pasangan controller ini .text bukan tostring()
                    name: nameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                    hobby: hobbyController.text);
              },
              margin: EdgeInsets.only(top: 10),
            );
          },
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton()
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
