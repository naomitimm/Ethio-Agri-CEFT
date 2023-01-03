part of 'navigation_cubit.dart';

@immutable
abstract class NavigationState extends Equatable {}

class NavigationInitial extends NavigationState {
  @override
  List<Object?> get props => [];
}

class LandingRoute extends NavigationState {
  @override
  List<Object?> get props => [];
}

class LoginRoute extends NavigationState {
  @override
  List<Object?> get props => [];
}

class SignupRoute extends NavigationState {
  @override
  List<Object?> get props => [];
}

class DashboardRoute extends NavigationState {
  final int tabIndex;
  DashboardRoute({required this.tabIndex});
  @override
  List<Object?> get props => [tabIndex];
}

class ProductDetailsRoute extends NavigationState {
  final Product product;
  ProductDetailsRoute({required this.product});

  @override
  List<Object?> get props => [product];
}
