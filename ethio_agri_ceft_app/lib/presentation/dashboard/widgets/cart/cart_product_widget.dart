import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class CartProductCArd extends StatelessWidget {
  const CartProductCArd({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: SizedBox(
        width: double.infinity,
        height: size.height / 6,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width / 2.5,
              height: size.height / 6,
              decoration: const BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20))),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Name",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )),
                Text("Price",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.plus,
                      size: 20,
                    )),
                Text("1",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.minus,
                      size: 20,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
