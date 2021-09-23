part of 'widgets.dart';

class CustomButtonNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;

  const CustomButtonNavigationItem(
      {Key? key, required this.imageUrl, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          //use state for conditions
          //what state (color) == index
          Image.asset(
            imageUrl,
            height: 24,
            width: 24,
            color: context.read<PageCubit>().state == index
                ? kPrimaryColor
                : kGreyColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
                //use state for conditions
                //what state == index
                color: context.read<PageCubit>().state == index
                    ? kPrimaryColor
                    : kTransaparentColor),
          )
        ],
      ),
    );
  }
}
