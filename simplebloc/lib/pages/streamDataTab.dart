import 'package:flutter/material.dart';

import '../ui_components/imageCard.dart';
import '../bloc/justDataBloc.dart';

class StreamDataTab extends StatefulWidget {
  //Tab 1
  @override
  _StreamDataTabState createState() => _StreamDataTabState();
}

class _StreamDataTabState extends State<StreamDataTab> {
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
                imageCard('assets/images/eminem.jpg'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Hi!\nMy Name is..\nWhat?\nMy Name is..\nWho?\nMy Name is..',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),

                    //StreamBuilder to stream Just Data.
                    StreamBuilder(
                      initialData: '...',
                      stream: justDataBloc.streamJustData,
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        return Text(
                          snapshot.data,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 38,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            //Row of Buttons
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  //Feeds data into JustDataBloc
                  onPressed: () {
                    justDataBloc.feedJustData('Slim Shady');
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
              ),
              SizedBox(width: 15),
              InkWell(
                //Reset Button
                //Feeds data into JustDataBloc
                onTap: () {
                  setState(() {
                    justDataBloc.feedJustData('...');
                  });
                },
                child: Container(
                  child: Icon(
                    Icons.loop,
                    size: 25,
                    color: Colors.white,
                  ),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
