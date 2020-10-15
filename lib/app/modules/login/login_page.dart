import 'package:appetit/app/modules/login/components/main_button.dart';
import 'package:appetit/app/modules/login/components/main_text_field.dart';
import 'package:appetit/constants/constant_colors.dart';
import 'package:appetit/constants/glow_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return ScrollConfiguration(
                behavior: GlowBehavior(),
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraints.maxHeight),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/logo.png',
                              width: 130,
                              height: 130,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'Seja bem-vindo!',
                              style: TextStyle(
                                color: ConstantColors.primaryColorDark,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Text(
                            'Nós sabemos a importância de estar sempre de barriga cheia e o quanto isso pode ajudar no seu dia.',
                            style: TextStyle(fontSize: 19),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 35),
                          MainTextField(
                            innerText: 'Insira o seu e-mail aqui',
                            labelText: 'E-mail',
                            onChanged: controller.setEmail,
                          ),
                          SizedBox(height: 25),
                          MainTextField(
                            innerText: 'Insira a sua senha aqui',
                            labelText: 'Senha',
                            isPassword: true,
                            onChanged: controller.setSenha,
                          ),
                          SizedBox(height: 35),
                          Observer(builder: (_) {
                            return MainButton(
                              'Entrar',
                              onPressed: controller.isLoginValid
                                  ? () {
                                      Modular.to.pushReplacementNamed(
                                        '/listagem_pedidos',
                                      );
                                    }
                                  : null,
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
