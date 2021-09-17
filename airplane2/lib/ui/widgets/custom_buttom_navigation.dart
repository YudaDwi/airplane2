part of 'widgets.dart';

class CustomButtonNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  const CustomButtonNavigationItem(
      {Key? key, required this.imageUrl, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageUrl))),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : kTransaparentColor),
        )
      ],
    );
  }
}
