import 'package:flutter/material.dart';

import '../../modules/login.dart';

Widget defaultFormField({
  required String text,
  required TextInputType type,
  IconData? perfix,
  required TextEditingController controller,
  IconData? suffix,
  VoidCallback? suffixButton,
  bool isPassword = false,
  String? Function(String?)? validator,
  VoidCallback? ontap,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: isPassword,
        keyboardType: type,
        onTap: ontap,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          labelText: text,
          hintText: text,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
          ),
          floatingLabelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
            borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black.withOpacity(0.5), width: 1.5),
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: Icon(perfix),
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixButton,
                  icon: Icon(suffix),
                )
              : null,
        ),
      ),
    );

void navigator(context, Widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => Widget));

Widget defaultBottom(
        {required Function() onpressed,
        required String text,
        required Color color,
        Color? color2}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
        ),
        child: MaterialButton(
          elevation: 5,
          onPressed: onpressed,
          child: Text(text, style: TextStyle(fontSize: 18, color: color2)),
        ),
      ),
    );
