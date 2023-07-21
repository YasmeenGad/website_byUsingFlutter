import 'package:flutter/material.dart';
import 'package:website/constants.dart';
import 'package:website/projects.dart';
import 'package:website/resbonsive.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Our Projects",
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Responsive(
            tablets: buildGridView(
              itemcount: demoProjects.length,
              crossaxiscount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
              childaspectration: 0.75,
              itembuilder: (context, index) {
                return ProjectCard(
                  project: demoProjects[index],
                );
              },
            ),
            desktop: buildGridView(
              itemcount: demoProjects.length,
              crossaxiscount: 3,
              childaspectration: 0.75,
              itembuilder: (context, index) {
                return ProjectCard(
                  project: demoProjects[index],
                );
              },
            ),
            mobileLarge: buildGridView(
              itemcount: demoProjects.length,
              crossaxiscount: 2,
              childaspectration: 0.75,
              itembuilder: (context, index) {
                return ProjectCard(
                  project: demoProjects[index],
                );
              },
            ),
            mobile: buildGridView(
              itemcount: demoProjects.length,
              crossaxiscount: 1,
              childaspectration: 0.75,
              itembuilder: (context, index) {
                return ProjectCard(
                  project: demoProjects[index],
                );
              },
            ))
      ],
    );
  }
}

class buildGridView extends StatelessWidget {
  final itemcount;
  final crossaxiscount;
  final childaspectration;
  final itembuilder;

  const buildGridView(
      {super.key,
      required this.itemcount,
      required this.crossaxiscount,
      required this.childaspectration,
      required this.itembuilder});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemcount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossaxiscount,
            childAspectRatio: childaspectration,
            crossAxisSpacing: kDefaultPadding,
            mainAxisSpacing: kDefaultPadding),
        itemBuilder: itembuilder);
  }
}

class ProjectCard extends StatelessWidget {
  final project;

  const ProjectCard({
    this.project,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: Colors.blueGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
            child: Text(
              project.description!,
              style: TextStyle(height: 1.5, fontSize: 15),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "More Info >",
                style: TextStyle(color: kBgColor, fontSize: 20),
              ))
        ],
      ),
    );
  }
}
