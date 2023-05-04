import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
            ),
            child: const Text("Register"),
          ),
        ],
      ),
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "In mollit minim nostrud labore quis cillum.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: size.height * 1,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                  )
                ],
              ),
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 70, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _email(email),
                          const SizedBox(
                            height: 15,
                          ),
                          _password(password),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            height: 55,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  print("INICIO DE SESION EXITOSO");
                                  print(email.text);
                                  print(password.text);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _googleButton(),
                  SizedBox(
                    height: 20,
                  ),
                  _facebookButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _facebookButton() {
    return GestureDetector(
      onTap: () => print("FACEBOOK"),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        width: 335,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
              )
            ]),
        child: Row(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png',
              width: 35,
              height: 35,
            ),
            const Spacer(),
            const Text(
              "Cotinue with Facebook",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        // child: ElevatedButton(
        //   onPressed: () {},
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: Colors.white,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(30),
        //     ),
        //   ),
        // child: Row(
        //   children: [
        //     Image.network(
        //       'https://rotulosmatesanz.com/wp-content/uploads/2017/09/2000px-Google_G_Logo.svg_.png',
        //       width: 35,
        //       height: 35,
        //     ),
        //     const Spacer(),
        //     const Text(
        //       "Cotinue with Google",
        //       style: TextStyle(
        //         color: Colors.black,
        //       ),
        //     ),
        //     const Spacer(),
        //     IconButton(
        //       onPressed: () {},
        //       icon: const Icon(
        //         Icons.arrow_forward_outlined,
        //         color: Colors.black,
        //       ),
        //     ),
        //   ],
        // ),
        // ),
      ),
    );
  }

  Container _googleButton() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Image.network(
              'https://rotulosmatesanz.com/wp-content/uploads/2017/09/2000px-Google_G_Logo.svg_.png',
              width: 35,
              height: 35,
            ),
            const Spacer(),
            const Text(
              "Cotinue with Google",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField _password(TextEditingController val) {
    return TextFormField(
      controller: val,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Este campo es obligatorio';
        }
        // if (value.length < 6) {
        //   return 'Minimo 6 Caracteres';
        // }
      },
      decoration: InputDecoration(
        hintText: 'Password',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }

  TextFormField _email(TextEditingController val) {
    return TextFormField(
      controller: val,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Este campo es obligatorio';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Username',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }
}
