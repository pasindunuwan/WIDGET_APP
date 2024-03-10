import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text("My App"),
          centerTitle: true,
          leading: const Text("pasindu"),
          //leading ekedi normaly use krnne icon
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                // colom used krnne multiple
                children: [
                  //bulb ek click krl warp with colom wlin colom gnn puluwn
                  const Text(
                    " Body Of My App",
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: AutofillHints.addressState,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("icon widget"),
                  const Icon(
                    Icons.play_circle_sharp,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("FilledButton"),
                  FilledButton(
                      onPressed: () {
                        Logger().d("printed");
                      },
                      child: const Text("print")),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("OutlinedButton"),
                  OutlinedButton(
                      onPressed: () {
                        Logger().d("printed");
                      },
                      child: const Text("singin")),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("ElevatedButton"),
                  ElevatedButton(onPressed: () {}, child: const Text("Signup")),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("text field"),
                  const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        label: Text("email"),
                        border: OutlineInputBorder(),
                        hintText: "someone123@gamil.com"),
                  )
                ],
              ),
            ),
          ),
        )); //his pituwak wge
    //thani page ekak hdnwa nm mek thmi return krnn oni
    //hama widget ekakm hdil thiyenne StatelessWidget orStatefulWidget  wlin
    //ctrl ekth ekk  Scaffold() mek click krm eke athult ynn puluwn
  }
}
