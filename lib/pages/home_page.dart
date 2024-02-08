import 'package:flutter/material.dart';
import 'package:qr_code_scanner_and_generator_tutorial/pages/generate_code_page.dart';
import 'package:qr_code_scanner_and_generator_tutorial/pages/scan_code_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'QR Code Scanner and Generator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                child: const Icon(
                  Icons.qr_code_2,
                  size: 200,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GenerateCodePage(),
                  ),
                );
              },
              child: const Text(
                'Generate QR Code',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScanCodePage()));
                },
                child: const Text(
                  'Scan QR Code',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
