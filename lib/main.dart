import 'dart:io';
import 'dart:math';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:installed_apps/app_info.dart';
import 'package:installed_apps/installed_apps.dart';


void main() => runApp(App());

class App extends MaterialApp {
  @override
  Widget get home => HomeScreen();
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String deviceName;

    late String deviceVersion;

    late String identifier;

    @override
    void initState(){
      super.initState();
      getDeviceDetails();

    }

   getDeviceDetails() async {
   
    final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        deviceName = build.model;
        deviceVersion = build.version.toString();
        identifier = build.androidId;  //UUID for Android
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        deviceName = data.name;
        deviceVersion = data.systemVersion;
        identifier = data.identifierForVendor;  //UUID for iOS
      }
    } on PlatformException {
      print('Failed to get platform version');
    }

//if (!mounted) return;
print(deviceName);
print(deviceVersion);
print(identifier);
// return [deviceName, deviceVersion, identifier];
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Installed Apps Example")),
      body: ListView(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ListTile(
                title: Text("Installed Apps"),
                subtitle: Text(
                    "Get installed apps on device. With options to exclude system app, get app icon & matching package name prefix."),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InstalledAppsScreen(deviceName),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            getDeviceDetails();
          }, child: Text("bUTTON"))
        
        ],
      ),
    );
  }
}

class InstalledAppsScreen extends StatefulWidget {
  var name;
  InstalledAppsScreen(this.name);
  

  @override
  State<InstalledAppsScreen> createState() => _InstalledAppsScreenState(name);
}

class _InstalledAppsScreenState extends State<InstalledAppsScreen> {
   var name;
  _InstalledAppsScreenState(this.name);
  var SM_J260F_Battery=[ 5,10,10,20,5,5,5,5,5,5,5,5,10,5,5,5,10,20,25,10,20,25,10,5,5,20,20,20,20,10,5,5,5,10,20,25,10,10,20,5,5,5,5,5,5,5,5,10,5,5,5,10,20,25];

  var SM_J260F_Memory=[5,5,5,5,5,5,5,10,5,5,5,10,20,25,10,20,25,1,10,10,20,5,5,5,5,5,5,5,5,10,5,5,5,10,20,25,10,20,5,5,5,5,5,5,5,5,10,5,5,5,10,20,25,10,10,10,10];

   var SM_J260F_Battery1=[10,5,10,5,20,20,10,10,5,10,10,30,20,10,5,10,10,10,40,30,50,30,20,20,20,10,30,40,50,20,20,10,101,10,30,20,20,10,20,10,20,30,40,30,20,10,10];

  var SM_J260F_Memory1=[5,10,10,10,20,20,30,10,20,10,10,5,5,5,10,10,30,20,20,20,20,10,10,20,20,20,20,10,10,10,15,15,15,14,13,14,15,10,10,10,20,20,20,10,30,20,202,20,20];


 var SM_J260F_Battery2=[10,10,10,10,10,10,20,20,10,10,20,20,20,10,30,30,10,10,10,5,10,50,10,10,5,5,10,10,10,10,5,10,10,10,10,10,5,10,12,15,10,10,5,40,10,20,10,20,20,30,30 ];

  var SM_J260F_Memory2=[10,20,10,10,10,30,20,20,20,30,30,30,40,10,10,10,10,20,10,15,5,10,20,5,10,5,10,10,3,10,10,10,20,10,10,10,20,20,20,20,20,20,10,10,10,15,10,20,20,20,20,];
 
  var SM_J260F_Battery3=[ 10,20,20,20,10,10,10,20,5,10,1,3,5,10,10,10,10,20,20,20,10,40,30,40,30,10,10,20,30,30,10,10,10,40,50,10,20,10,10,20,20,30,30,30,20,10,10,20,20,20];

  var SM_J260F_Memory3=[5,10,10,10,20,20,30,10,20,10,10,5,5,5,10,10,30,20,20,20,20,10,10,20,20,20,20,10,10,10,15,15,15,14,13,14,15,10,10,10,20,20,20,10,30,20,202,20,20];
 
  var SM_J260F_Battery4=[10,5,10,5,20,20,10,10,5,10,10,30,20,10,5,10,10,10,40,30,50,30,20,20,20,10,30,40,50,20,20,10,101,10,30,20,20,10,20,10,20,30,40,30,20,10,10];

  var SM_J260F_Memory4=[ 10,20,20,20,10,10,10,20,5,10,1,3,5,10,10,10,10,20,20,20,10,40,30,40,30,10,10,20,30,30,10,10,10,40,50,10,20,10,10,20,20,30,30,30,20,10,10,20,20,20];
  var SM_J260F_Battery5=[ 10,20,20,20,10,10,10,20,5,10,1,3,5,10,10,10,10,20,20,20,10,40,30,40,30,10,10,20,30,30,10,10,10,40,50,10,20,10,10,20,20,30,30,30,20,10,10,20,20,20];


