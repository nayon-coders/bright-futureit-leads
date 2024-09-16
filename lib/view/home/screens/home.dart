import 'package:birghtfutureadmissions/view/home/widgets/new.leads.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Bright Future IT Lead"),
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: TabBar(
                tabs: [
                  Tab(
                    child: Text("New"),
                  ),
                  Tab(
                    child: Text("Old"),
                  ),
                  Tab(
                    child: Text("Called"),
                  ),
                ],
              ),
          ),
        ),


        body: TabBarView(
          children: [
            Center(
              child: NewLeads()
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
