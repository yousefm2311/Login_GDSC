// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:task1gdsc/layout/shared/component.dart';
import 'package:task1gdsc/modules/register.dart';

class Login_Screen extends StatelessWidget {
  Login_Screen({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                text: 'Enter your email',
                type: TextInputType.text,
                controller: emailController,
              ),
              SizedBox(
                height: 25,
              ),
              defaultFormField(
                text: 'Enter your password',
                type: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                controller: passwordController,
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
                    text: "Login"),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        navigator(context, Register_Screen());
                      },
                      child: Text("Register"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
