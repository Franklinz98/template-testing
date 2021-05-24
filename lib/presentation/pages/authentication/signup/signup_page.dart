import 'package:f_social_network/presentation/pages/content/index.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SignUpPage extends StatelessWidget {
  final VoidCallback onViewSwitch;

  const SignUpPage({Key? key, required this.onViewSwitch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Creación de usuario",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Clave',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.off(() => ContentPage());
                      },
                      child: Text("Registrar"),
                    ),
                  ),
                )
              ],
            ),
            TextButton(
              onPressed: this.onViewSwitch,
              child: Text("Entrar"),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
