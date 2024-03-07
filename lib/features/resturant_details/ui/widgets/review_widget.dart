import 'package:flutter/cupertino.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(child: Text("Reviews")),
    );
  }
}