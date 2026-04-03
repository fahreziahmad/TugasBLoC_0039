import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
	AuthBloc() : super(AuthInitial()) {
		on<LoginSubmitted>(_onLoginSubmitted);
		on<RegisterSubmitted>(_onRegisterSubmitted);
		on<LogoutRequested>(_onLogoutRequested);
	}