import 'package:flutter/material.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Text(
              ';)',
              style: TextStyle(fontFamily: 'Raleway', fontSize: 50),
            ),
          ),
          SizedBox(height: 20),
          Flexible(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Login',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.email),
                                hintText: 'Digite seu e-mail',
                                labelText: 'E-mail',
                              ),
                              onSaved: (String value) {
                                print(value);
                              },
                              validator: (String value) {
                                return value.isEmpty
                                    ? 'Por favor, digite seu e-mail'
                                    : null;
                              },
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  icon: Icon(Icons.lock),
                                  hintText: 'Digite sua senha',
                                  labelText: 'Senha'),
                              onSaved: (String value) {
                                print(value);
                              },
                              validator: (String value) {
                                return value.isEmpty
                                    ? 'Por favor, difite sua senha'
                                    : null;
                              },
                            ),
                            SizedBox(height: 15),
                            RaisedButton(
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  print('formulário validado');
                                }
                              },
                              child: Text('Entrar'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
