import 'package:flutter/material.dart';
import 'package:johannes_web/main.dart';
import 'package:johannes_web/widgets/add_todo_dialog_widger.dart';
import 'package:johannes_web/widgets/todo_list_widget.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final  tabs = [
      TodoListWidget(),
      Container()
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),

      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.fact_check_outlined),
              label: 'Todos',
          ), BottomNavigationBarItem(
            icon: Icon(Icons.done,  size: 28,),
            label: 'Completed',
          )
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
        onPressed: (){
          showDialog(context: context,
              barrierDismissible: true,
              builder: (BuildContext context)=>AddTodoDialogWidget());
        },

      ),
    );
  }
}
