import 'package:flutter/material.dart';

class ToolbarPageNumber extends StatelessWidget {
  final int pageNumber;

  const ToolbarPageNumber({super.key, required this.pageNumber});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          "$pageNumber",
<<<<<<< HEAD
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
=======
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
>>>>>>> fix-style
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
      );
}
