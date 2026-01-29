import 'package:flutter/material.dart';
import 'package:hello_world/config/app_routes.dart';
import 'package:hello_world/config/copies.dart';
import 'package:hello_world/design/colors.dart';
import 'package:hello_world/design/radius.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formLoginKey = GlobalKey<FormState>();
  bool checkboxState = false;
  late String userName;
  late BoxDecoration userContainerDecoration;
  late BoxDecoration pwdContainerDecoration;
  final defaultContainerDecoration = const BoxDecoration(
    borderRadius: BorderRadius.all(CustomRadius.xs),
    color: CustomColors.brandSecondaryColor,
  );
  final activeContainerDecoration = BoxDecoration(
    color: CustomColors.brandSecondaryColor,
    border: Border.all(color: CustomColors.brandPrimaryColor, width: 2),
    borderRadius: const BorderRadius.all(CustomRadius.xs),
  );

  @override
  void initState() {
    super.initState();
    userContainerDecoration = defaultContainerDecoration;
    pwdContainerDecoration = defaultContainerDecoration;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 100, 16, 0),
          child: Column(
            children: [
              Text(
                CustomCopys.hello,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 21, 16, 59),
                child: Text(
                  CustomCopys.lorem,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Form(
                  key: _formLoginKey,
                  child: Column(
                    children: [
                      defaultContainerTextFormField(
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return CustomErrors.userError;
                              }
                              if (value.length >= 7) {
                                return CustomErrors.invalidUserError;
                              }
                              return null;
                            },
                            decoration: defaultInputDecoration(
                                CustomCopys.userInputLabel),
                            style: Theme.of(context).textTheme.labelSmall,
                            onTap: () {
                              setState(() {
                                userContainerDecoration =
                                    activeContainerDecoration;
                                pwdContainerDecoration =
                                    defaultContainerDecoration;
                              });
                            },
                            onTapOutside: (event) => {
                              setState(() {
                                userContainerDecoration =
                                    defaultContainerDecoration;
                              })
                            },
                            onSaved: (newValue) => userName = newValue ?? '',
                          ),
                          decoration: userContainerDecoration),
                      defaultContainerTextFormField(
                          child: TextFormField(
                            validator: (value) => value == null || value.isEmpty
                                ? CustomErrors.passwordError
                                : null,
                            decoration: defaultInputDecoration(
                                CustomCopys.userPswInputLabel),
                            style: Theme.of(context).textTheme.labelSmall,
                            obscureText: true,
                            obscuringCharacter: '*',
                            onTap: () {
                              setState(() {
                                pwdContainerDecoration =
                                    activeContainerDecoration;
                                userContainerDecoration =
                                    defaultContainerDecoration;
                              });
                            },
                            onTapOutside: (event) => {
                              setState(() {
                                pwdContainerDecoration =
                                    defaultContainerDecoration;
                              })
                            },
                          ),
                          decoration: pwdContainerDecoration),
                      Row(
                        children: [
                          Checkbox(
                            value: checkboxState,
                            onChanged: (value) {
                              setState(() {
                                checkboxState = !checkboxState;
                              });
                            },
                            checkColor: CustomColors.brandLightColor,
                            activeColor: CustomColors.brandPrimaryColor,
                          ),
                          const Expanded(
                              child: Text(
                            CustomCopys.rememberMe,
                          )),
                          TextButton(
                            onPressed: () {},
                            child: const Text(CustomCopys.recoveryPassword,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: CustomColors.brandLightDarkColor,
                                    fontWeight: FontWeight.normal)),
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(top: 32, bottom: 48),
                        height: 64,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formLoginKey.currentState!.validate()) {
                              _formLoginKey.currentState!.save();
                              Navigator.of(context).pushReplacementNamed(
                                  AppRoutes.home,
                                  arguments: userName);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColors.brandPrimaryColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(CustomRadius.xs))),
                          child: const Text("Login"),
                        ),
                      ),
                      const Row(
                        children: [
                          Expanded(
                              child: Divider(
                            color: CustomColors.brandLightColorBorder,
                            thickness: 1,
                          )),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14.0),
                            child: Text(
                              CustomCopys.orContinue,
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            color: CustomColors.brandLightColorBorder,
                            thickness: 1,
                          )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 69.0,
                            width: 189,
                            decoration: const BoxDecoration(
                              color: CustomColors.brandSecondaryColor,
                              borderRadius: BorderRadius.all(CustomRadius.xs),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/images/google.png'),
                                  width: 30,
                                ),
                                SizedBox(width: 12),
                                Text(
                                  CustomCopys.google,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: CustomColors.brandLightDarkColor),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 69.0,
                            width: 189,
                            decoration: const BoxDecoration(
                              color: CustomColors.brandSecondaryColor,
                              borderRadius: BorderRadius.all(CustomRadius.xs),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/facebook.png'),
                                  width: 30,
                                ),
                                SizedBox(width: 12),
                                Text(
                                  CustomCopys.facebook,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: CustomColors.brandLightDarkColor),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 80),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(CustomCopys.notAMember),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                CustomCopys.registerNow,
                                style: TextStyle(
                                    color: CustomColors.brandPrimaryColor,
                                    fontSize: 13),
                              ))
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration defaultInputDecoration(String label) {
    return InputDecoration(
      border: InputBorder.none,
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      label: Text(
        label,
      ),
      labelStyle: const TextStyle(
          fontSize: 13,
          color: CustomColors.brandLightDarkColor,
          fontWeight: FontWeight.normal),
    );
  }

  Container defaultContainerTextFormField(
      {required Widget child, required BoxDecoration decoration}) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(left: 24.0, bottom: 4),
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: decoration,
      child: child,
    );
  }
}
