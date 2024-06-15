import 'package:flutter/material.dart';

class ContainerLayout extends StatelessWidget {
  void _onButtonPressed(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onButtonPressed(context, '/button1'),
                    child: Container(
                      color: Colors.white10,
                      margin: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.home, size: 50), // Add icon
                          SizedBox(height: 8),
                          Text('Button 1'), // Add text
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onButtonPressed(context, '/button2'),
                    child: Container(
                      color: Colors.white10,
                      margin: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.search, size: 50), // Add icon
                          SizedBox(height: 8),
                          Text('Button 2'), // Add text
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onButtonPressed(context, '/button3'),
                    child: Container(
                      color: Colors.white10,
                      margin: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.person, size: 50), // Add icon
                          SizedBox(height: 8),
                          Text('Button 3'), // Add text
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onButtonPressed(context, '/button4'),
                    child: Container(
                      color: Colors.white10,
                      margin: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.settings, size: 50), // Add icon
                          SizedBox(height: 8),
                          Text('Button 4'), // Add text
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
