import 'package:flutter/material.dart';
import 'package:my_application/models/expense.dart';
import 'package:my_application/widget/expense_list/expense_item.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(key),
        background: Container(
          color: Theme.of(context).colorScheme.errorContainer,
          margin: EdgeInsets.symmetric(
            vertical: Theme.of(context).cardTheme.margin!.vertical / 2,
          ),
        ),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(
          expenses[index],
        ),
      ),
    );
  }
}
