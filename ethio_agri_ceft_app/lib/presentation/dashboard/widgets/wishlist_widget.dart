import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class CartProductCard extends StatelessWidget {
  final void Function() dispatcher;
  final void Function() remover;
  final Product product;
  const CartProductCard(
      {super.key,
      required this.dispatcher,
      required this.remover,
      required this.product});

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
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(product.imageUrl), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20))),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(product.productName,
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )),
                Text(product.price.toString(),
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ))
              ],
            ),
            GestureDetector(
              onTap: remover,
              child: Container(
                height: size.height,
                width: 35,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 114, 76, 1),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: const Center(child: FaIcon(FontAwesomeIcons.x)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NoProducts extends StatelessWidget {
  const NoProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 244, 248, 1),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListView(children: [
            const PageHeadline(
              color: Color.fromRGBO(42, 44, 65, 1),
              text: 'Wishlist',
            ),
            Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/empty_cart.png'),
                        fit: BoxFit.cover))),
          ]),
        )));
  }
}
