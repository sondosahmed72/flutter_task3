import 'package:flutter/material.dart';
import 'package:flutter_application_6/page.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final myKey = GlobalKey<FormState>();
  bool _check=false;
  var _isObscured;
  @override
  void initState()
  {
   super.initState();
   _isObscured=true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 233, 233, 0.961),
      body: Form(
        key: myKey,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(242, 242, 242, 11),
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 130),
                Text(
                  "talabat",
                  style: TextStyle(
                    fontSize: 75,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Sign up for free",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Name',
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.deepOrange,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 251, 251, 247),
                        width: 1.0,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 251, 251, 252),
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 248, 249, 249),
                        width: 1.0,
                      ),
                    ),
                  ),
                  validator: (val) {
                    if (val!.isNotEmpty) {
                      return null;
                    } else {
                      return 'Enter Vaild Value';
                    }
                  },
                ),
                const SizedBox(height: 24),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.deepOrange,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 251, 251, 247),
                        width: 1.0,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 251, 251, 252),
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 248, 249, 249),
                        width: 1.0,
                      ),
                    ),
                  ),
                  validator: (val) {
                    if (!val!.contains("@")) {
                      return 'Enter Vaild Value';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 24),
                TextFormField(
                  obscureText: _isObscured,
                  
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      padding: const EdgeInsetsDirectional.only(end: 12.0),
                      icon: !_isObscured?const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                      onPressed: (){
                        setState(() {
                          _isObscured=!_isObscured;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.deepOrange,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 251, 251, 247),
                        width: 1.0,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 251, 251, 252),
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 248, 249, 249),
                        width: 1.0,
                      ),
                    ),
                  ),
                  validator: (val) {
                    if (val!.isNotEmpty) {
                      return null;
                    } else {
                      return 'Enter Vaild Value';
                    }
                  },
                ),
                
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Checkbox(
                        value: _check, 
                    onChanged: (val)
                    {
                       setState(() {
                         _check = val ?? false ;
                       });
                    },
                    ),
                    const Text(
                      "Remmember me",
                         style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                    ),
                  
                  ],
                ),
                const SizedBox(height: 150),
                SizedBox(
                  width: 550,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      if (myKey.currentState!.validate()) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const page();
                        }));
                      } else {
                        return;
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: const Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
