import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              "https://bizucash.com.br/wp-content/uploads/2023/01/Logotipo-Horizontal_Color-132-bisucash-andrevinhosa.png",
              width: 300,
              height: 100,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 60,
                    child: FloatingActionButton.large(
                      onPressed: () {},
                      child: Text("Lançar",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 60,
                    child: FloatingActionButton.large(
                      onPressed: () {},
                      child: Text("Resgatar",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      backgroundColor: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                height: 60,
                child: FloatingActionButton.large(
                  onPressed: () {},
                  child: Text("Cadastrar Cliente",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  backgroundColor: Colors.green,
                ),
              ),
            )
          ],
        )
      ]),
    ));
  }
}
