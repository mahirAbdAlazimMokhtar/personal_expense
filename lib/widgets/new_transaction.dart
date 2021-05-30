import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();
  final Function addTx;
  NewTransaction(this.addTx);

   void submiteDate(){
     final enteredTitle = titlecontroller.text;
     final enteredAmount =double.parse( amountcontroller.text);

     if (enteredTitle.isEmpty || enteredAmount <= 0 ){
       return ;
     }
    addTx(
      enteredTitle,
      enteredAmount,
    );
  }
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
              onSubmitted:(_)=>submiteDate() ,
            ),
            TextField(
              // onChanged: (val){
              //   // amountInput = val;
              // },
              keyboardType:TextInputType.number,
              controller: amountcontroller,
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            FlatButton(
              onPressed: () {
                submiteDate;
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
