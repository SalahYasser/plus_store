import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plus_store/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:plus_store/features/login/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: BlocProvider(
        create: (context) => LoginCubit(Dio()),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {

            if (state is LoginSuccess) {
              // Navigator.pushNamed(context, Routes.onBoardingView);

              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Successsssssssssssssss')));

            } else if (state is LoginFailure) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.errMessage)));

            }
          },
          builder: (context, state) {
            return Scaffold(body: SafeArea(child: LoginViewBody()));
          },
        ),
      ),
    );
  }
}
