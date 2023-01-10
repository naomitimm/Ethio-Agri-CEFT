import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class HomeRowText extends StatelessWidget {
  const HomeRowText({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Popular",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                )),
            SizedBox(
              width: size.width / 5,
            ),
            Text("Discount",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 110, 110, 110),
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }
}
