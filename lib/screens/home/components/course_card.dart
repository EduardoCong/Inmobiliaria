import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    required this.title,
    required this.codRefs,
    this.iconSrc = "assets/icons/ios.svg",
  }) : super(key: key);

  final String title, iconSrc, codRefs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      height: 280,
      width: 260,
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
                      title,
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
                    Text(codRefs),
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

