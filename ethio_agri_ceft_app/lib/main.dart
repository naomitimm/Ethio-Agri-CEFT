import 'package:ethio_agri_ceft_app/presentation/dashboard/product_details_screen.dart';
import 'package:ethio_agri_ceft_app/presentation/exports.dart';

void main() {
  runApp(const ReviewScape());
}

class ReviewScape extends StatelessWidget {
  const ReviewScape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationCubit(),
        ),
        BlocProvider(
          create: (context) => SignupBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(),
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
              if (state is SignupRoute) MaterialPage(child: SignupScreen()),
              if (state is LoginRoute) MaterialPage(child: LoginScreen()),
              if (state is LandingRoute)
                const MaterialPage(child: LandingScreen()),
              if (state is DashboardRoute)
                const MaterialPage(child: DashboardScreen()),
              if (state is ProductDetailsRoute)
                MaterialPage(
                    child: ProductDetailsScreen(product: state.product)),
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
