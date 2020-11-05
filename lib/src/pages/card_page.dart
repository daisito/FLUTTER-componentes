import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cartTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo2(),
          SizedBox(
            height: 30.0,
          ),
          
        ],
      ),
    );
  }

  Widget _cartTipo1() {
    return Card(
      elevation: 10.0, //SOMBRAS
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('SOY EL TITULO'),
            subtitle: Text('AQUI ESTAMOS CON LA DESCRIPCION'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cartTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 300),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //     image: NetworkImage('https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
          //   ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea que poner'),
          ),

        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      )
    );
  }
}
