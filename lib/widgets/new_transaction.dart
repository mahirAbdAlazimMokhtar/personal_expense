import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();
  final Function addTx;
  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
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
              onPressed: () {
                addTx(
                  titlecontroller.text,
                  double.parse(amountcontroller.text),
                );
              },
              child: Text('Add Transaction'),
              textColor: Colors.purple.shade400,
            )
          ],
        ),
      ),
    );
  }
}
