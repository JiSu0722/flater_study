import 'package:adroid_study/api/login_api.dart';
import 'package:adroid_study/persentation/wiki/wiki_screan.dart';
import 'package:adroid_study/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Future<void> showErrorDialog(String errorMessage) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(errorMessage),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  TextEditingController _idController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final LoginApi viewModel = context.read<LoginApi>(); // Retrieve LoginViewModel instance
    return Scaffold(
      backgroundColor: mainBarText,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
          child: Container(
            color: grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('로그인', style: TextStyle(fontSize: 25),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _idController,
                    decoration: const InputDecoration(
                      labelText: 'ID',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      String id = _idController.text;
                      String password = _passwordController.text;
                      if (_idController.text.isEmpty) {
                        const snackBar = SnackBar(content: Text("아이디를 입력해 주세요."));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else if (_passwordController.text.isEmpty) {
                        const snackBar = SnackBar(content: Text("비밀번호를 입력해 주세요."));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else {
                        try {
                          // 로그인 시도
                          viewModel.login(id, password);
                          viewModel.addListener(() {
                            final loginState = viewModel.state;
                            if (loginState.login != null) {
                              // setState를 통해 UI 갱신
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => WikiScrean()),
                                );
                              });
                            } else {
                              // 로그인 실패 시의 처리
                              showErrorDialog(loginState.message.toString());
                            }
                          });
                        } catch (e) {
                          // 예외 발생 시 다이얼로그 표시
                          showErrorDialog('로그인 중 오류가 발생했습니다.');
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50), // 가로 크기 조정 (예시값)
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0), // 원하는 네모 각도로 조정
                      ),
                      backgroundColor: mainBarText,
                    ),
                    child: const Text('Sign in', style: TextStyle(color: grey),),
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
