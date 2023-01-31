import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final fromKey = GlobalKey<FormState>();

  void submit() {
    final from = fromKey.currentState!;
    if(from.validate()){
      print('Sucessful');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Center(
        child: Form(
          //key: fromKey,
          autovalidateMode: AutovalidateMode.always,
          onChanged: () {
            Form.of(primaryFocus!.context!)!.save();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) =>
                value != null
                    ? ' Not Email Correct Value !'
                    : null,
                onTap: () {},
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.pinkAccent, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) =>
                value != null && !value.contains('@')
                    ? ' Not Email Correct Value !'
                    : null,
                keyboardType: TextInputType.emailAddress,
                onTap: () {},
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) =>
                value != null && value.length >= 6
                    ? 'Not Email Correct Value!'
                    : null,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                obscuringCharacter: '*',
                onTap: () {},
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.deepOrange, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              ElevatedButton(
                onPressed: () {
                  submit();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Colors.green,
                ),
                child: const Text(
                  'Login in',
                  style: (TextStyle(color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
      // body: FocusTraversalGroup(
      //   child: From(
      //     child: ListView(
      //       key: fromKey,
      //       //mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         TextFormField(
      //           validator: (value) =>
      //           value != null
      //               ? ' Not Email Correct Value !'
      //               : null,
      //           onTap: () {},
      //           decoration: const InputDecoration(
      //             contentPadding: EdgeInsets.symmetric(horizontal: 20),
      //             hintText: 'Name',
      //             border: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.red, width: 2),
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(15),
      //               ),
      //             ),
      //             focusedBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(15),
      //               ),
      //             ),
      //             enabledBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.green, width: 2),
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(15),
      //               ),
      //             ),
      //           ),
      //         ),
      //         const SizedBox(height: 10),
      //         TextFormField(
      //           validator: (value) =>
      //           value != null && !value.contains('@')
      //               ? ' Not Email Correct Value !'
      //               : null,
      //           keyboardType: TextInputType.emailAddress,
      //           onTap: () {},
      //           decoration: const InputDecoration(
      //             contentPadding: EdgeInsets.symmetric(horizontal: 20),
      //             hintText: 'Email',
      //             border: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.blue, width: 2),
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(15),
      //               ),
      //             ),
      //             focusedBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.black, width: 2),
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(15),
      //               ),
      //             ),
      //             enabledBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.green, width: 2),
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(15),
      //               ),
      //             ),
      //           ),
      //         ),
      //         const SizedBox(height: 10),
      //         TextFormField(
      //           validator: (value) =>
      //           value != null && value.length >= 6
      //               ? 'Not Email Correct Value!'
      //               : null,
      //           keyboardType: TextInputType.visiblePassword,
      //           obscureText: true,
      //           obscuringCharacter: '*',
      //           onTap: () {},
      //           decoration: const InputDecoration(
      //             contentPadding: EdgeInsets.symmetric(horizontal: 20),
      //             hintText: 'Password',
      //             border: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.red, width: 2),
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(15),
      //               ),
      //             ),
      //             focusedBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.deepOrange, width: 2),
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(15),
      //               ),
      //             ),
      //             enabledBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.green, width: 2),
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(15),
      //               ),
      //             ),
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 10,
      //         ),
      //
      //         ElevatedButton(
      //           onPressed: () {
      //             submit();
      //           },
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(15)),
      //             backgroundColor: Colors.green,
      //           ),
      //           child: const Text(
      //             'Login in',
      //             style: (TextStyle(color: Colors.white)),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
