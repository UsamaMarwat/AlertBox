import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class AlertBoxScreen extends StatefulWidget {
  const AlertBoxScreen({super.key});

  @override
  State<AlertBoxScreen> createState() => _AlertBoxScreenState();
}

class _AlertBoxScreenState extends State<AlertBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Alert Box'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.success,
                  text: 'Data Submitted Successfully!',
                  title: 'Successful',
                );
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.lightGreen.shade300,
                ),
                child: const Center(
                  child: Text('Success'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.error,
                  title: 'Oops...',
                  text: 'Sorry, something went wrong',
                );
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepOrange.shade100,
                ),
                child: const Center(
                  child: Text('Error'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.warning,
                  text: 'You just Entered Wrong Information',
                );
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.purple.shade100,
                ),
                child: const Center(
                  child: Text('Warning'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                QuickAlert.show(
                    context: context,
                    type: QuickAlertType.loading,
                    title: 'Loading',
                    text: 'Fetching the Data',
                    confirmBtnText: 'okay');
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.lightBlue.shade200,
                ),
                child: const Center(
                  child: Text('Loading'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                QuickAlert.show(
                    context: context,
                    type: QuickAlertType.confirm,
                    text: 'Do you want to Delete',
                    confirmBtnText: 'Yes',
                    cancelBtnText: 'No');
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.lime.shade300,
                ),
                child: const Center(
                  child: Text('Confirm'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
