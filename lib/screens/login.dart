import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Container(
          width: MediaQuery.of(context).size.width*.5,
          child: Drawer(
            child: Text('End Drawer'),
          ),
        ),
      appBar: AppBar(
        title: Text("Login Screen", textAlign: TextAlign.center,),
      ),
      body: Container(
        
        child:Column(
          children: 
                  [createLogo(context),
                    ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, "/appbar");
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)
                    )
                  ),
                  child: const Text("next", style: TextStyle(color: Colors.black),),
                  
                  ),
                ],
        ),),
              
    );
  }
  Widget createLogo(BuildContext context){
    switch(Theme.of(context).platform){
      case TargetPlatform.android:
      return Image.asset("assets/Android_robot.png");   
      case TargetPlatform.fuchsia:
        // TODO: Handle this case.
        break;
      case TargetPlatform.iOS:
        // TODO: Handle this case.
        break;
      case TargetPlatform.linux:
        // TODO: Handle this case.
        break;
      case TargetPlatform.macOS:
        // TODO: Handle this case.
        break;
      case TargetPlatform.windows:
      return Image.asset("assets/windows.png");
      default:
      return Image.asset("assets/google.png");
    }

    return Container();

  }

  Widget _buildLogo() {
    if (defaultTargetPlatform == TargetPlatform) {
      return Image.asset("assets/Android_robot.png");
    } else if (defaultTargetPlatform == TargetPlatform.windows) {
      return Image.asset("assets/windows.png");
    } else {
      return Image.asset("assets/google.png");
    }
  }
}



// Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (BuildContext , BoxConstraints constraints){
//           if(constraints.maxWidth>600){
//             return webUI(context);
//           } else{
//             return mobileUI(context);
//           }
//         },
//        )
//     );
//   }

//   Widget webUI(BuildContext context){
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       child:
//       Stack(
//         children: [
//           Row()
//         ],
//       )
//     );
//   }

//   Widget mobileUI(BuildContext context){
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//     );
//   }