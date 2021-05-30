import 'package:flutter/material.dart';
import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';
import 'Models/transaction.dart';

class UserTRansaction extends StatefulWidget {
  @override
  _UserTRansactionState createState() => _UserTRansactionState();
}

class _UserTRansactionState extends State<UserTRansaction> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
