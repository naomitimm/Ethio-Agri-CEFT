import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());
  void toLandingScreen() => emit(LandingRoute());
  void toLoginScreen() => emit(LoginRoute());
  void toSignupScreen() => emit(SignupRoute());
  void toDashboardScreen([int tabIndex = 0]) =>
      emit(DashboardRoute(tabIndex: tabIndex));
}
