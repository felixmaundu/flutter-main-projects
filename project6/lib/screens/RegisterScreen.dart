import 'package:flutter/material.dart';
import 'package:project6/screens/LandingScreen.dart';
import 'package:project6/screens/LogInScreen.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //TextEditingController confrimPasswordController = TextEditingController();
  bool _isVisible = false;
  bool _isVisibleConfirm = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
// final _formKey = GlobalKey<FormState>();

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);
  // ignore: unused_field
  // late String _name,_email,_phone;

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
                        'Register',
                        style: TextStyle(fontSize: 20),
                      )),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: nameController,
                      //  onSaved:(String value){
                      //     name = value;
                      //   },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                        labelText: 'User Name',
                      ),
                      validator: (value) {
                        if (value!.isNotEmpty && value.length > 4) {
                          return null;
                        } else if (value.isEmpty) {
                          return 'username required';
                        } else if (value.length < 4) {
                          return 'Atleast 4 characters required';
                        }
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                        controller: emailController,
                        // onSaved:(String value){
                        //   email=value;
                        // },
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
                        //   if (value!.isNotEmpty && value.length > 4) {
                        //     return null;
                        //   } else if (value.isEmpty) {
                        //     return 'email required';
                        //   } else if (value.length < 4) {
                        //     return 'please input a valid email';
                        //   }
                        //},
                        ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      obscureText: !_isVisible,
                      controller: passwordController,
                      //onChanged: (val) => password = val,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.lock),
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
                      validator: passwordValidator,

                      //  (value) {
                      //   if (value!.isNotEmpty && value.length > 8) {
                      //     return null;
                      //   } else if (value.isEmpty) {
                      //     return 'password required';
                      //   } else if (value.length < 8) {
                      //     return 'password must be more than 8 characters';
                      //   }
                      // },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: TextFormField(
                      obscureText: !_isVisibleConfirm, //true
                      //controller: confrimPasswordController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisibleConfirm = !_isVisibleConfirm;
                              });
                            },
                            icon: _isVisible
                                ? const Icon(
                                    Icons.visibility,
                                    color: Colors.grey,
                                  )
                                : const Icon(Icons.visibility_off,
                                    color: Colors.grey)),
                        labelText: 'Confirm Password',
                      ),
                      validator: //(val) => MatchValidator(errorText: 'passwords do not match').validateMatch("val", password),

                          (value) {
                        if (value!.isNotEmpty &&
                            value == passwordController.text) {
                          return null;
                        } else if (value.isEmpty || value == null) {
                          return 'please re-enter password';
                        } else if (value != passwordController.text) {
                          return 'password mismatch';
                        }
                      },
                    ),
                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text('Login'),
                        onPressed: () {
                          print(nameController.text);
                          print(emailController.text);
                          print(passwordController.text);
                          //print(confrimPasswordController.text);
                          if (_formKey.currentState!.validate()) {
                            return;
                          } else {}
                        },
                      )),
                  Row(
                    // ignore: sort_child_properties_last
                    children: <Widget>[
                      const Text('Already have an account?'),
                      TextButton(
                        child: const Text(
                          'Sign in',
                          style: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LogInScreen()));
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
