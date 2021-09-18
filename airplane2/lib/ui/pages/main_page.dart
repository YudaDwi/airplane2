part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customButomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
              left: defaultMargin, right: defaultMargin, bottom: 30),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: kWhiteColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomButtonNavigationItem(imageUrl: 'assets/icon_booking.png'),
              CustomButtonNavigationItem(imageUrl: 'assets/icon_card.png'),
              CustomButtonNavigationItem(imageUrl: 'assets/icon_settings.png'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            //jadi pada main page itu semua harus dipanggil menggunakan widget dan harus sesuai urutan
            buildContent(),
            customButomNavigation(),
          ],
        ),
      ),
    );
  }
}
