import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 128, 0, 128),
        title: const Text('Contact Us'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: 200,
                  child: Lottie.asset("animations/phone.json"),
                ),
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 255, 255, 255),
                  indent: 120,
                  endIndent: 120,
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 150,
                  child: Center(
                    child: InkWell(
                      onTap: () async {
                        final Uri url = Uri(scheme: 'tel', path: "8374420153");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          print('cannot launch this url');
                        }
                      },
                      child: Text(
                        '8374420153',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Color.fromARGB(255, 128, 0, 128),
                  height: 80,
                  indent: 80,
                  endIndent: 80,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 100,
                  child: Lottie.asset("animations/loc.json"),
                ),
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 255, 255, 255),
                  indent: 120,
                  endIndent: 120,
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'THANDRI SANNIDHI MINISTRIES',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'CHILAKALURIPET,GUNTUR DIST',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'PIN CODE-522616',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'ANDHRA PRADESH,INDIA',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
