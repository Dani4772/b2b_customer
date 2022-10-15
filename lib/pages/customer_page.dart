import 'package:flutter/material.dart';

import 'add_customer.dart';
import '../widgets_ui/button_widg.dart';
import 'customer_list_page.dart';

class Customer extends StatefulWidget {
  const Customer({Key? key}) : super(key: key);

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customer')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(name: 'Add Customer',isonpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddCustomer()));

            },),
            ButtonWidget(name: 'Customer List',isonpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CustomerList()));
            },),
            ButtonWidget(name: 'Credit Customer',isonpressed: (){},),
            ButtonWidget(name: 'Customer Ledger',isonpressed: (){},),
          ],
        ),
      ),
    );
  }
}
