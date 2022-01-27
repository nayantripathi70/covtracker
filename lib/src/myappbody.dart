import 'package:covtracker/src/covdata.dart';
import 'package:flutter/material.dart';

class MyAppBody extends StatefulWidget {
  final List<CovData> data;
  const MyAppBody(this.data, {Key? key}) : super(key: key);
  //StatefullWidget class;
  @override
  _MyAppBodyState createState() => _MyAppBodyState();
}

class _MyAppBodyState extends State<MyAppBody> {
  @override
  Widget build(BuildContext context) {
    List<CovData> data = widget.data;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cov-19 Tracker'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        //item builder from index'0' to item count;
        itemBuilder: (BuildContext cxt, int index) {
          return Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
            child: ListTile(
              title: Center(
                child: Text(
                  data[index].statename.toString(),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Cases: ' + data[index].confval.toString()),
                    Column(
                      children: [
                        Text('Recovered: ' + data[index].recval.toString()),
                        Text('Deaths: ' + data[index].deaths.toString()),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
