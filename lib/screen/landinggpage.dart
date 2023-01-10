import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final Uri giturl = Uri.parse('https://github.com/pamotinggi');

  Future<void> _launchgit() async {
    if (!await launchUrl(giturl)) {
      throw 'Could not launch the url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 5),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/kamiya.png'),
            ),
            SizedBox(height: 5),
            Text(
              "Pamotinggi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://github.com/pamotinggi'),
              builder: (context, followLink) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    fixedSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                onPressed: followLink,
                child: Text("Github"),
              ),
            ),
            SizedBox(height: 10),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse(
                  'https://www.youtube.com/channel/UCQJv84_rn-16mkT__RacQ9Q'),
              builder: (context, followLink) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    fixedSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                onPressed: followLink,
                child: Text("Youtube"),
              ),
            ),
            SizedBox(height: 10),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse(
                  'https://www.instagram.com/paaamoooo/'),
              builder: (context, followLink) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    fixedSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                onPressed: followLink,
                child: Text("Instagram"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
