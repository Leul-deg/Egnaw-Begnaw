import 'package:flutter/material.dart';
import './widgets/body.dart';

import 'package:frontend/infrastructure/auth/repositories/auth_repository_imp.dart';
import 'package:frontend/infrastructure/auth/data_sources/auth_data_sources.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:frontend/application/auth/login/login_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
        authRepository: AuthRepositoryImp(
          authDataSource: AuthDataSource(),
        ),
      ),
      child: const Scaffold(
        body: Body(),
      ),
    );
  }
}