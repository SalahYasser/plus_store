import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plus_store/core/widgets/app_text_style.dart';
import 'package:plus_store/core/widgets/custom_text_form_filed.dart';
import 'package:plus_store/features/login/presentation/views/widgets/forgot_your_password.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/or_divider.dart';
import '../../cubits/login_cubit/login_cubit.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController userNameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final loginFormKey = GlobalKey<FormState>();

    final loginCubit = context.watch<LoginCubit>().state;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: loginFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              Text(
                'Login to your account',
                style: AppTextStyle.semiBold32,
              ),
              SizedBox(height: 8),
              Text(
                'It’s great to see you again.',
                style: AppTextStyle.regular16,
              ),
              const SizedBox(height: 32),
              CustomTextFormFiled(
                controller: userNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Username is required';
                  }
                  return null;
                },
                labelText: 'Username',
                hintText: 'Enter your email address',
              ),
              const SizedBox(height: 32),
              CustomTextFormFiled(
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  return null;
                },
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
              const SizedBox(height: 16),
              const ForgotYourPassword(),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child:
                    loginCubit is LoginLoading
                        ? Center(child: const CircularProgressIndicator())
                        : CustomButton(
                          onPressed: () {
                            if (loginFormKey.currentState!.validate()) {
                              final email = userNameController.text;
                              final password = passwordController.text;

                              context.read<LoginCubit>().login(
                                    userName: email,
                                    password: password,
                              );
                            }
                          },
                          text: 'Login',
                          color: const Color(0xFF191919),
                          textColor: Colors.white,
                        ),
              ),
              const SizedBox(height: 32),
              const OrDivider(),
              const SizedBox(height: 32),
              CustomButton(
                onPressed: () {},
                text: 'Login with Google',
                color: Colors.white,
                textColor: Colors.black,
                icon: FontAwesomeIcons.google,
                iconColor: Colors.red,
              ),
              SizedBox(height: 16),
              CustomButton(
                onPressed: () {},
                text: 'Login with Facebook',
                color: Colors.blue,
                textColor: Colors.white,
                icon: FontAwesomeIcons.facebook,
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
