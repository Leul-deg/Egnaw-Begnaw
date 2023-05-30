// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/application/auth/user_create/user_create_bloc.dart';
import 'components/body.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:frontend/infrastructure/auth/repositories/auth_repository_imp.dart';
import 'package:frontend/infrastructure/auth/data_sources/auth_data_sources.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => UserCreateBloc(
          authRepository: AuthRepositoryImp(
            authDataSource: AuthDataSource(),
          ),
        ),
        child: Body(),
      ),
    );
  }
}
