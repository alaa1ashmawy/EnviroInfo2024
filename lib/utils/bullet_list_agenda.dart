import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BulletListAgenda extends StatelessWidget {
  const BulletListAgenda({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('DAY 1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Roboto')),
                SizedBox(width: 10),
                Expanded(
                  child: BulletList(
                    items: [
                      'First item in the list',
                      'Second item in the list',
                      'Third item in the list',
                    ],
                    bulletStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('DAY 2', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Roboto')),
                SizedBox(width: 10),
                Expanded(
                  child: BulletList(
                    items: [
                      'First item in the list',
                      'Second item in the list',
                      'Third item in the list',
                    ],
                    bulletStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('DAY 3', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Roboto')),
                SizedBox(width: 10),
                Expanded(
                  child: BulletList(
                    items: [
                      'First item in the list',
                      'Second item in the list',
                      'Third item in the list',
                    ],
                    bulletStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
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

class BulletList extends StatelessWidget {
  final List<String> items;
  final TextStyle bulletStyle;

  const BulletList({
    required this.items,
    this.bulletStyle = const TextStyle(fontSize: 20),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: bulletStyle),
            Expanded(child: Text(item, style: bulletStyle)),
          ],
        );
      }).toList(),
    );
  }
}
