import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(child: Column(
            children: [

              Text(""),
              Container(
                child: Text("Balance"),
              ),

              Container(child: Row(children: [
                ActionTile(icon: Icons.telegram,title: "send", action:widgetSendSheet() , ),
                ActionTile(icon: Icons.download,title:"recieve", action: widgetReceiveSheet(),),
                // ActionTile(icon: Icons.telegram,title: "s"),
              ],),)




            ],
          ),)
        ],
      ),
    );
  }

  widgetSendSheet(){}
  widgetReceiveSheet(){}

}


class ActionTile extends StatelessWidget {
  IconData icon;
  String title;
  Widget action;

  ActionTile({Key? key, required this.icon, required this.title, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) => action));
        },
        child: Column(
      children: [
        Icon(icon),
        Text(title)
      ],
    ));
  }
}
