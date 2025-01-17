import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_tests/utils/resource.dart';
import 'package:login_tests/view/default_widgets/default_password_text_input.dart';
import 'package:login_tests/view/default_widgets/default_text_field.dart';
import 'package:login_tests/web_client/request/UserLoginRequest.dart';
import 'package:login_tests/web_client/web_client.dart';

import '../../res/dimens.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  Widget? loginButtonLabelWidget = const Text('Entrar');

  //final AppWebClient client = Get;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var scaffoldMessage = ScaffoldMessenger.of(context);
    const bizuImage =
        'https://bizucash.com.br/wp-content/uploads/2023/01/Logotipo-Horizontal_Color-132-bisucash-andrevinhosa.png';
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(default_padding),
                child: Container(
                  padding: const EdgeInsets.all(default_padding),
                  decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.11),
                            blurRadius: default_radius,
                            spreadRadius: 0.0)
                      ],
                      borderRadius: BorderRadius.circular(default_radius)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        bizuImage,
                        width: 300,
                        height: 100,
                      ),
                      const SizedBox(
                        height: default_margin,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(default_padding),
                        child: DefaultTextField(
                          onChanged: (String? text) {
                            if (text != null) {
                              setState(() {
                                email = text;
                              });
                            }
                          },
                          label: const Text('Insira seu Email'),
                          prefixIcon: const Icon(Icons.email_rounded),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(default_padding),
                          child: DefaultPasswordTextField(
                            onChanged: (String text) {
                              setState(() {
                                password = text;
                              });
                            },
                          )),
                      const SizedBox(
                        height: default_margin,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(default_padding),
                            child: FilledButton(
                                onPressed: () {
                                  var request = UserLoginRequest(
                                      email: email, password: password);
                                  // var response =
                                  //     client.userService.loginUser(request);
                                  // response.then((value) => {
                                  //       if (value is Success)
                                  //         {
                                  //           Get.snackbar('Sucesso',
                                  //               'Bem vindo ${request.email}'),
                                  //           Get.toNamed('/test')
                                  //         }
                                  //       else
                                  //         {
                                  //           Get.snackbar(
                                  //               'Erro', (value as Error).error)
                                  //         }
                                  //     });
                                },
                                child: loginButtonLabelWidget),
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
