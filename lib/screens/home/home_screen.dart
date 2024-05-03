import 'package:flutter/material.dart';
import 'package:rive_animation/screens/account_state/account_state.dart';
import '../../model/course.dart';
import 'components/course_card.dart';
import 'components/secondary_course_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Propiedades",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: PageView.builder(
                  itemCount: property2.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context, MaterialPageRoute(
                          //     builder: (context) => const RentalRequestPage(),
                          //   )
                          // );
                        },
                        child: CourseCard(
                          title: property2[index].title,
                          iconSrc: property2[index].iconSrc,
                          codRefs: property2[index].codRef,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Estados de cuenta Activos",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: recentCourses
                  .map((course) => Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => const RentalStatementPage(),
                            )
                          );
                      },
                      child: Column(
                        children: [
                          SecondaryCourseCard(
                            title: course.title,
                            iconsSrc: course.iconSrc,
                            colorl: course.color,
                          ),
                        ],
                      ),
                    ),
                  ))
                  .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
