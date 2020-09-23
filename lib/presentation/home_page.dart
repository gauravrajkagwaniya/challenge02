import 'package:flutter/material.dart';import 'package:page_ui/presentation/custom_widget/bottomBar.dart';import 'package:page_ui/presentation/custom_widget/custom_pins.dart';import 'package:page_ui/presentation/list_top.dart';import 'package:page_ui/presentation/service_home.dart';class HomePage extends StatefulWidget {  @override  _HomePageState createState() => _HomePageState();}class _HomePageState extends State<HomePage> {  @override  Widget build(BuildContext context) {    return Scaffold(      appBar: AppBar(        backgroundColor: Colors.orangeAccent,        elevation: 0.0,        leading: IconButton(            icon: Icon(              Icons.dehaze,              color: Colors.brown[900],            ),            onPressed: () {}),        title: Row(mainAxisAlignment: MainAxisAlignment.start,          crossAxisAlignment: CrossAxisAlignment.start,          children: [        Container(            color:Colors.transparent,            width: 110,            child: Text('300 mount lebanon boulevard pittsburgh pa 15234 USA', maxLines: 2,style: TextStyle(color: Colors.brown[900],fontSize: 10),)),            Icon(Icons.edit,size: 7, color: Colors.brown[900],)                 ],        ),        actions: [          IconButton(              icon: Icon(Icons.search, color: Colors.brown[900]), onPressed: () {}),        ],      ),      body: Stack(        children: [          // maps          Container(              height: MediaQuery.of(context).size.height,              child: Image.asset(                'assets/images/map.JPG',                fit: BoxFit.cover,              )),          Container(            height: MediaQuery.of(context).size.height * .10,            width: MediaQuery.of(context).size.width,            decoration: BoxDecoration(              color: Colors.orangeAccent,              borderRadius: BorderRadius.only(                  bottomRight: Radius.circular(20.0),                  bottomLeft: Radius.circular(20.0)),            ),            child: Card(              margin: EdgeInsets.all(20),              shape: RoundedRectangleBorder(                borderRadius: BorderRadius.all(Radius.circular(30)),              ),              child: ListTop()            ),          ),          SizedBox(            height: 150,          ),          Positioned(top: 150,              child: CustomPins()),          Positioned(top: 165,left: 65,              child: CustomPins()),          Positioned(top: 185,left: 85,              child: CustomPins()),          Positioned(top: 300,right: 95,              child: CustomPins()),          ServiceHome(),          BottomBar(),        ],      ),    );  }}