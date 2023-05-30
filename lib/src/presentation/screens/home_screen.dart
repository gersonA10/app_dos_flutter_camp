import 'package:app_dos_flutter_camp/src/presentation/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  User? user;
  final FirebaseAuth auth;
  final GoogleSignIn googleSignIn;

  HomeScreen(
      {required this.user,
      super.key,
      required this.auth,
      required this.googleSignIn});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    cerrarSesion() async {
      try {
        await widget.auth.signOut();

        if (await widget.googleSignIn.isSignedIn()) {
          await widget.googleSignIn.signOut();
          widget.user = null;
          setState(() {});
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ));
        }
      } catch (e) {
        print(e);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla Principal"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Gmail: "),
            Text(widget.user?.email ?? 'No tiene email'),
            const Text("Nombres: "),
            Text(widget.user?.displayName ?? 'No tiene nombres'),
            ElevatedButton(
              onPressed: () {
                //TODO: Cerrar Sesion
                cerrarSesion();
              },
              child: const Text('Cerrar Sesion'),
            ),
          ],
        ),
      ),
    );
  }
}
