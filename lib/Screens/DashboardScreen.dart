import 'package:dashboard/Screens/Calender.dart';
// import 'package:dashboard/components/PerformanceGraphCard.dart';
import 'package:dashboard/components/ProjectCard.dart';
import 'package:dashboard/components/TopCreatorsCard.dart';
import 'package:dashboard/components/TopRattingProject.dart';
import 'package:dashboard/components/rightSlider/AnniversaryCard.dart';
import 'package:dashboard/components/rightSlider/BirthdayCard.dart';
import 'package:dashboard/components/rightSlider/CalendarCard.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBorad"),
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Builder(builder: (context) {
                      return Drawer(
                          child: ListView(
                        children: [
                          Container(
                            color: Colors.grey[200],
                            child: Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  )),
                            ),
                          ),
                          Sidebar(),
                        ],
                      ));
                    });
                  }),
                );
              },
              icon: const Icon(
                Icons.menu,
              ));
        }),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return RightSidebar();
                    }),
                  ),
              icon: Icon(Icons.notifications))
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return Row(
              children: [
                // Sidebar
                SingleChildScrollView(child: Sidebar()),
                // Main Content
                Expanded(
                  child: Column(
                    children: [
                      HeaderBar(),
                      Expanded(
                        child: MainContent(),
                      ),
                    ],
                  ),
                ),
                // Right Sidebar
                RightSidebar(),
              ],
            );
          } else if (constraints.maxWidth > 800 &&
              constraints.maxWidth <= 1200) {
            return Row(
              children: [
                // Sidebar
                Sidebar(),
                // Main Content
                Expanded(
                  child: Column(
                    children: [
                      HeaderBar(),
                      Expanded(
                        child: MainContent(),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                HeaderBar(),
                Expanded(
                  child: MainContent(),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

// Sidebar
class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.grey[200],
      child: Column(
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                child: Image.asset(
                  'assets/logo.png',
                  height: 50,
                  width: 50,
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 25,
                endIndent: 25,
              ),
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              const Text(
                'Pooja Mishra',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                          color: Colors.blueAccent,
                          width: BorderSide.strokeAlignCenter),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Admin',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 25,
                endIndent: 25,
              ),
            ],
          ),
          Container(
              // color: Colors.grey[400],
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(20)),
                color: Colors.grey[400],
              ),
              child: Home(icon: Icons.home, label: 'Home')),
          SidebarItem(icon: Icons.person, label: 'Employees'),
          SidebarItem(icon: Icons.schedule, label: 'Attendance'),
          SidebarItem(icon: Icons.pie_chart, label: 'Summary'),
          SidebarItem(icon: Icons.info, label: 'Information'),
          Container(
              color: Colors.blue[200],
              child: SidebarItem1(label: 'WORKSPACES', icon: Icons.add)),
          SidebarItem2(
            label: 'Adstacks',
            icon: Icons.keyboard_arrow_down_sharp,
          ),
          SidebarItem2(
            label: 'Finance',
            icon: Icons.keyboard_arrow_down_sharp,
          ),
          SizedBox(height: 30),
          SidebarItem(icon: Icons.settings, label: 'Settings'),
          SidebarItem(icon: Icons.logout, label: 'Logout'),
        ],
      ),
    );
  }
}

class SidebarItem extends StatelessWidget {
  final IconData icon;
  final String label;

  SidebarItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: ListTile(
        leading: Icon(icon, size: 20),
        title: Text(label, style: TextStyle(fontSize: 14)),
        onTap: () {},
      ),
    );
  }
}

class Home extends StatelessWidget {
  final IconData icon;
  final String label;

  Home({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: ListTile(
        leading: Icon(
          icon,
          size: 20,
          color: Colors.black,
        ),
        title: Text(label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        onTap: () {},
      ),
    );
  }
}

class SidebarItem1 extends StatelessWidget {
  final IconData icon;
  final String label;

  SidebarItem1({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: ListTile(
        trailing: Icon(icon, size: 20),
        title: Text(label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        onTap: () {},
      ),
    );
  }
}

class SidebarItem2 extends StatelessWidget {
  final IconData icon;
  final String label;

  SidebarItem2({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Icon(icon, size: 20),
      title: Padding(
        padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
        child: Text(label, style: TextStyle(fontSize: 16)),
      ),
      onTap: () {},
    );
  }
}

// Header Bar
class HeaderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Home',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            width: MediaQuery.of(context).size.width > 400 ? 250 : 400,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Main Content
class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return Column(
                children: [
                  TopRattingProject(),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(child: ProjectCard()),
                      SizedBox(width: 8),
                      Expanded(child: TopCreatorsCard()),
                    ],
                  ),
                  SizedBox(height: 20),
                  // PerformanceGraph(),
                ],
              );
            } else {
              return Column(
                children: [
                  TopRattingProject(),
                  SizedBox(height: 20),
                  ProjectCard(),
                  SizedBox(height: 8),
                  TopCreatorsCard(),
                  SizedBox(height: 20),
                  // PerformanceGraph(),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

// Right Sidebar
class RightSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.grey[100],
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Colors.grey[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.note, size: 28),
                    SizedBox(width: 20),
                    Icon(Icons.notifications, size: 28),
                    SizedBox(width: 20),
                    IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon:
                            Icon(Icons.power_settings_new_outlined, size: 28)),
                    SizedBox(width: 80),
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CalendarCard(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TodayBirthdayCard(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnniversaryCard(),
          ),
        ],
      ),
    );
  }
}
