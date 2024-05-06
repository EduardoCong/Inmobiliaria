import 'package:flutter/material.dart';

class CourseCard extends StatefulWidget {
  const CourseCard({
    Key? key,
    required this.title,
    required this.codrefs,
  }) : super(key: key);

  final String title, codrefs;

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      height: 290,
      width: 280,
      decoration: const BoxDecoration(
        color: Color(0xFF7553F6),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 6, right: 8),
                child: Column(
                  children: [
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 8),
                      child: Text(
                        "Build and animate an iOS app from scratch",
                        style: TextStyle(
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    Text(widget.codrefs),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

