import 'package:flutter/material.dart';
import 'package:odev3/colors.dart';
import 'package:odev3/text_widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var data = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: yaziRenk1,
            )),
        title: Text(
          "News",
          style: TextStyle(color: yaziRenk1, fontFamily: "Bebas", fontSize: 30),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sort,
                color: yaziRenk1,
              ))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 10),
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5), // Gölgenin rengi
                  spreadRadius: 2, // Gölgenin yayılma yarıçapı
                  blurRadius: 5, // Gölgenin bulanıklık etkisi
                  offset: Offset(0, 3), // Gölgenin konumu
                ),
              ],
            ),
            child: Image.asset("images/fenerbahce.png"),
          ),
          Column(
            children: [
              TextWidgets(
                  text: data.paragraf1, fontFamily: "Afacad", fontSize: 15),
              TextWidgets(
                  text: data.baslik1, fontFamily: "Bebas", fontSize: 20),
              TextWidgets(
                  text: data.paragraf2, fontFamily: "Afacad", fontSize: 15),
              TextWidgets(
                  text: data.baslik2, fontFamily: "Bebas", fontSize: 20),
              TextWidgets(
                  text: data.paragraf3, fontFamily: "Afacad", fontSize: 15),
              TextWidgets(
                  text: data.baslik3, fontFamily: "Bebas", fontSize: 20),
              TextWidgets(
                  text: data.paragraf4, fontFamily: "Afacad", fontSize: 15),
              TextWidgets(
                  text: data.baslik4, fontFamily: "Bebas", fontSize: 20),
              TextWidgets(
                  text: data.paragraf5, fontFamily: "Afacad", fontSize: 15),
              Container(
                color: anaRenk,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          data.onceki,
                          style: TextStyle(color: yaziRenk1),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(data.sonraki,
                            style: TextStyle(color: yaziRenk1)))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
