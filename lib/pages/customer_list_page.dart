import 'package:flutter/material.dart';

import '../model.dart';

class CustomerList extends StatelessWidget {

   const CustomerList({Key? key, }) : super(key: key);




  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: const Text('My order List'),),
      body: ListView.builder(
       // itemCount: task.length!,
        itemBuilder: (BuildContext context,i){
        return Column(
          children: [
               Row(
                 children: const [
                   Text('Employee Name',style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),)
                 ],

               ),
             Container(
               margin: const EdgeInsets.only(top: 20,bottom: 20),
               padding: const EdgeInsets.only(left: 10,right: 10),
               height: 60,
               width: double.infinity,
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.black38,width: 2)
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: const [
                   Text('Customer Name',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                   VerticalDivider(
                     color: Colors.black12,
                     width: 7,
                     thickness: 1,
                     indent: 10,
                     endIndent: 10,
                   ),
                   Text('Visit Date',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),)
                 ],
               ),
             ),

            Container(
              width: double.infinity,
              height: 100,
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: Colors.grey)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       // Text(task[i].shopName),
                       // Text(task[i].id),
                       // Text(task[i].city),
                      ],
                    ),
                  ),

                ],
              ),

            )

          ],
        );
        },
      ),
    );
  }
}
