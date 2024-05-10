import 'package:flutter/material.dart';
import 'package:project7/screens/RegisterScreen.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isVisible = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
// final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Cars.com',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      )),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      )),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email_outlined),
                          labelText: 'Email',
                        ),
                        validator: MultiValidator([
                          RequiredValidator(errorText: "required"),
                          EmailValidator(
                              errorText: 'enter a valid email address')
                        ])

                        // (value) {
                        //   if (value!.isNotEmpty && value.length > 2) {
                        //     return null;
                        //   } else if (value.isEmpty) {
                        //     return 'please fill in your email';
                        //   }
                        // }
                        ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                        obscureText: !_isVisible,
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isVisible = !_isVisible;
                                });
                              },
                              icon: _isVisible
                                  ? const Icon(
                                      Icons.visibility,
                                      color: Colors.grey,
                                    )
                                  : const Icon(Icons.visibility_off,
                                      color: Colors.grey)),
                          labelText: 'Password',
                        ),
                        validator: (value) {
                          if (value!.isNotEmpty && value.length > 8) {
                            return null;
                          } else if (value.isEmpty) {
                            return 'password required';
                          }
                        }),
                  ),
                  TextButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    child: const Text(
                      'Forgot Password?',
                    ),
                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text('Login'),
                        onPressed: () {
                          print(nameController.text);
                          print(passwordController.text);
                          if (_formKey.currentState!.validate()) {
                            return;
                          }
                        },
                      )),
                  Row(
                    children: <Widget>[
                      const Text('Don\'t have account?'),
                      TextButton(
                        child: const Text(
                          'Register',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'OR',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const VehicleSale()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: const Color.fromARGB(255, 8, 9, 41),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/sign-in-with-google-button.jpg',
                            height: 49,
                            //width: 200,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        );
      }),
    );
  }
}
