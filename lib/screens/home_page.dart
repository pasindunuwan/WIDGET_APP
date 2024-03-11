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
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Icon(Icons.abc_outlined), Text("Row widget")],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("Network image"),
                  //using image constracotr
                  Image.network(
                      "https://i.pinimg.com/200x150/62/8e/65/628e65258c534a60ff59a30890ca63f5.jpg",
                      height: 100,
                      fit: BoxFit.contain),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("assests image"),
                  Image.asset(
                    "assests/images/car2.jpg",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 250,
                  ),
                  const SizedBox(
                    height: 30,
                  ), //using image provider
                  const Image(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1643808972401-4111e3a73b17?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    ),
                    height: 100,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                  const Text("container"),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7z-Sk5lMpv5hfYULNOJxOw3MSpFeGUKAUn0xSfeErUrrVOBAs2C31l1jm6jbyS0LbxLE&usqp=CAU"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2), BlendMode.darken),
                        ),
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Column(
                      children: [Text("car"), Text("black")],
                    )),
                  ),
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
