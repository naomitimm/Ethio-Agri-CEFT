import 'package:ethio_agri_ceft_app/domain/product/product_model.dart';
import 'package:ethio_agri_ceft_app/presentation/dashboard/widgets/home/product_type_widget.dart';
import 'package:ethio_agri_ceft_app/presentation/dashboard/widgets/home/search_widget.dart';
import 'package:ethio_agri_ceft_app/presentation/dashboard/widgets/home/text_widgets.dart';
import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            const PageHeadline(
              color: Colors.black,
              text: 'Home',
            ),
            const MySearchBar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Product.productType.length,
                    itemBuilder: ((context, index) {
                      return ProductTypeCard(
                        name: Product.productType[index].productName,
                        imageUrl: Product.productType[index].imageUrl,
                      );
                    })),
              ),
            ),
            const HomeRowText(),
            SizedBox(
              height: size.height / 1.8,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: Product.products.length,
                  itemBuilder: ((context, index) {
                    return ProductCard(
                      price: Product.products[index].price!,
                      imageUrl: Product.products[index].imageUrl,
                      name: Product.products[index].productName,
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
