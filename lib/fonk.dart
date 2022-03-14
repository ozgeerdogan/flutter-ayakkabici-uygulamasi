import 'package:flutter/material.dart';

kutu(
    var imageName,
    double eskiFiyat,
    double guncelFiyat,
    var isim,
    var aciklama,
    int indirim,
    var imageName2,
    var eskiFiyat2,
    var guncelFiyat2,
    var isim2,
    var aciklama2,
    var indirim2) {
  return Row(children: [
    Padding(
      padding: const EdgeInsets.only(bottom: 3, top: 3),
      child: TextButton(
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          height: 250,
          width: 232,
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Image(
                      image: AssetImage(imageName),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              isim,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              aciklama,
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  eskiFiyat.toString() + " TL",
                                  style: TextStyle(
                                      color: Colors.grey[700], fontSize: 12),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 5, right: 3, left: 3),
                                    child: Text(
                                      "Sepette yüzde %" +
                                          indirim.toString() +
                                          " indirim",
                                      style: TextStyle(
                                          color: Colors.grey[900],
                                          fontSize: 10),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      guncelFiyat.toString() + " TL",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4),
      child: TextButton(
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          height: 250,
          width: 232,
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Image(
                      image: AssetImage(imageName2),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              isim2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              aciklama2,
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  eskiFiyat2.toString() + " TL",
                                  style: TextStyle(
                                      color: Colors.grey[700], fontSize: 12),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 5, right: 3, left: 3),
                                    child: Text(
                                      "Sepette yüzde %" +
                                          indirim2.toString() +
                                          " indirim",
                                      style: TextStyle(
                                          color: Colors.grey[900],
                                          fontSize: 10),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      guncelFiyat2.toString() + " TL",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ]);
}
