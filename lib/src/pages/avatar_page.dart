import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget{

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Avatar Page'),
      centerTitle: true,
      actions: <Widget>[
        Container(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://www.plymouth.edu/theclock/wp-content/uploads/sites/183/2019/03/stan-lee.png'),
            radius: 25.0,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            child: Text('SL'),
            backgroundColor: Colors.brown,
          ),
        )
      ],
    ),
    body: Center(
      child: FadeInImage(
        image: NetworkImage('https://lh3.googleusercontent.com/proxy/EhDi9SFzgzhrEs0vxto6ruIvhowS25DMcoWDcSPjCumpu-mpL2hmY-7zEDyxHmA5cMC0Vu-Ovbwj7O7sTEp6Eh4ahP1GnwgF7N_2HdOKwM8O2SMoeHS3yTrBFYBIUYMMNRt86EBKEqmLmqMRAPUzzAeXblMA7HL9rDB6k51v2V2-2lGBnYwVpPoWHeIEzGFdrgz5SLHWlgoj5URTvxA9AvW6UjF4v_7itWi_'),
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 200),
      ),
    ),
  );
}

}