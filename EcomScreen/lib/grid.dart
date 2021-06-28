import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.network(
                "https://assets.entrepreneur.com/content/3x2/2000/1603915291-Gamers.jpg"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.network(
                "https://media.kasperskydaily.com/wp-content/uploads/sites/92/2014/04/18130043/online-gamer-threats-featured.jpg"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.network(
                "https://zahcomputers.pk/wp-content/uploads/2021/01/Global-Razer-Gaming-Chair-Blue.jpeg"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.network(
                "https://i.pcmag.com/imagery/articles/02fJG19jOqdWdpeNmooA3IP-21..1619210740.jpg"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.network(
                "https://image.shutterstock.com/image-photo/mobile-phone-charger-on-orange-260nw-773099164.jpg"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.network(
                "https://m.economictimes.com/thumb/msid-76216026,width-1200,height-900,resizemode-4,imgsize-235016/surface-pro-7-does-everything-that-a-tablet-should-do-and-doubles-up-as-a-really-efficient-laptop-.jpg"),
          ),
        ],
      ),
    );
  }
}

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(bottom: 10),
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 160.0,
          child: Text(
            "Electonics",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
          ),
        ),
        Container(
          width: 160.0,
          child: Text(
            "Clothes",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
          ),
        ),
        Container(
          width: 160.0,
          child: Text(
            "Medicine",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
          ),
        ),
        Container(
          width: 160.0,
          child: Text(
            "Gaming",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

class carousal extends StatelessWidget {
  var lst = [
    "https://images.unsplash.com/photo-1597404294360-feeeda04612e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3BvcnRzJTIwY2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "http://cdn.mos.cms.futurecdn.net/6t8Zh249QiFmVnkQdCCtHK.jpg",
    "https://www.android.com/static/2016/img/one/carousel/nokia_5_3_1x.png",
    "https://cdn.vox-cdn.com/thumbor/_ScsbdHriArUpAhTZ-WiSVX7qQ8=/1400x1400/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/22511467/Untitled.png"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: lst.length,
      itemBuilder: (context, index) {
        return Container(
          height: 620,
          width: 250,
          child: Image.network(lst[index]),
        );
      },
    );
  }
}
