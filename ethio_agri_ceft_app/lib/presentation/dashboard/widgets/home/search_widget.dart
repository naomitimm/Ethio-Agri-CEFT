import 'package:ethio_agri_ceft_app/presentation/exports.dart';
import 'package:flutter/cupertino.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: CupertinoSearchTextField(
        itemColor: const Color.fromRGBO(178, 143, 61, 1),
        placeholderStyle: const TextStyle(
          color: Color.fromARGB(255, 158, 158, 158),
        ),
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color.fromRGBO(178, 143, 61, 1).withOpacity(0.1),
      ),
    );
  }
}
