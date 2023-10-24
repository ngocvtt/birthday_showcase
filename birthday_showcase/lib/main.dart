import 'package:birthday_showcase/collab_page.dart';
import 'package:birthday_showcase/igniters_page.dart';
import 'package:birthday_showcase/wish_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import 'component/milestone_cell.dart';
import 'component/photo_cell.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Embrace the journey',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<PhotoCell> photos = [
    const PhotoCell(path: 'assets/image/team_building.jpg'),
    const PhotoCell(path: 'assets/image/1.jpg'),
    const PhotoCell(path: 'assets/image/2.jpg'),
    const PhotoCell(path: 'assets/image/3.jpg'),
    const PhotoCell(path: 'assets/image/4.jpg'),
    const PhotoCell(path: 'assets/image/5.jpg'),
  ];

  final List<Widget> milestones = [
    const MilestoneCell(date: "20/10/2022", description: "WTM HCMC was founded", color: Color(0xff6de4b7),),
    const MilestoneCell(date: "10/11/2022", description: "First offline event - “Platform Engineering” in collaboration with Skedulo"),
    const MilestoneCell(date: "12/11/2022 - 20/11/2022", description: "First online writing contest hosted by WTM HCMC - Em và Tech"),
    const MilestoneCell(date: "17/12/2022", description: "First Devfest and the first time running a full event for the team with Tech Career Masterclass: How to start and thrive in tech"),
    const MilestoneCell(date: "25/02/2023", description: "Coming to TEDxDakao: Aspiration and promoting WTM HCMC"),
    const MilestoneCell(date: "08/04/2023", description: "The first IWD hosted by WTM HCMC This is also the first IWD that organized by a WTM team in Vietnam."),
    const MilestoneCell(date: "07/05/2023", description: "Plan and host  a half-day event for Dariu foundation: AI - trends & career prospects"),
    const MilestoneCell(date: "21/05/2023", description: "First internal training on how to use Jira to optimize the team’s workflow"),
    const MilestoneCell(date: "02/06/2023 - 04/06/2023", description: "The first WTM HCMC’s team building"),
    const MilestoneCell(date: "08/07/2023", description: "Collaborate with GDG HCMC to host I/O Extended"),
    const MilestoneCell(date: "14/10/2023", description: "Successfully launch the new format program: Mentorship program - Sudo Code 2023"),
    const MilestoneCell(date: "15/10/2023", description: "WTM HCMC’s 1st birthday party"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff222222),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/icon/logo.png',
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/icon/quote.png", height: 100,),
                      const Padding(
                        padding: EdgeInsets.only(left: 100.0),
                        child: Text(
                          "While thinking about  how to mark our first year as members of WTM HCMC, "
                              "I find myself looking back on the incredible journey we've been through "
                              "and I’m so proud of each and every one of you who has contributed to the growth"
                              " of this community, day by day. Although challenges may lie ahead, our team never "
                              "say no We always strive to find ways for our 'crazy ideas,' and that spirit has brought us "
                              "here today.Life offers us numerous paths, some chosen and some unexpected, and I want to "
                              "express my deep appreciation for your willingness to embrace this romantic journey with WTM HCMC.",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("- Ngoc Vo -\nFounder & General lead", style: TextStyle(color: Colors.white, fontSize: 14, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 150,),
                Expanded(
                  child: Image.asset(
                    'assets/image/Logo_1Y-03.png',
                    height: 400,
                  ),
                ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CarouselSlider(
                            items: photos,
                            options: CarouselOptions(
                              height: 330,
                              aspectRatio: 16 / 9,
                              viewportFraction: 0.8,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration: Duration(milliseconds: 800),
                              autoPlayCurve: Curves.linear,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,
                              // onPageChanged: callbackFunction,
                              scrollDirection: Axis.horizontal,
                            )),
                        SizedBox(height: 50,),
                        IgniterPage(),
                      ],
                    ),
                  ),
                  SizedBox(width: 150,),
                  Expanded(child:
                  Column(
                    children: [
                      SizedBox(height: 50,),
                      SizedBox(
                        height: 1400,
                        child: Timeline.tileBuilder(
                          builder: TimelineTileBuilder.fromStyle(
                            contentsAlign: ContentsAlign.alternating,
                            contentsBuilder: (context, index) => milestones[index],
                            itemCount: milestones.length,
                          ),
                        ),
                      ),
                      SizedBox(height: 100,),
                      SizedBox(
                        height: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/Illustration.png", height: 300,),
                            SizedBox(width: 20,),
                            Image.asset("assets/image/IGNITER.png", height: 100,),
                          ],
                        ),
                      )
                    ],
                  )),
                ],
              ),
              Center(child: IgniteCollabPage()),
              SizedBox(
                height: 20,
              ),
              WishPage()
            ],
          ),
        ),
      ),
    );
  }
}
