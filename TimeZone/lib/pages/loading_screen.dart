import 'package:flutter/material.dart';
import 'package:TimeZone/timings/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void setWorldTime() async {
    WorldTime instance =
        WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'day': instance.day,
    });
  }

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        body: Center(
          child: SpinKitFadingCircle(
            color: Colors.white,
            size: 60,
          ),
        ));
  }
}
