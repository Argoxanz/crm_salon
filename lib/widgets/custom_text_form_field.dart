import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:na_beauty_crm/const.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.controllerC,
    required this.textC,
    required this.iconC,
    this.isObscured = false,
    this.isPhone = false,
  });

  final TextEditingController controllerC;
  final String textC;
  final Widget iconC;
  final bool isObscured;
  final bool isPhone;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool passwordVisible = true;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: widget.iconC,
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black38),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: greenMain),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          labelText: widget.textC,
          focusColor: greenMain,
          suffixIcon: widget.isObscured
              ? IconButton(
                  icon: Icon(
                    passwordVisible ? Icons.visibility_off : Icons.visibility,
                    color: greenMain,
                    size: iconInputSize,
                  ),
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                )
              : null,
        ),
        controller: widget.controllerC,
        obscureText: widget.isObscured ? passwordVisible : false,
        keyboardType: widget.isPhone ? TextInputType.phone : null,
        inputFormatters: widget.isPhone
            ? [
                MaskedInputFormatter('+# (###) ###-##-##',
                    allowedCharMatcher: (RegExp(r'[0-9]'))),
              ]
            : null,
      ),
    );
  }
}
