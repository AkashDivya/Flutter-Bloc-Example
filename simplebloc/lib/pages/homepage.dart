import 'package:flutter/material.dart';

import '../ui_components/custom_appBars.dart';
import './streamDataTab.dart';
import './triggerLogicTab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //Default tab controller wraps everything.
      length: 2, //Length of Tabs
      child: Scaffold(
        appBar: primaryAppbar(context), //Custom AppBar
        body: Container(
          child: TabBarView(
            //Pages Switches on selection of the respective tabs.
            children: <Widget>[
              //TabView 1
              StreamDataTab(),

              //TabView 2
              TriggerLogicTab(),
            ],
          ),
        ),

        //Actual Tabs at the bottom.
        bottomNavigationBar: Container(
          //Container used for rounded Corners on top.
          child: TabBar(
            tabs: <Widget>[
              Tab(
                //Tab 1
                child: Text(
                  'Stream \nJust Data.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                //Tab 2
                child: Text(
                  'Trigger \nLogic/Function.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
            indicatorColor: Colors.transparent,
            labelPadding: EdgeInsets.symmetric(vertical: 40),
            unselectedLabelColor: Theme.of(context).accentColor,
          ),
          height: 120,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
