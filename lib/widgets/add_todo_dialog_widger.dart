import 'package:flutter/material.dart';
import 'package:johannes_web/widgets/todo_form_widget.dart';
class AddTodoDialogWidget extends StatefulWidget {
  const AddTodoDialogWidget({Key? key}) : super(key: key);

  @override
  _AddTodoDialogWidgetState createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {

  final _formkey = GlobalKey<FormState>();
  String title = '';
  String description = '';


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Add Todo",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22
          ),
          ),

          TodoFormWidget(
            onChangedTitle: (title) => setState(() => this.title = title),
            onChangedDescription: (description) =>
                setState(() => this.description = description),
            onSavedTodo: () {},
          )

        ],
      ),
    );
  }
}

