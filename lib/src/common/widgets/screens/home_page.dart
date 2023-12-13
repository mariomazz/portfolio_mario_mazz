import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_mario_mazz/src/common/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Benvenuto nel Mio Portfolio',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/cat.jpeg'),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Mario Mazzarelli',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Sviluppatore Software',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20.0),
            // Aggiungi qui altri dettagli, come link ai tuoi profili social, descrizione, progetti, ecc.
            ElevatedButton(
              onPressed: () async {
                await canLaunchUrlString(linkedinUrl).then((result) async {
                  if (result) {
                    await launchUrlString(linkedinUrl);
                  }
                });
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(FontAwesomeIcons.linkedin),
                  Gap(10),
                  Text(
                    'LinkedIn',
                  ),
                ],
              ),
            ),
            const Gap(10),
            ElevatedButton(
              onPressed: () async {
                await canLaunchUrlString(githubUrl).then((result) async {
                  if (result) {
                    await launchUrlString(githubUrl);
                  }
                });
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(FontAwesomeIcons.github),
                  Gap(10),
                  Text(
                    'GitHub',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
