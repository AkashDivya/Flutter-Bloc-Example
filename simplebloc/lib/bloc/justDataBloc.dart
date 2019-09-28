import 'dart:async';

class JustDataBloc {
  //This is the Stream that streams Just Data.

  //Controller of this Stream.
  var _justDataController = StreamController<String>.broadcast();

  //Function to feed Data.
  Function(String) get feedJustData => _justDataController.sink.add;

  //Stream to output the Data
  Stream<String> get streamJustData => _justDataController.stream;

  dispose() {
    //Dispose Stream to avoid memory leak.
    _justDataController?.close();
  }
}

//Global Variable for this Stream.
JustDataBloc justDataBloc = JustDataBloc();
