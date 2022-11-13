import 'package:flutter/material.dart';
import '../main.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  static const List<String> myItems = <String>[
    "CompanyInvestor",
    "Entrepreneur",
    "IndividualInvestor",
  ];
  String dropDownValue = myItems.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 5,
          ),
          BrainTech.navBar(context),
          BrainTech.space(50),
          Form(
            key: _formKey,
            child: Expanded(
              child: ListView(
                padding: const EdgeInsets.all(30),
                children: [
                  //  EMAIL FIELD
                  _createTextField('Enter your email', 'Email',
                      const Icon(Icons.account_box_rounded)),
                  BrainTech.space(10),
                  //  PASSWORD FIELD
                  _createTextField('Enter your password', 'Password',
                      const Icon(Icons.password_outlined)),
                  BrainTech.space(10),
                  //  Website
                  _createTextField(
                      'Enter your website', 'website', const Icon(Icons.web)),
                  BrainTech.space(10),
                  //  CELLPHONE/TELEPHONE
                  _createTextField('Enter your telephone/cellphone',
                      'telephone/cellphone', const Icon(Icons.contact_phone)),
                  BrainTech.space(10),
                  const Text(
                    "Register as:",
                    style: TextStyle(fontSize: 20),
                  ),
                  DropdownButtonFormField(
                      elevation: 16,
                      borderRadius: BorderRadius.circular(5),
                      value: dropDownValue,
                      items:
                          myItems.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          dropDownValue = value!;
                        });
                        print("dropDownValue: $dropDownValue");
                      }),
                  BrainTech.space(10),
                  //  NAME
                  _createTextField(
                    "Enter your name",
                    "owner name",
                    const Icon(Icons.person_add_alt_1),
                  ),
                  BrainTech.space(10),
                  //  SURNAME
                  _createTextField(
                    "Enter your surname",
                    "surname",
                    const Icon(Icons.person_add_alt),
                  ),
                  BrainTech.space(10),
                  //  COMPANY NAME
                  _createTextField(
                    "Enter your company name",
                    "company name",
                    const Icon(Icons.business_center_sharp),
                  ),
                  BrainTech.space(10),
                  //  SECTOR
                  _createTextField(
                    "Enter your sector",
                    "sector",
                    const Icon(Icons.business_rounded),
                  ),
                  BrainTech.space(10),
                  //  START UP / POTENTIAL
                  _createTextField(
                    "Are you a startup or potential business",
                    "start or potential",
                    const Icon(Icons.business),
                  ),
                  BrainTech.space(10),
                  Center(
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Submit")))
                ],
              ),
            ),
          ),
          BrainTech.space(10),
          BrainTech.footer()
        ],
      ),
    );
  }

  _createTextField(String textHint, String textLabel, Icon icon) {
    return TextFormField(
      decoration: InputDecoration(
          icon: icon,
          hintText: textHint,
          labelText: textLabel,
          border: const OutlineInputBorder()),
    );
  }

  _companyInvestorFields() {}
}
