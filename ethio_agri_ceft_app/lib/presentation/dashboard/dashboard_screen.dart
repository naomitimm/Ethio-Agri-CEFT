import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int myIndex = 0;

  List myPages = [const HomeScreen(), const WishlistScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: myPages[myIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 40.0,
          showUnselectedLabels: false,
          selectedItemColor: const Color.fromRGBO(45, 125, 188, 1),
          selectedLabelStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(fontWeight: FontWeight.w700),
          ),
          currentIndex: myIndex,
          onTap: (int index) {
            setState(() {
              myIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.house,
                  color: Color.fromRGBO(45, 125, 188, 1),
                  size: 25,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.bagShopping,
                color: Color.fromRGBO(45, 125, 188, 1),
                size: 25,
              ),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.userLarge,
                  color: Color.fromRGBO(45, 125, 188, 1),
                  size: 25,
                ),
                label: "Profile"),
          ],
        ));
  }
}
