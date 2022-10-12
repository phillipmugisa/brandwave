import 'package:flutter/material.dart';

class AuthPageStarter extends StatelessWidget {
  const AuthPageStarter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "BRANDWAVE",
            style: TextStyle(
              fontSize: 26.0,
              color: Color.fromRGBO(33, 150, 243, 1),
              fontWeight: FontWeight.w600
            ),
          ),
          Divider(height: 5.0,color: Color.fromARGB(0, 33, 149, 243),),
          Text(
            "Mobile Advertisement",
            style: TextStyle(
              fontSize: 16.0,
                color: Colors.black45
            ),
          ),
        ],
      ),
    );
  }
}


class SignInForm extends StatefulWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Sign In To Continue",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              color: Color.fromARGB(255, 58, 144, 214),
              fontWeight: FontWeight.normal,
            ),
          ),
          const Divider(height: 5.0,color: Colors.transparent,),
          TextFormField(
            style: const TextStyle(
              fontSize: 16.0,
              color: Color.fromARGB(255, 69, 161, 236),
            ),
            controller: emailController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(width: 3, color: Color.fromRGBO(33, 149, 243, 0.551))
              ),
              labelText: "Email",
              labelStyle: TextStyle(
                fontSize: 16.0,
                color: Color.fromARGB(255, 69, 161, 236),
              ),
            ),
            onChanged: (text) => {},
          ),
          const Divider(height: 10.0,color: Colors.transparent,),
          TextFormField(
            style: const TextStyle(
              fontSize: 16.0,
              color: Color.fromARGB(255, 69, 161, 236),
            ),
            controller: passwordController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(width: 3, color: Color.fromRGBO(33, 149, 243, 0.551))
              ),
              labelText: "Password",
              labelStyle: TextStyle(
                fontSize: 16.0,
                color: Color.fromARGB(255, 69, 161, 236),
              ),
            ),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            onChanged: (text) => {},
          ),
          const Divider(height: 15.0,color: Colors.transparent,),
          ElevatedButton(
            onPressed: () => {},
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Sign In", style: TextStyle(fontSize: 17.0),),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/signUp'),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Create Account", style: TextStyle(fontSize: 16.0),),
            ),
          ),
        ],
      ),
    );
  }
}



class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Create New Account",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              color: Color.fromARGB(255, 58, 144, 214),
              fontWeight: FontWeight.normal,
            ),
          ),
          const Divider(height: 5.0,color: Colors.transparent,),
          TextFormField(
            style: const TextStyle(
              fontSize: 16.0,
              color: Color.fromARGB(255, 69, 161, 236),
            ),
            decoration: const InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(width: 3, color: Color.fromRGBO(33, 149, 243, 0.551))
              ),
              labelText: "Username",
              labelStyle: TextStyle(
                fontSize: 16.0,
                color: Color.fromARGB(255, 69, 161, 236),
              ),
            ),
            onChanged: (text) => {},
          ),
          const Divider(height: 10.0,color: Colors.transparent,),
          TextFormField(
            style: const TextStyle(
              fontSize: 16.0,
              color: Color.fromARGB(255, 69, 161, 236),
            ),
            decoration: const InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(width: 3, color: Color.fromRGBO(33, 149, 243, 0.551))
              ),
              labelText: "Email",
              labelStyle: TextStyle(
                fontSize: 16.0,
                color: Color.fromARGB(255, 69, 161, 236),
              ),
            ),
            onChanged: (text) => {},
          ),
          const Divider(height: 10.0,color: Colors.transparent,),
          TextFormField(
            style: const TextStyle(
              fontSize: 16.0,
              color: Color.fromARGB(255, 69, 161, 236),
            ),
            decoration: const InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(width: 3, color: Color.fromRGBO(33, 149, 243, 0.551))
              ),
              labelText: "Password",
              labelStyle: TextStyle(
                fontSize: 16.0,
                color: Color.fromARGB(255, 69, 161, 236),
              ),
            ),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            onChanged: (text) => {},
          ),
          const Divider(height: 15.0,color: Colors.transparent,),
          ElevatedButton(
            onPressed: () => {},
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Sign In", style: TextStyle(fontSize: 17.0),),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/'),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Already Have An Account", style: TextStyle(fontSize: 16.0),),
            ),
          ),
        ],
      ),
    );
  }
}