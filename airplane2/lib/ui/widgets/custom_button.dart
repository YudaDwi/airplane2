part of 'widgets.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final EdgeInsets margin;
  final double width;
  final Function() onPresed;

  const CustomButton(
      {Key? key,
      required this.title,
      this.margin = EdgeInsets.zero,
      this.width = double.infinity,
      required this.onPresed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 55,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius))),
          onPressed: onPresed,
          child: Text(
            title,
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          )),
    );
  }
}
