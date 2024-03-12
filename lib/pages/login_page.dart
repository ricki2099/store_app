import 'package:flutter/material.dart';
import 'package:test/config/app_routes.dart';
import 'package:test/design/colors.dart';
import 'package:test/design/copys.dart';
import 'package:test/design/radius.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formLogInKey = GlobalKey<FormState>();
  var userNameInputController = TextEditingController();
  late String userName;
  late BoxDecoration userContainerDecoration;
  late BoxDecoration pswContainerDecoration;
  final defaultInputBorder = InputBorder.none;
  final defaultInputLabelTheme = const TextStyle(
      fontSize: 13,
      color: ColorsRandom.brandLigthDarkColor,
      fontWeight: FontWeight.normal);
  final defaultContainerInputDecoration = const BoxDecoration(
    color: ColorsRandom.brandSecondaryColor,
    borderRadius: BorderRadius.all(RadiusBorde.small),
  );
  final activeContainerInputDecoration = BoxDecoration(
    color: ColorsRandom.brandSecondaryColor,
    border: Border.all(color: ColorsRandom.brandPrimaryColor, width: 2),
    borderRadius: const BorderRadius.all(RadiusBorde.small),
  );
  var checkBoxValue = false;

  @override
  void initState() {
    super.initState();
    userContainerDecoration = defaultContainerInputDecoration;
    pswContainerDecoration = defaultContainerInputDecoration;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 100, 16, 0),
            child: Column(
              children: [
                Text(
                  TextCopys.hello,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 21, 16, 59),
                  child: Text(
                    TextCopys.lorem,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                Form(
                  key: _formLogInKey,
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        padding: const EdgeInsets.only(left: 24, bottom: 4),
                        decoration: userContainerDecoration,
                        child: TextFormField(
                          controller: userNameInputController,
                          style: Theme.of(context).textTheme.labelSmall,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return TextErrors.userError;
                            }
                            if (value.length < 4 || value.length > 10) {
                              return TextErrors.userErrorLen;
                            }
                            return null;
                          },
                          onTap: () {
                            setState(() {
                              userContainerDecoration =
                                  activeContainerInputDecoration;
                              pswContainerDecoration =
                                  defaultContainerInputDecoration;
                            });
                          },
                          onTapOutside: (event) {
                            setState(() {
                              userContainerDecoration =
                                  defaultContainerInputDecoration;
                            });
                          },
                          onSaved: (userNameValue) {
                            userName = userNameValue!;
                          },
                          decoration: InputDecoration(
                              border: defaultInputBorder,
                              label: Text(TextCopys.userInputLabel,
                                  style: defaultInputLabelTheme)),
                        ),
                      ),
                      Container(
                        height: 70,
                        padding: const EdgeInsets.only(left: 24, bottom: 4),
                        margin: const EdgeInsets.only(top: 24),
                        decoration: pswContainerDecoration,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return TextErrors.usePsw;
                            }
                            return null;
                          },
                          onTap: () {
                            setState(() {
                              userContainerDecoration =
                                  defaultContainerInputDecoration;
                              pswContainerDecoration =
                                  activeContainerInputDecoration;
                            });
                          },
                          onTapOutside: (event) {
                            setState(() {
                              pswContainerDecoration =
                                  defaultContainerInputDecoration;
                            });
                          },
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                              border: defaultInputBorder,
                              labelText: TextCopys.userpswInputLabel,
                              labelStyle: defaultInputLabelTheme),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(RadiusBorde.small),
                            ),
                            value: checkBoxValue,
                            onChanged: (value) {
                              setState(() {
                                checkBoxValue = value!;
                              });
                            },
                            checkColor: ColorsRandom.brandLightColor,
                            activeColor: ColorsRandom.brandPrimaryColor,
                          ),
                          const Expanded(
                            child: Text(
                              TextCopys.rememberMe,
                            ),
                          ),
                          TextButton(
                            onPressed: () => print('Recuperar contraseña'),
                            child: Text(
                              TextCopys.recoveryPassword,
                              style: defaultInputLabelTheme,
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 394,
                        height: 64,
                        margin: const EdgeInsets.only(top: 32, bottom: 48),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formLogInKey.currentState!.validate()) {
                              // _formLogInKey.currentState!.save();
                              userName = userNameInputController.text;
                              Navigator.of(context).pushReplacementNamed(
                                  AppRoutes.home,
                                  arguments: userName);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Procesando datos')),
                              );
                            }
                          },
                          child: const Text(
                            TextCopys.logIn,
                            style: TextStyle(
                              color: ColorsRandom.brandLightColor,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorsRandom.brandPrimaryColor,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(RadiusBorde.small)),
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Expanded(
                              child: Divider(
                            color: ColorsRandom.brandLightColorBorder,
                            thickness: 1.0,
                          )),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 14,
                            ),
                            child: Text(TextCopys.orContinue),
                          ),
                          Expanded(
                              child: Divider(
                            color: ColorsRandom.brandLightColorBorder,
                            thickness: 1.0,
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 189,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: ColorsRandom.brandSecondaryColor,
                              borderRadius: BorderRadius.all(RadiusBorde.small),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/images/google.png'),
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(TextCopys.google,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            ColorsRandom.brandLigthDarkColor))
                              ],
                            ),
                          ),
                          Container(
                            width: 189,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: ColorsRandom.brandSecondaryColor,
                              borderRadius: BorderRadius.all(RadiusBorde.small),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/facebook.png'),
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(TextCopys.facebook,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            ColorsRandom.brandLigthDarkColor))
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(TextCopys.notAmenber),
                            TextButton(
                              onPressed: () => print('Registrarse'),
                              child: const Text(TextCopys.registerNow),
                              style: TextButton.styleFrom(
                                  textStyle: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: ColorsRandom.brandPrimaryColor)),
                            )
                          ])
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
