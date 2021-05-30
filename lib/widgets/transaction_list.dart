import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {

  final List<Transaction>  _userTransactions =[
     Transaction(
        id: 't1', title: 'New Shirt', date: DateTime.now(), amount: 99.4),
    Transaction(
        id: 't2', title: 'New Phone', date: DateTime.now(), amount: 199.4),
  ];
  @override
  Widget build(BuildContext context) {
    return  Column(
              children: _userTransactions.map((tx) {
                return Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          '\$ ${tx.amount}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.purple),
                        ),
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green.shade100,
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tx.title,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            DateFormat.yMMMd().format(tx.date),
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                                color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            );
  }
}