import 'package:flutter/material.dart';

class KategoriPage extends StatefulWidget {
  @override
  State<KategoriPage> createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
        child: Container(
          padding: EdgeInsets.only(left: 5, top: 20, right: 5),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Happy Sunday!!", style: TextStyle(color: Colors.black, fontSize: 28),),
                        SizedBox(height: 5,),
                        Text("What do you want to eat?", style: TextStyle(color: Colors.black, fontSize: 14),)
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/kategori/KategoriMakanan.png")),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/kategori/KategoriMakanan.png")),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Food', style: TextStyle(color: Colors.black, fontSize: 15),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Promo', style: TextStyle(color: Colors.black, fontSize: 15),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/kategori/KategoriMakanan.png")),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/kategori/KategoriMakanan.png")),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Food', style: TextStyle(color: Colors.black, fontSize: 15),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Promo', style: TextStyle(color: Colors.black, fontSize: 15),),
                    ),
                  ],
                ),

              ],
            ),


          ),
        ),
      ),
    );
  }
}