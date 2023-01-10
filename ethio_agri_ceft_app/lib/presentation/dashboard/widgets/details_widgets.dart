import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class StatisticsCard extends StatelessWidget {
  final String title;
  final String price;
  final double rating;
  const StatisticsCard(
      {super.key,
      required this.title,
      required this.price,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 11,
      width: size.width / 1.09,
      decoration: BoxDecoration(
        border:
            Border.all(color: const Color.fromRGBO(42, 44, 65, 1), width: .1),
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DetailsProductHeadline1(title: title),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 30,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/price.png"))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "$price ETB",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(255, 114, 76, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 26,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/star.png"))),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(rating.toString(),
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(255, 114, 76, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 38,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/stock.png"))),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("In stock",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(255, 114, 76, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsProductHeadline1 extends StatelessWidget {
  final String title;
  const DetailsProductHeadline1({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
              color: Color.fromRGBO(42, 44, 65, 1),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ));
  }
}

class DetailsProductHeadline2 extends StatelessWidget {
  final String title;
  const DetailsProductHeadline2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
              color: Color.fromRGBO(255, 114, 76, 1),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ));
  }
}

class DetailsSmallText extends StatelessWidget {
  final String text;
  const DetailsSmallText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Text(text,
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                color: Color.fromRGBO(42, 44, 65, 1),
                fontSize: 13,
                fontWeight: FontWeight.w400),
          )),
    );
  }
}

class AddtoWishlistCard extends StatelessWidget {
  final void Function() dispatcher;
  const AddtoWishlistCard({super.key, required this.dispatcher});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: GestureDetector(
        onTap: dispatcher,
        child: Container(
          height: 50,
          width: size.width / 1.5,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(42, 44, 65, 1),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FaIcon(
                FontAwesomeIcons.bagShopping,
                color: Color.fromRGBO(255, 114, 76, 1),
                size: 22,
              ),
              const SizedBox(
                width: 10,
              ),
              Text("Add To Wishlist",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(255, 114, 76, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
