import 'package:ethio_agri_ceft_app/presentation/exports.dart';

List colors = const [
  Color.fromRGBO(178, 143, 61, 1),
  Color.fromRGBO(36, 88, 64, 1),
  Color.fromRGBO(248, 248, 245, 1),
  Color.fromRGBO(143, 169, 159, 1),
  Color.fromRGBO(22, 84, 65, 1),
];

class AppHeadline extends StatelessWidget {
  final Color color;
  const AppHeadline({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Blank",
        style: GoogleFonts.rancho(
          textStyle: TextStyle(
              color: color, fontSize: 50, fontWeight: FontWeight.w800),
        ));
  }
}

class IntroText extends StatelessWidget {
  final Color color;
  final String text;
  const IntroText({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: color,
            fontSize: 15,
          ),
        ));
  }
}

class LinkText extends StatelessWidget {
  final Color color;
  final String text;
  final void Function() navigator;
  const LinkText(
      {Key? key,
      required this.color,
      required this.text,
      required this.navigator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigator();
      },
      child: Text(text,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                color: color, fontSize: 16, fontWeight: FontWeight.w500),
          )),
    );
  }
}

class GreyText extends StatelessWidget {
  final String text;

  const GreyText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),
        ));
  }
}
