import 'package:covtracker/src/covdata.dart';
import 'package:covtracker/src/myappbody.dart';
import 'package:flutter/material.dart';

class SetHomePage extends StatelessWidget {
  final List<CovData> data;
  const SetHomePage(this.data, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //List<CovData> data = widget.data;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/img/backgroundhome.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(50),
              decoration: const BoxDecoration(color: Colors.yellow),
              child: Center(child: Text(data[0].statename.toString())),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyAppBody(data)));
            },
            child: const Text('State Data'),
          ),
        ],
      ),
    );
  }
}
