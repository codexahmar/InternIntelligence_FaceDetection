import 'package:flutter/material.dart';

class DetectionResultsCard extends StatelessWidget {
  final String resultText;

  const DetectionResultsCard({Key? key, required this.resultText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      constraints: BoxConstraints(minHeight: 200),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Detection Results',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
          SizedBox(height: 8),
          SelectableText(
            resultText.isEmpty
                ? 'Face detection results will appear here'
                : resultText,
            style:
                TextStyle(fontSize: 16, height: 1.5, color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
