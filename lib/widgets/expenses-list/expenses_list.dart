import 'package:expense_tracker/widgets/expenses-list/expense.item.dart';
import 'package:flutter/material.dart';

import '../../models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({Key? key, required this.expenses}) : super(key: key);

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Provide constraints for the ListView
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height, // Adjust the height as needed
      ),
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
      ),
    );
  }
}
