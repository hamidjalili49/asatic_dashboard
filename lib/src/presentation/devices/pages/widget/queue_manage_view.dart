import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///
class QueueManagerVew extends StatefulWidget {
  ///
  const QueueManagerVew({
    super.key,
  });

  @override
  State<QueueManagerVew> createState() => _QueueManagerVewState();
}

class _QueueManagerVewState extends State<QueueManagerVew> {
  final List<String> hamid = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 24.w,
        crossAxisSpacing: 24.w,
      ),
      itemCount: hamid.length + 1,
      itemBuilder: (context, index) => hamid.length != index
          ? const QueueTileWidget()
          : GestureDetector(
              onTap: () {
                setState(() {
                  hamid.add('New');
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).highlightColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                alignment: Alignment.center,
                child: const Text('Add'),
              ),
            ),
    );
  }
}

///
class QueueTileWidget extends StatelessWidget {
  ///
  const QueueTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).highlightColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      alignment: Alignment.center,
      child: const Text('Hamidjalili'),
    );
  }
}
