// ignore_for_file: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ethio_agri_ceft_app/domain/product/product_model.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading()) {
    on<LoadWishlist>(_handleLoadWishlist);
    on<AddToWishlist>(_handleAddToWishlist);
    on<RemoveFromWishlist>(_handleRemoveFromWishlist);
  }

  _handleLoadWishlist(LoadWishlist event, Emitter emit) {}
  _handleAddToWishlist(AddToWishlist event, Emitter emit) {}
  _handleRemoveFromWishlist(RemoveFromWishlist event, Emitter emit) {}
}
