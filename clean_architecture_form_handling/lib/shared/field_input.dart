import 'package:flutter/material.dart';

class FieldInput extends StatefulWidget {
  final Function(String)? onChanged;

  const FieldInput({super.key, required this.onChanged});

  @override
  State<FieldInput> createState() => _FieldInputState();
}

class _FieldInputState extends State<FieldInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (str) {
        if (widget.onChanged != null) widget.onChanged!(str);
      },
    );
  }
}
