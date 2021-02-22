import 'package:flutter/material.dart';
import 'package:infigon_task/presentation/tests_page/widgets/test_card.dart';

class TestsCarousel extends StatelessWidget {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: SizedBox(
            height: 400,
            child: Row(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      _pageController.previousPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn);
                    }),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: [
                      TestCard(),
                      TestCard(),
                      TestCard(),
                    ],
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.arrow_forward_ios,
                        color: Theme.of(context).primaryColor),
                    onPressed: () {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    }),
              ],
            ),
          ),
        );
  }
}