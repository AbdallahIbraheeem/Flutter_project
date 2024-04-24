import 'package:flutter_bloc/flutter_bloc.dart';

// Authentication Bloc
enum AuthenticationStatus { authenticated, unauthenticated }

class AuthenticationBloc extends Cubit<AuthenticationStatus> {
  AuthenticationBloc() : super(AuthenticationStatus.unauthenticated);

  void login(String email, String password) {
    // Simulate login with a hardcoded admin account
    if (email == 'ADMIN' && password == 'PASSWORD') {
      emit(AuthenticationStatus.authenticated);
    }
  }
}