  var SM_J260F_Memory5=[ 5,10,10,20,5,5,5,5,5,5,5,5,10,5,5,5,10,20,25,10,20,25,10,5,5,20,20,20,20,10,5,5,5,10,20,25,10,10,20,5,5,5,5,5,5,5,5,10,5,5,5,10,20,25];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Installed Apps")),
      body: FutureBuilder<List<AppInfo>>(
        future: InstalledApps.getInstalledApps(true, true),
        builder:
            (BuildContext buildContext, AsyncSnapshot<List<AppInfo>> snapshot) {
          return snapshot.connectionState == ConnectionState.done
              ? snapshot.hasData
                  ? ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        AppInfo app = snapshot.data![index];
                        return Card(
                          child: ListTile(
                            // leading: CircleAvatar(
                            //   backgroundColor: Colors.transparent,
                            //   // child: Image.memory(app.icon!),
                            // ),
                            title: Text(app.name!),
                            subtitle:
                            name.toString().startsWith("A") ||  name.toString().startsWith("a")
                            ||  name.toString().startsWith("C" )  || name.toString().startsWith("c" )
                            ||  name.toString().startsWith("g")  ||  name.toString().startsWith("G") 
                            || name.toString().startsWith("S")  || name.toString().startsWith("s")
                            || name.toString().startsWith("R")  || name.toString().startsWith("r")
                            
                            
                            ?
                             Text("Battery Use : "+SM_J260F_Battery[index].toString()+"%" +" Memory Use :  "+ SM_J260F_Memory[index].toString()+"%"):

                                 name.toString().startsWith("B") ||  name.toString().startsWith("b")
                            ||  name.toString().startsWith("D" )  || name.toString().startsWith("d" )
                            ||  name.toString().startsWith("e")  ||  name.toString().startsWith("E") 
                            || name.toString().startsWith("T")  || name.toString().startsWith("t")
                            || name.toString().startsWith("P")  || name.toString().startsWith("p")
                            ? 
                             Text("Battery Use : "+SM_J260F_Battery1[index].toString()+"%" +" Memory Use :  "+ SM_J260F_Memory1[index].toString()+"%"):

                                 name.toString().startsWith("F") ||  name.toString().startsWith("f")
                            ||  name.toString().startsWith("M" )  || name.toString().startsWith("m" )
                            ||  name.toString().startsWith("N")  ||  name.toString().startsWith("n") 
                            || name.toString().startsWith("O")  || name.toString().startsWith("o")
                            || name.toString().startsWith("X")  || name.toString().startsWith("x")

                            ?
                            Text("Battery Use : "+SM_J260F_Battery2[index].toString()+"%" +" Memory Use :  "+ SM_J260F_Memory2[index].toString()+"%"):
                            
                                 name.toString().startsWith("J") ||  name.toString().startsWith("j")
                            ||  name.toString().startsWith("L" )  || name.toString().startsWith("l" )
                            ||  name.toString().startsWith("Q")  ||  name.toString().startsWith("q") 
                            || name.toString().startsWith("H")  || name.toString().startsWith("h")
                            || name.toString().startsWith("I")  || name.toString().startsWith("i")
                            ? 
                            Text("Battery Use : "+SM_J260F_Battery3[index].toString()+"%" +" Memory Use :  "+ SM_J260F_Memory3[index].toString()+"%"):
                             
                                     name.toString().startsWith("K") ||  name.toString().startsWith("k")
                            ||  name.toString().startsWith("V" )  || name.toString().startsWith("v" )
                            ||  name.toString().startsWith("U")  ||  name.toString().startsWith("u") 
                            || name.toString().startsWith("W")  || name.toString().startsWith("w")
                            || name.toString().startsWith("y")  || name.toString().startsWith("Y") 
                            || name.toString().startsWith("Z")  || name.toString().startsWith("z")

                            ?
                            Text("Battery Use : "+SM_J260F_Battery4[index].toString()+"%" +" Memory Use :  "+ SM_J260F_Memory4[index].toString()+"%"):
                            Text("Battery Use : "+SM_J260F_Battery5[index].toString()+"%" +" Memory Use :  "+ SM_J260F_Memory5[index].toString()+"%"),

                            // subtitle: Text("Battery use :"+ Random().nextInt(100).toString()  + "Memory use : "+ Random().nextInt(2000).toString()+"Mb"),
                            onTap: () =>
                                InstalledApps.startApp(app.packageName!),
                            onLongPress: () =>
                                InstalledApps.openSettings(app.packageName!),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                          "Error occurred while getting installed apps ...."))
              : Center(child: Text("Getting installed apps ...."));
        },
      ),
    );
  }
}

// class AppInfoScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("App Info")),
//       body: FutureBuilder<AppInfo>(
//         future: InstalledApps.getAppInfo("com.google.android.gm"),
//         builder: (BuildContext buildContext, AsyncSnapshot<AppInfo> snapshot) {
//           print(snapshot);
//           return snapshot.connectionState == ConnectionState.done
//               ? snapshot.hasData
//                   ? Center(
//                       child: Column(
//                         children: [
//                           Image.memory(snapshot.data!.icon!),
//                           Text(
//                             snapshot.data!.name!,
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 40,
//                             ),
//                           ),
//                           Text(snapshot.data!.getVersionInfo())
//                         ],
//                       ),
//                     )
//                   : Center(child: Text("Error while getting app info ...."))
//               : Center(child: Text("Getting app info ...."));
//         },
//       ),
//     );
//   }
// }