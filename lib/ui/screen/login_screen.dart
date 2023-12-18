import 'package:farmwork_bloc_ver/utils/colors.dart';
import 'package:farmwork_bloc_ver/utils/font_type.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final _formKey = GlobalKey<FormState>();

  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = false;
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/logo_farmwork.png'),
              ),
              const SizedBox(
                height: 58.0,
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                obscureText: !_passwordVisible,
                controller: _passwordController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: blackFarmWork,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextButton(
                onPressed: () => wipDialog(context),
                child: Text(
                  "Lupa Password?",
                  style: bodySmall,
                  selectionColor: lightInfo,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainSuccess,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      Navigator.pushReplacementNamed(
                          context, '/dashboardScreen');
                    }
                  },
                  child: Text(
                    'Login',
                    style: bodySmall,
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: darkInfo,
                  ),
                  onPressed: () => wipDialog(context),
                  child: Text(
                    'Register',
                    style: bodySmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String?> wipDialog(BuildContext context) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Work in Progress'),
        content: const Text('Fitur ini masih belum tersedia'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
