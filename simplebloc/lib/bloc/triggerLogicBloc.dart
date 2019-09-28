import 'dart:async';
import '../event/event.dart';

String myName;
String myImagePath;

void switchIdentity(t) {
  //This the Function that is needed to be triggered.
  if (myName == 'Bruce Wayne') {
    myName = 'Batman';
    myImagePath = 'assets/images/batman.jpg';
  } else {
    myName = 'Bruce Wayne';
    myImagePath = 'assets/images/bruce.jpg';
  }
}

class TriggerLogicBloc {
  //This is the Stream that triggers the Function.

  //Controller of this Stream.
  var _triggerLogicController = StreamController<Event>();

  //This Function Feeds the Trigger to execute the Function.
  Function(Event) get sinkTriggerLogic => _triggerLogicController.sink.add;

  //This is Stream(Output) of this TriggerLogicBlog
  Stream<Event> get streamTriggerLogic => _triggerLogicController.stream;

  TriggerLogicBloc() {
    //The Stream is listening to the Function.
    streamTriggerLogic.listen(switchIdentity);
  }

  dispose() {
    //Dispose Stream to avoid memory leak.
    _triggerLogicController?.close();
  }
}

//Global Variable for this Stream.
TriggerLogicBloc triggerLogicBloc = TriggerLogicBloc();
