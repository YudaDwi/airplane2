part of 'pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      //buat objek user saat ini

      User? user = FirebaseAuth.instance.currentUser;
      //TODO if user saat ini null maka akan diarahkan ke getstartedpage
      //kalau tidak langsung navigator pushnameremoveuntil
      if (user == null) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/get-started', (route) => false);
      } else {
        print(user.email);
        Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //img
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png'))),
            ),
            Text(
              'AIRPLANE',
              style: whiteTextStyle.copyWith(
                  //untuk mencari rumus letter spacing
                  //font saat ini dikali letter spacing figma dibagi 100
                  fontSize: 32,
                  fontWeight: medium,
                  letterSpacing: 10),
            )
          ],
        ),
      ),
    );
  }
}
