import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  TaskTile({this.taskTitle, this.isChecked});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
//        onChanged: toggleCheckboxState,
      ),
    );
  }
}

//(bool checkboxState) {
//setState(() {
//isChecked = checkboxState;
//});

//class TaskCheckbox extends StatelessWidget {
//  final bool checkboxState;
//  final Function toggleCheckboxState;
//
//  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      value: checkboxState,
//      onChanged: toggleCheckboxState,
//    );
//  }
//}
