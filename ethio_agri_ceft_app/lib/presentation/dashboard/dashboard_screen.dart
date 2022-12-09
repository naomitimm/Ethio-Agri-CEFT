import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int myIndex = 0;

  List myPages = [
    const HomeScreen(),
    const WishlistScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: myPages[myIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 40.0,
          showUnselectedLabels: false,
          selectedItemColor: const Color.fromARGB(255, 0, 117, 94),
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
                  color: Color.fromARGB(255, 0, 117, 94),
                  size: 25,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.bagShopping,
                color: Color.fromARGB(255, 0, 117, 94),
                size: 25,
              ),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.userLarge,
                  color: Color.fromARGB(255, 0, 117, 94),
                  size: 25,
                ),
                label: "Profile"),
          ],
        ));
  }
}
