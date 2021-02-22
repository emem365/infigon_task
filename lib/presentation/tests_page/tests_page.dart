import 'package:flutter/material.dart';
import 'package:infigon_task/presentation/tests_page/widgets/carousel.dart';
import 'package:infigon_task/presentation/tests_page/widgets/test_results.dart';

class TestsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 60),
          child: Text(
            'MY TESTS',
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Text(
          'Available Tests',
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        TestsCarousel(),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: SizedBox(
                width: 300,
                child: TestResults(),
              )),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
