// ignore: file_names
import 'package:flutter/material.dart';
import 'package:petshop_app/Theme.dart';
import 'package:petshop_app/home.dart';
import 'package:petshop_app/pesanan.dart';
import 'package:petshop_app/profile.dart';

// ignore: camel_case_types
class landingPage extends StatefulWidget {
  const landingPage({super.key});

  @override
  State<landingPage> createState() => _secondPageState();
}

// ignore: camel_case_types
class _secondPageState extends State<landingPage> {
  List<BottomNavigationBarItem> navbarItem = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.assignment), label: "order list"),
    const BottomNavigationBarItem(icon: Icon(Icons.add), label: "add order"),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _index = 0;
  final List<Widget> _body = [const pesanan(), const order(), const profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade200,
        title: const Text(
          'Pet Cat',
          style: TextStyle(color: Colors.black, fontFamily: 'Acme'),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: RadialGradient(radius: 2.0, colors: <Color>[
                Colors.pink.shade400,
                Colors.pink.shade100,
              ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('Images/profile.jpg'),
                    radius: 50,
                  ),
                  Text(
                    "Silvia Ananda",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Fjalla',
                        wordSpacing: 1,
                        inherit: false),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.grey),
              ),
              subtitle: const Text(
                "Application user accounts",
                style: TextStyle(color: Colors.grey),
              ),
              tileColor: Colors.white,
              onTap: () {
                _scaffoldKey.currentState!.openEndDrawer();
                setState(() {
                  _index = 2;
                });
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              title: const Text(
                "Settings",
                style: TextStyle(color: Colors.grey),
              ),
              subtitle: const Text(
                "Application Settings",
                style: TextStyle(color: Colors.grey),
              ),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return const Settings();
                  }),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              title: const Text(
                "Announcement",
                style: TextStyle(color: Colors.grey),
              ),
              subtitle: const Text(
                "Announcement !",
                style: TextStyle(color: Colors.grey),
              ),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return const pemberitahuan();
                  }),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings_applications,
                color: Colors.grey,
              ),
              title: const Text(
                "About Application",
                style: TextStyle(color: Colors.grey),
              ),
              subtitle: const Text(
                "Application Specifications",
                style: TextStyle(color: Colors.grey),
              ),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return const tentang();
                  }),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.help,
                color: Colors.grey,
              ),
              title: const Text(
                "Privacy Policy",
                style: TextStyle(color: Colors.grey),
              ),
              subtitle: const Text(
                "permissions of the application",
                style: TextStyle(color: Colors.grey),
              ),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return const kebijakan();
                  }),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.grey,
              ),
              //dialog
              title: const Text(
                "Log Out",
                style: TextStyle(color: Colors.grey),
              ),
              subtitle: const Text(
                "Exit the application",
                style: TextStyle(color: Colors.grey),
              ),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return const home();
                  }),
                );
              },
            ),
            const ListTile(
              title: Text(""),
              tileColor: Colors.white,
            ),
          ],
        ),
      ),
      body: _body.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        items: navbarItem,
        currentIndex: _index,
        onTap: (i) {
          setState(() {
            _index = i;
          });
        },
      ),
    );
  }
}

// ignore: camel_case_types
class pemberitahuan extends StatelessWidget {
  const pemberitahuan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "announcement",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.pink.shade200,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 0.0),
              child: const Image(
                image: AssetImage('images/petshop_logo.png'),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: const Text(
                textAlign: TextAlign.center,
                "Here a notification will appear\nfrom service",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Acme",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class tentang extends StatelessWidget {
  const tentang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tentang Aplikasi",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.pink.shade200,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: const Text(
            "Name : Silvia Ananda\nNIM  : 2009106120\nApp Name : Pet Cat",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class kebijakan extends StatelessWidget {
  const kebijakan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "privacy policy",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.pink.shade200,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: ListView(children: [
          Column(
            children: const [
              Text(
                "\nPrivacy Policy for Pet Cat",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Acme",
                ),
              ),
              Text(
                "At Pet Cat, accessible from www.youtube.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Pet Cat and how we use it.\nIf you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                "\nLog Files",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Acme",
                ),
              ),
              Text(
                "Pet Cat follows a standard procedure of using log files. These files log visitors when they visit Apps. All hosting companies do this and a part of hosting services' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users' movement on the Apps, and gathering demographic information. Our Privacy Policy was created with the help of the Privacy Policy Generator.",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                "\nCookies",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Acme",
                ),
              ),
              Text(
                "Like any other Apps, Pet Cat uses 'cookies'. These cookies are used to store information including visitors' preferences, and the pages on the Apps that the visitor accessed or visited. The information is used to optimize the users' experience by customizing our web page content based on visitors' browser type and/or other information.",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

Future<dynamic> CustomAlert(
    BuildContext context, String title, String content) {
  return showDialog<dynamic>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
