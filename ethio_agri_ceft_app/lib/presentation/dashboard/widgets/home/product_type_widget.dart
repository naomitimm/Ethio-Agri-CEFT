import 'package:ethio_agri_ceft_app/domain/product/product_model.dart';
import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class ProductTypeCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  const ProductTypeCard(
      {super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromRGBO(178, 143, 61, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imageUrl)),
              ),
            ),
            Text(name,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ))
          ]),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double price;
  const ProductCard(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromRGBO(143, 169, 159, 1),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(36, 88, 64, 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )),
                  Text("ETB ${price.toString()}",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
