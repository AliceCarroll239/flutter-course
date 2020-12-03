import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

int statelessCount = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task 3.4 Demo'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SampleStatelessWidget(),
            SizedBox(height: 100),
            SampleStatefulWidget(),
          ],
        ),
      ),
    );
  }
}

class SampleStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    statelessCount++;
    print('Stateless count: $statelessCount');
    return Center(
      child: Text('Stateless count: $statelessCount', style: Theme.of(context).textTheme.headline4),
    );
  }
}

class SampleStatefulWidget extends StatefulWidget {
  @override
  _SampleStatefulWidget createState() => _SampleStatefulWidget();
}

class _SampleStatefulWidget extends State<SampleStatefulWidget> {
  int statefulCount = 0;

  @override
  void didUpdateWidget(covariant SampleStatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('SampleStatefulWidget was updated');
  }

  @override
  Widget build(BuildContext context) {
    statefulCount++;
    print('Stateful count: $statefulCount');
    return Center(
      child: Text('Stateful count: $statefulCount', style: Theme.of(context).textTheme.headline4),
    );
  }
}
