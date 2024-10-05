import 'package:appointment_app/feature/home/ui/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_bottom_app_bar.dart';
import '../../../core/widgets/custom_floating_action_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomeViewBody()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloationgactionButton(),
      bottomNavigationBar: CustomBottomAppBar()
    );
  }
}



