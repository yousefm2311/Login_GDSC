// ignore_for_file: prefer_const_constructors, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:task1gdsc/modules/login.dart';
import '../layout/shared/component.dart';

class Register_Screen extends StatelessWidget {
  Register_Screen({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordConfirmController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Hello!",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      'assets/assets.png',
                      width: 250,
                      height: 250,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              defaultFormField(
                text: 'Enter your email',
                type: TextInputType.text,
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              defaultFormField(
                text: 'Enter your password',
                type: TextInputType.text,
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              defaultFormField(
                text: 'Confirm password',
                type: TextInputType.text,
                controller: passwordConfirmController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your confirm password';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: defaultBottom(
                    color: Colors.blueAccent,
                    color2: Colors.white,
                    onpressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    text: "Register"),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(
                      onPressed: () {
                        navigator(context, Login_Screen());
                      },
                      child: Text("Login"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
