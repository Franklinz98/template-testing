import 'package:f_social_network/presentation/pages/content/index.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoginPage extends StatelessWidget {
  final VoidCallback onViewSwitch;

  const LoginPage({Key? key, required this.onViewSwitch}) : super(key: key);

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
                "Iniciar sesión",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo electrónico',
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
                        child: Text("Login")),
                  ),
                )
              ],
            ),
            TextButton(
                onPressed: this.onViewSwitch, child: Text("Registrarse")),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
