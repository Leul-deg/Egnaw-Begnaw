// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/application/auth/user_create/user_create_bloc.dart';
import 'package:frontend/domain/auth/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'components/body.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:frontend/infrastructure/auth/repositories/auth_repository_imp.dart';
import 'package:frontend/infrastructure/auth/data_sources/auth_data_sources.dart';

import 'package:frontend/data/local/shared_pref/shared_pref.dart';

import 'package:frontend/application/auth/user_create/user_create_bloc.dart';

import 'package:http/http.dart' as http;

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
