import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;

  const AppScaffold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WindowTitleBarBox(
            child: Container(
              color: Colors.teal,
              child: MoveWindow(
                  // onDoubleTap: () => appWindow.maximizeOrRestore(),
                  ),
            ),
          ),
          child,
          // Expanded(
          //   child: Center(
          //     child: Text("Width: ${MediaQuery.of(context).size.width}"),
          //   ),
          // ),
          //
          // Expanded(
          //   child: Center(
          //     child: Text("height: ${MediaQuery.of(context).size.height}"),
          //   ),
          // ),
        ],
      ),
    );
  }
}
