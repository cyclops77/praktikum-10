import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final Map data;
  DetailPage({this.data});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Card(
        child: ListTile(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Data Diri : "),
              Text('${widget.data['name']}'),
              Text('${widget.data['username']}'),
              Text('${widget.data['email']}'),
              Text('${widget.data['phone']}'),
              Text('${widget.data['website']}'),
              Text("Data Alamat : "),
              Text('${widget.data['address']['street']}'),
            ],
          ),
        ),
      ),
    );
  }
}