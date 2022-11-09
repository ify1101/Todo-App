import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  TodoTile({Key? key, required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( right: 15, left: 15, top: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.startToEnd,
            background: ColoredBox(
                color: Colors.red,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(Icons.delete, color: Colors.white,),
              ),
            ),),
            child: Container(
              padding: EdgeInsets.all(24),
              child: Row(
                children: [
                  //checkbox
                  Checkbox(value: taskCompleted,
                      onChanged: onChanged,
                      activeColor: Colors.blueGrey,),
                  //task name
                  Text(taskName,
                       style: TextStyle(
                           decoration: taskCompleted ? TextDecoration.lineThrough
                               : TextDecoration.none),),
                ],
              ),
              decoration: BoxDecoration(color: Colors.yellow,
              borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),

    );
  }
}
