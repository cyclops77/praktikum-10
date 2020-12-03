import 'package:flutter/material.dart';
import 'package:praktikum10/changepage.dart';
import 'package:praktikum10/detail.dart';
import 'package:praktikum10/usercontroller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data = [];
  void getUser()async{
    UsersController.getData().then((res){
      setState(() {
        data = res;
      });
      print(data.toString());
    });
  }
  @override
  void initState() {
    getUser();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch Data"),
      ),
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, int i) {
            return InkWell(
              onTap: (){
                ChangePage.changePage(context, DetailPage(
                  data: data[i],
                ));
                // print(.toString());
              },
              child: Card(
                child: ListTile(
                  title: Column(
                    children: [
                      Text("${data[i]['name']}"),
                      Text("${data[i]['email']}"),
                      // Text("${data[i]['address']['street']}"),
                      // Text("${data[i]['address']['geo']['lat']}")
                    ],
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}