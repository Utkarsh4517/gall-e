import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  final ValueChanged<String>? onValueChanged;
  const DropDown({
    this.onValueChanged,
    super.key,
  });

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> values = [
    'Hindi',
    'Bhojpuri',
    'English',
    'Bengali',
    'Marathi',
    'Tamil',
    'Haryanvi',
  ];
  String dropDownValue = '';

  @override
  void initState() {
    dropDownValue = values.first;
    super.initState();
  }

  String get currentDropDownValue => dropDownValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropDownValue,
      elevation: 16,
      underline: Container(
        height: 2,
        color: Colors.black,
      ),
      items: values.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          dropDownValue = value!;
          DropDownValueHolder.setDropDownValue(dropDownValue);
        });
        if (widget.onValueChanged != null) {
          widget.onValueChanged!(dropDownValue);
        }
      },
    );
  }
}

class DropDownValueHolder {
  static String dropDownValue = '';

  static void setDropDownValue(String value) {
    dropDownValue = value;
  }

  static String getDropDownValue() {
    return dropDownValue;
  }
}
