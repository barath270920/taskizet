import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f1f1),
      appBar: AppBar(
        backgroundColor: const Color(0xfff0f1f1),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Settings",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        leadingWidth: 130,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 170,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffffab40),
                ),
                child: const Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 20,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/my.JPG'),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 170,
                      child: Text(
                        'Barath\n Nagarajan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SizedBox(
                          width: 35,
                          height: 35,
                          child: Image.asset('assets/app.png'),
                        ),
                      ),
                      title: const Text(
                        'Appearance',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                      subtitle: const Text('Make Ziars App yours',style: TextStyle(fontSize: 12,color: Colors.grey),),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const Divider(),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SizedBox(
                          width: 35,
                          height: 35,
                          child: Image.asset('assets/finger.png'),
                        ),
                      ),
                      title: const Text(
                        'Privacy',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                      subtitle:
                      const Text('Lock Ziar App to improve your privacy',style: TextStyle(fontSize: 12,color: Colors.grey)),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const Divider(),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SizedBox(
                          width: 35,
                          height: 35,
                          child: Image.asset('assets/mode.png'),
                        ),
                      ),
                      title: const Text(
                        'Dark mode',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                      subtitle: const Text('Automatic',style: TextStyle(fontSize: 12,color: Colors.grey)),
                      trailing: CupertinoSwitch(
                        value: isSwitched,
                        activeColor: Colors.orange,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SizedBox(
                          width: 35,
                          height: 35,
                          child: Image.asset('assets/about.png'),
                        ),
                      ),
                      title: const Text(
                        'About',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                      subtitle: const Text('Learn more about Ziars App',style: TextStyle(fontSize: 12,color: Colors.grey)),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SizedBox(
                          width: 35,
                          height: 35,
                          child: Image.asset('assets/feed.png'),
                        ),
                      ),
                      title: const Text(
                        'Send Feedback',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                      subtitle: const Text('Let us know how we can make Ziar app',style: TextStyle(fontSize: 12,color: Colors.grey)),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Account",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(16.0),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.logout),
                      ),
                      title: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Sign Out',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                    Divider(),
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.mail),
                      ),
                      title: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Change email',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                    Divider(),
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.phone),
                      ),
                      title: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Change Number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
