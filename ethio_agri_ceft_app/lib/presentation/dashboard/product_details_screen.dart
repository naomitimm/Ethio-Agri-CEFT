import 'package:ethio_agri_ceft_app/presentation/dashboard/widgets/details_widgets.dart';
import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final navCubit = context.read<NavigationCubit>();

    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 244, 248, 1),
      body: SafeArea(
          child: ListView(children: [
        Stack(
          children: [
            SizedBox(
              height: size.height / 2,
            ),
            Container(
              height: size.height / 2.2,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(product.imageUrl), fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: size.height / 2.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                  ),
                  Positioned(
                    top: size.height / 90,
                    left: size.width / 90,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: .3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.chevronLeft,
                            color: Colors.white,
                            size: 25,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: StatisticsCard(
                    title: product.productName,
                    price: product.price.toString(),
                    rating: product.rating,
                  )),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DetailsProductHeadline2(title: "Description"),
              const DetailsSmallText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
              Text(
                product.description,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const DetailsProductHeadline2(title: "Ingridients"),
              const DetailsSmallText(
                  text: "Lorem ipsum dolor sit amet, lla pariatur."),
              Center(
                  child: BlocConsumer<WishlistBloc, WishlistState>(
                listener: (context, state) {
                  if (state is WishlistLoadingSuccessful) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          backgroundColor: const Color.fromRGBO(255, 114, 76, 1)
                              .withOpacity(0.5),
                          content: const Text("Added to wishlist")),
                    );
                  }
                },
                builder: (context, state) {
                  return AddtoWishlistCard(
                    dispatcher: () {
                      context
                          .read<WishlistBloc>()
                          .add(AddToWishlist(product: product));
                    },
                  );
                },
              ))
            ],
          ),
        ),
      ])),
    );
  }
}
