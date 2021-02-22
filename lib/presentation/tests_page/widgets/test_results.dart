import 'package:flutter/material.dart';

class TestResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: SizedBox.expand(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Test Results',
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          ElevatedButton(
            child: Text('VIEW'),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
