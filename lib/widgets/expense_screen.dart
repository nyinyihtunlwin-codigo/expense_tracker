import 'package:expense_tracker/widgets/expense_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() {
    return _ExpenseScreenState();
  }
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Flutter Course",
        amount: 99.99,
        date: DateTime.now(),
        category: Category.WORK),
    Expense(
        title: "Yangon Trip",
        amount: 409.99,
        date: DateTime.now(),
        category: Category.TRAVEL),
    Expense(
        title: "Car",
        amount: 19999.99,
        date: DateTime.now(),
        category: Category.LEISURE),
    Expense(
        title: "Burger",
        amount: 3.99,
        date: DateTime.now(),
        category: Category.FOOD),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpenseList(expenses: _registeredExpenses),
    );
  }
}
