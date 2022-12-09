import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class LandingPageWave extends StatelessWidget {
  const LandingPageWave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: LandingClipper(),
      child: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(22, 84, 65, 1),
            height: size.height / 1.6,
            width: double.infinity,
          ),
          // Positioned(
          //     top: size.height / 8,
          //     left: size.width / 3,
          //     right: size.width / 3,
          //     child:
          //         const Image(image: AssetImage("assets/icons/coffee2.png"))
          //         ),
          Padding(
            padding: EdgeInsets.only(top: size.height / 3.5),
            child: const Align(
                alignment: Alignment.center,
                child: SizedBox(child: AppHeadline(color: Colors.white))),
          ),
        ],
      ),
    );
  }
}

class LandingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    //p0
    path.lineTo(0, height - 70);
    //controlling point, p1
    var firstControlling = Offset(width / 3, height + 70);
    // end point, p2
    var firstEnd = Offset(width / 1.4, height - 100.0);

    path.quadraticBezierTo(
        firstControlling.dx, firstControlling.dy, firstEnd.dx, firstEnd.dy);
    // p2 is the new starting point, you dont have to write it down
    var secondControlling = Offset(width - (width / 8.24), height - 165);
    // p4, new end

    var secondEnd = Offset(width, height - 110);
    path.quadraticBezierTo(
        secondControlling.dx, secondControlling.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
