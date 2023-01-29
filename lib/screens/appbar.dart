import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
class appbar extends StatelessWidget {
  const appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Container(
          width: MediaQuery.of(context).size.width*.5,
          child: Drawer(
            child: Text('End Drawer'),
          ),
        ),
        body: Center(
          child:
          ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, "/login");
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                )
              ),
              child: const Text("Go to login", style: TextStyle(color: Colors.black),),
        ),
      ),
      );
  }
}