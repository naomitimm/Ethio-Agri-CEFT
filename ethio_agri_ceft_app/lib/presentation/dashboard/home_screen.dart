import 'package:ethio_agri_ceft_app/domain/product/product_model.dart';
import 'package:ethio_agri_ceft_app/presentation/dashboard/widgets/home/product_type_widget.dart';
import 'package:ethio_agri_ceft_app/presentation/dashboard/widgets/home/search_widget.dart';
import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            const AppHeadline(color: Colors.black),
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
            )
          ],
        ),
      ),
    );
  }
}
