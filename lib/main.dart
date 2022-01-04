import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyTodoapp(),
    ); 
  }
}

class MyTodoapp extends StatefulWidget {
  const MyTodoapp({Key? key}) : super(key: key);

  @override
  State<MyTodoapp> createState() => _MyTodoappState();
}

class _MyTodoappState extends State<MyTodoapp> {
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFwcHklMjB3b21hbnxlbnwwfHwwfHw%3D&w=1000&q=80")),
          ),
          title: const Text(
            "My tasks",
            style: TextStyle(color: Colors.black87),
          ),
          actions: const [
            Icon(
              Icons.more_vert_rounded,
              color: Colors.black,
            ),
            Icon(
              Icons.search,
              color: Colors.black,
            ),
          ],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            ListWidget(
              name: "Oswin",
              response: "proud",
              time: "",
              object: Icons.check_circle_outline_outlined,
              icon: Icons.notifications,
            ),
            ListWidget(
              name: "Oswin",
              response: "respect",
              time: "",
              object: Icons.check_circle_rounded,
              icon: Icons.notifications,
            ),
            ListWidget(
              name: "Oswin",
              response: "humility",
              time: "",
              object: Icons.check_circle_outline,
              icon: Icons.notifications,
            )
          ],
        ));
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({
    Key? key,
    required this.name,
    required this.response,
    required this.time,
    required this.object,
    required this.icon,
  }) : super(key: key);
  final String name;
  final String response;

  final String time;
  final IconData object;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:2.0,left: 15,right: 15),
      child: Card(
        child: ListTile(
          leading: Icon(object),
          title: Text(name),
          subtitle: Text(response),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(time),
              Icon(icon),
              const Text("yesterday"),
            ],
          ),
        ),
      ),
    );
  }
}
  