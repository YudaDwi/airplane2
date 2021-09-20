part of 'widgets.dart';

class SeatItem extends StatelessWidget {
  final int status;
  const SeatItem({Key? key, required this.status}) : super(key: key);

  backgroundColor() {
    switch (status) {
      case 0:
        return unAvailableColor;
      case 1:
        return kPrimaryColor;
      case 2:
        return unAvailableColor;
      default:
        return unAvailableColor;
    }
  }

  borderColor() {
    switch (status) {
      case 0:
        return kPrimaryColor;
      case 1:
        return kPrimaryColor;
      case 2:
        return unAvailableColor;
      default:
        return kPrimaryColor;
    }
  }

  textStatus() {
    switch (status) {
      case 0:
        return Text('');
      case 1:
        return Center(
          child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(fontWeight: medium),
          ),
        );
      case 2:
        return Text('');
      default:
        return Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor(),
          border: Border.all(width: 2, color: borderColor())),
      child: textStatus(),
    );
  }
}
