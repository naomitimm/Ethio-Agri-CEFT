import 'package:ethio_agri_ceft_app/presentation/exports.dart';

void main() {
  runApp(const UnnamedApp());
}

class UnnamedApp extends StatelessWidget {
  const UnnamedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationCubit(),
        ),
      ],
      child: const UnnamedPages(),
    );
  }
}

class UnnamedPages extends StatelessWidget {
  const UnnamedPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return MaterialApp(
          home: Navigator(
            pages: [
              const MaterialPage(child: LandingScreen()),
              // const MaterialPage(child: DashboardScreen()),
              if (state is SignupRoute)
                const MaterialPage(child: SignupScreen()),
              if (state is LoginRoute) const MaterialPage(child: LoginScreen()),
              if (state is LandingRoute)
                const MaterialPage(child: LandingScreen()),
              if (state is DashboardRoute)
                const MaterialPage(child: DashboardScreen()),
            ],
            onPopPage: (route, result) => route.didPop(result),
          ),
        );
      },
    );
  }
}

class ErrorScreen extends StatelessWidget {
  final Exception? error;
  const ErrorScreen({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(error.toString()),
      )),
    );
  }
}
