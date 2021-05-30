import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prtsonal_expenses/widgets/transaction_list.dart';
import './models/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 

  // String titleInput;
  // String amountInput;
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Expenses'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.purple,
                child: Text('CHART !'),
                elevation: 5,
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      // onChanged: (val)=>titleInput= val,
                      controller: titlecontroller,
                      decoration: InputDecoration(labelText: 'Title'),
                    ),
                    TextField(
                      // onChanged: (val){
                      //   // amountInput = val; 
                      // },
                      controller: amountcontroller,
                      decoration: InputDecoration(labelText: 'Amount'),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('Add Transaction'),
                      textColor: Colors.purple.shade400,
                    )
                  ],
                ),
              ),
            ),
           TransactionList(),
          ],
        ),
      ),
    );
  }
}
