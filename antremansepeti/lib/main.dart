import 'package:antremansepeti/categories.dart';
import 'package:antremansepeti/swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'antreman sepeti',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String metin =
      "Türkiye'nin en büyük online spor eğitim platformuna hoşgeldin! #heryerdespor mottosu altında çıktığımız bu yolda amacımız; istediğin zaman, istediğin yerde sporu seninle buluşturmak. Türkiye'nin en deneyimli ve profesyonel eğitmen kadrosuyla potansiyelini en üst seviyeye çıkmaya hazır mısın? Kendini uygun programı ve eğitmeni seç, hemen izlemeye ve uygulamaya başla!";

  final appBar = PreferredSize(
    preferredSize: Size.fromHeight(200.0),
    child: AppBar(
      flexibleSpace: Image(
        image: AssetImage('assets/images/appbarbg.jpg'),
        fit: BoxFit.fitHeight,
      ),
      backgroundColor: Colors.transparent,
      leading: Image.asset(
        "assets/images/logo.png",
        color: Colors.white,
      ),
      leadingWidth: 150,
      actions: [
        IconButton(
            icon: Icon(
              Icons.menu_outlined,
            ),
            onPressed: () {}),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    final drawer = Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Ana Sayfa'),
            // selected: _selectedDestination == 0,
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.folder_outlined),
            title: Text('Katalog'),
            // selected: _selectedDestination == 1,
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.label),
            title: Text('SSS'),
            // selected: _selectedDestination == 2,
            onTap: () => null,
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Giriş',
            ),
          ),
          ListTile(
            leading: ElevatedButton(
              onPressed: () {},
              child: Text('Üye Ol'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
              ),
            ),
            title: ElevatedButton(
              onPressed: () {},
              child: Text('Giriş Yap'),
              style: ElevatedButton.styleFrom(shape: StadiumBorder()),
            ),
            //selected: _selectedDestination == 3,
            onTap: () => null,
          ),
        ],
      ),
    );
    final scaffold = Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
            // color: Colors.blueGrey,
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Öne Çıkanlar",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: OneCikanlar(),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "TÜM PAKETLERE GÖZAT",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "BİZ KİMİZ?",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(30.0),
                    child: Text(
                      "$metin",
                      style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.blue,
              height: 300,
              width: 350,
              child: Text("Youtube Video"),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "KATEGORİLER",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Categories(),
            SizedBox(
              height: 50,
            )
          ],
        )),
      ),
    );
    final material = Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Öne Çıkanlar",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: OneCikanlar(),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "TÜM PAKETLERE GÖZAT",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "BİZ KİMİZ?",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(30.0),
                    child: Text(
                      "$metin",
                      style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.blue,
              height: 300,
              width: 350,
              child: Text("Youtube Video"),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "KATEGORİLER",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Categories(),
            SizedBox(
              height: 50,
            )
          ],
        ));
    BuildContext araba;
    return Scaffold(
      drawer: drawer,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            collapsedHeight: 200,
            floating: true,
            actions: [
              Image.asset(
                "assets/images/logo.png",
                color: Colors.white,
                height: 150,
                width: 150,
              ),
            ],
            expandedHeight: 200.0,
            flexibleSpace: Image(
              image: AssetImage('assets/images/appbarbg.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([material]))
        ],
      ),
    );
  }
}
