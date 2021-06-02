import 'package:flutter/material.dart';
import 'package:prtsonal_expenses/widgets/transaction_list.dart';
import './widgets/new_transaction.dart';
import 'Models/transaction.dart';
import 'widgets/transaction_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  MediaQueryData media;
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shirt', date: DateTime.now(), amount: 99.4),
    Transaction(
        id: 't2', title: 'New Phone', date: DateTime.now(), amount: 199.4),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      date: DateTime.now(),
      amount: txAmount,
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {
               final snackBar = SnackBar(content: Text('Tap'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            behavior: HitTestBehavior.opaque,
            child: NewTransaction(_addNewTransaction),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
    
        home: Scaffold(
        
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(
                Icons.add,
              ),
              onPressed: () => _startAddNewTransaction(context))
        ],
        title: Text('Personal Expenses'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.purple,
                child: Text('CHART !'),
                elevation: 10,
              ),
            ),
            TransactionList(_userTransactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () => _startAddNewTransaction(context),
      ),
    ));
  }
}
