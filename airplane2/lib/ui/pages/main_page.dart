part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //show active index
    Widget buildContent(int currentIndex) {
      //create switch for currentIndex

      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
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
                index: 0,
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_booking.png',
                index: 1,
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_card.png',
                index: 2,
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icon_settings.png',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    //set bloc builder
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: SafeArea(
            child: Stack(
              children: [
                //jadi pada main page itu semua harus dipanggil menggunakan widget dan harus sesuai urutan
                //in here we changed stete to current index
                buildContent(currentIndex),
                customButomNavigation(),
              ],
            ),
          ),
        );
      },
    );
  }
}
