import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    return Scaffold(
      body: ListView(
        children: [
          const LandingPageWave(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppHeadline(color: Colors.black),
                const IntroText(
                    color: Colors.black,
                    text: "Lorem ipsum hhhhhhhhhhhhhhhhhhhh"),
                const SizedBox(
                  height: 20,
                ),
                ButtonWithArrow(
                  text: "New Account",
                  color: Colors.white,
                  dispatcher: () {
                    navCubit.toSignupScreen();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                LinkText(
                  color: const Color.fromRGBO(22, 84, 65, 1),
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
