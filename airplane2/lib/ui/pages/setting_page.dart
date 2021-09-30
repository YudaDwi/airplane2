part of 'pages.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context)
              //eror disini dari authfailed
              .showSnackBar(SnackBar(
                  backgroundColor: kRedColor, content: Text(state.error)));
        } else if (state is AuthInitial) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-up', (route) => false);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return CircularProgressIndicator();
        }
        return Center(
          child: CustomButton(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              title: 'sign out',
              onPresed: () {
                context.read<AuthCubit>().signOut();
              }),
        );
      },
    );
  }
}
