import 'package:covtracker/src/covdata.dart';
import 'package:covtracker/src/fetchdata.dart';
import 'package:covtracker/src/sethomepage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<CovData>> futuredata;

  @override
  void initState() {
    futuredata = fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: futuredata,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SetHomePage((snapshot.data as List<CovData>).toList());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
