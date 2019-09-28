import 'package:flutter/material.dart';

import '../ui_components/imageCard.dart';
import '../bloc/triggerLogicBloc.dart';
import '../event/event.dart';

class TriggerLogicTab extends StatefulWidget {
  //Tab 2
  @override
  _TriggerLogicTabState createState() => _TriggerLogicTabState();
}

class _TriggerLogicTabState extends State<TriggerLogicTab> {
  @override
  void initState() {
    super.initState();
    //Global Variables gets initiated.
    myName = 'Bruce Wayne';
    myImagePath = 'assets/images/bruce.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Expanded(
            child: Stack(
              //Stacks texts over Image.
              alignment: Alignment.center,
              children: <Widget>[
                //Custom Image Card widget.
                imageCard(myImagePath),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'It\'s not\nwho I am\nunderneath,\nbut what I do that\ndefines me.\n\nAnyway, I am',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),

                    //Text that gets updated.
                    Text(
                      myName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 38,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          RaisedButton(
            //The Button
            //Streams data into TriggerLogicBloc
            onPressed: () {
              setState(() {
                triggerLogicBloc.sinkTriggerLogic(TriggerSwitchId());
              });
            },
            child: Text(
              'Tell Them',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            elevation: 0,
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
