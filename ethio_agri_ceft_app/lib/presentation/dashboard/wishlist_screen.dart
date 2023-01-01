import 'package:ethio_agri_ceft_app/presentation/dashboard/widgets/cart/cart_product_widget.dart';
import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListView(children: [
        const PageHeadline(
          color: Colors.black,
          text: 'Cart',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            height: size.height / 1.33,
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: ((context, index) {
                  return CartProductCard(
                    dispatcher: () {},
                  );
                })),
          ),
        )
      ]),
    ));
  }
}
