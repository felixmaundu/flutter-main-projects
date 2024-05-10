import 'package:flutter/material.dart';
import 'package:project12/pages/top_tabs/coutriesPage.dart';
import 'package:project12/pages/top_tabs/seasonsPage.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Countries'),
            Tab(text: 'Seasons'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: CountriesPage(),
          ),
          Center(
            child: SeasonsPage(),
          ),
        ],
      ),
    );
  }
}
