import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 244, 248, 1),
      body: ListView(
        children: [
          const LandingPageWave(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const AppHeadline(
                //   color: Color.fromRGBO(45, 125, 188, 1),
                // ),
                // const IntroText(
                //     color: Color.fromRGBO(45, 125, 188, 1),
                //     text: "Lorem ipsum hhhhhhhhhhhhhhhhhhhh"),
                SizedBox(
                  height: size.height / 10,
                ),
                ButtonWithArrow(
                  text: "New Account",
                  color: const Color.fromRGBO(255, 114, 76, 1),
                  dispatcher: () {
                    navCubit.toSignupScreen();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                LinkText(
                  color: const Color.fromRGBO(255, 114, 76, 1),
                  text: "Login",
                  navigator: () {
                    navCubit.toLoginScreen();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
