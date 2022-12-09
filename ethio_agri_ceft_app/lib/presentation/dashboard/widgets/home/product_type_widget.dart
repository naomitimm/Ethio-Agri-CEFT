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
        decoration: BoxDecoration(
            color: const Color.fromRGBO(178, 143, 61, 1).withOpacity(0.7),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
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
