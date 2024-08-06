import 'package:flutter/material.dart';
import 'package:test_mangement/pages/events_page/widgets/event_page_body.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      //  appBar: AppBar(),
      body: EventsBody(),
    );
  }
}
