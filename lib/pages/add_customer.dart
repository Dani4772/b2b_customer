import 'package:b2b_customer/pages/customer_list_page.dart';
import 'package:b2b_customer/widgets_ui/field_widget.dart';
import 'package:flutter/material.dart';

import '../widgets_ui/button_widg.dart';
import 'customer_page.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({Key? key}) : super(key: key);

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController id = TextEditingController();
  TextEditingController shopName = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController previousBalance = TextEditingController();
  String? _chosenValue;
  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String dateStr = "${today.day}-${today.month}-${today.year}";
    return Form(
      key: _formKey,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Add Customer'),
          ),
          body: SingleChildScrollView(
            padding:
                const EdgeInsets.only(top: 30, bottom: 10, left: 15, right: 15),
            child: Column(
              children: [
                FieldWidget(
                    name: 'Customer ID ',
                    controller: id,
                    isObscure: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Id ';
                      }
                      return null;
                    }),
                FieldWidget(
                    name: 'Shop Name',
                    controller: shopName,
                    isObscure: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Shop Name';
                      }
                      return null;
                    }),
                FieldWidget(
                    name: 'Mobile No ',
                    controller: mobileNumber,
                    isObscure: false,
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 12) {
                        return 'Enter Mobile Number ';
                      }
                      return null;
                    }),
                FieldWidget(
                    name: 'City',
                    controller: city,
                    isObscure: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter City Name';
                      }
                      return null;
                    }),
                Container(
                  margin: const EdgeInsets.only(
                      top: 10, left: 16, right: 16, bottom: 10),
                  width: double.infinity,
                  height: 60,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Center(
                    child: DropdownButton(
                        value: _chosenValue,
                        items: <String>[
                          'In Station',
                          'Out Station',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: const Text(
                          "Select Option",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        }),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 10, left: 16, right: 16, bottom: 10),
                  width: double.infinity,
                  height: 60,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Created Date: ',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        dateStr,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                FieldWidget(
                    name: 'Customer Name',
                    controller: name,
                    isObscure: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Customer Name';
                      }
                      return null;
                    }),
                FieldWidget(
                    name: 'Address',
                    controller: address,
                    isObscure: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Address';
                      }
                      return null;
                    }),
                FieldWidget(
                    name: 'Previous Balance',
                    controller: previousBalance,
                    isObscure: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Previous Balance';
                      }
                      return null;
                    }),
                ButtonWidget(
                  name: 'Save',
                  isonpressed: () {
                    setState(() {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  CustomerList()));
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Data Saved Successfully')));
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
