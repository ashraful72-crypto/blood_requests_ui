import 'package:flutter/material.dart';
import 'blood_request_model.dart';
import 'blood_request_card.dart';

class BloodRequestsScreen extends StatelessWidget {
  BloodRequestsScreen({super.key});

  final List<BloodRequestModel> bloodRequests = [
    BloodRequestModel(
      bloodGroup: 'O- Blood Needed',
      units: '3 Units',
      hospital: 'Khulna City Medical College Hospital, KDA Ave...',
    ),
    BloodRequestModel(
      bloodGroup: 'O+ Blood Needed',
      units: '2 Units',
      hospital: 'Khulna City Medical College Hospital, KDA Ave...',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Blood Requests',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: bloodRequests.map((request) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: BloodRequestCard(request: request),
            );
          }).toList(),
        ),
      ),
    );
  }
}