import 'package:flutter/material.dart';
import 'package:test_mangement/pages/service_condition_page/widgets/service_condition_container.dart';

class ServiceConditionBody extends StatelessWidget {
  const ServiceConditionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: ServiceConditionContainer(),
      ),
    );
  }
}
