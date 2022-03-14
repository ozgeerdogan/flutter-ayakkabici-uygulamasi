import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonk.dart';

class bodying extends StatelessWidget {
  @override
  var liste = [
    "Günlük Ayakkabı",
    "Spor Ayakkabı",
    "Bot Ve Çizme",
    "Sandalet Ve Terlik",
    " Ev Terliği&Botu"
  ];

  var liste3 = [
    kutu("images/gri.jpg", 200, 100, "Sneaker", "Erkek Sneaker", 50,
        "images/converse.jpg", 100, 90, "Converse", "All Star Unisex", 10),
    kutu("images/derimod.jpg", 200, 100, "Sneaker", "Erkek Sneaker", 50,
        "images/kundura.jpg", 100, 90, "Converse", "All Star Unisex", 10),
    kutu("images/siyah.jpg", 200, 100, "Sneaker", "Erkek Sneaker", 50,
        "images/yesil.jpg", 100, 90, "Converse", "All Star Unisex", 10),
    kutu("images/gri.jpg", 200, 100, "Sneaker", "Erkek Sneaker", 50,
        "images/converse.jpg", 100, 90, "Converse", "All Star Unisex", 10),
  ];

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.grey),
                    color: Colors.white),
                height: 54,
                child: Expanded(
                  child: PopupMenuButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.vertical_align_center_outlined,
                          color: Colors.orange,
                        ),
                        Text(
                          "Sırala",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    itemBuilder: (BuildContext bc) => [
                      PopupMenuItem(
                          child: Text("Önerilen"), value: "/onerilen"),
                      PopupMenuItem(
                          child: Text("En Düşük Fiyat"),
                          value: "/en-dusuk-fiyat"),
                      PopupMenuItem(
                          child: Text("En Yüksek Fiyat"),
                          value: "/en-yuksek-fiyat"),
                      PopupMenuItem(
                          child: Text("Çok Satanlar"), value: "/cok-satanlar"),
                      PopupMenuItem(
                          child: Text("En Favoriler"), value: "/en-favoriler"),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.grey),
                    color: Colors.white),
                height: 54,
                child: Expanded(
                  child: PopupMenuButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.orange,
                        ),
                        Text(
                          "Filtrele",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    itemBuilder: (BuildContext bc) => [
                      PopupMenuItem(child: Text("Marka"), value: "/onerilen"),
                      PopupMenuItem(
                          child: Text("Beden"), value: "/en-dusuk-fiyat"),
                      PopupMenuItem(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Kategori"),
                                  Text(
                                    " (1)",
                                    style: TextStyle(color: Colors.orange),
                                  )
                                ],
                              ),
                              Text(
                                "Ayakkabı",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              )
                            ],
                          ),
                          value: "/en-yuksek-fiyat"),
                      PopupMenuItem(
                          child: Text("Fiyat"), value: "/cok-satanlar"),
                      PopupMenuItem(
                          child: Text("Kullanım Alanı"),
                          value: "/en-favoriler"),
                      PopupMenuItem(
                          child: Text("Materyal"), value: "/cok-satanlar"),
                      PopupMenuItem(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("cinsiyet"),
                                  Text(
                                    " (1)",
                                    style: TextStyle(color: Colors.orange),
                                  )
                                ],
                              ),
                              Text(
                                "Erkek",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              )
                            ],
                          ),
                          value: "/en-yuksek-fiyat"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 50,
          child: Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: liste.length,
            itemBuilder: (BuildContext, index) {
              return Padding(
                padding:
                    const EdgeInsets.only(right: 5, left: 5, top: 8, bottom: 8),
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        primary: Colors.black,
                        side: BorderSide(color: Colors.grey.shade400)),
                    child: Text(liste[index])),
              );
            },
          )),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: liste3.length,
            itemBuilder: (context, int index) {
              return Row(
                children: [liste3[index]],
              );
            },
          ),
        ),
      ],
    );
  }
}
