import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ethio_agri_ceft_app/domain/product/product_model.dart';
import 'package:meta/meta.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());
  void toLandingScreen() => emit(LandingRoute());
  void toLoginScreen() => emit(LoginRoute());
  void toSignupScreen() => emit(SignupRoute());
  void toDashboardScreen([int tabIndex = 0]) =>
      emit(DashboardRoute(tabIndex: tabIndex));
  void toProductDetailsScreen(Product product) =>
      emit(ProductDetailsRoute(product: product));
}
