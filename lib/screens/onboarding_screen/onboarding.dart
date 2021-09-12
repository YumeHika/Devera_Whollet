
import 'package:flutter/material.dart';
import 'package:wallet/routing/routes.dart';
import 'components/list_dot.dart';
import 'components/onboarding_content.dart';
import 'components/onboarding_top.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _indexpage = 0;

  List<Map<String, String>> onboardingData = [
    {
      'title': 'Welcome to \nWhollet',
      'content': 'Manage all your crypto assets! It’s simple and easy!',
      'image': AppImages.imgOnboarding[0],
    },
    {
      'title': 'Nice and Tidy Crypto Portfolio!',
      'content': 'Keep BTC, ETH, XRP, and many other ERC-20 based tokens.',
      'image': AppImages.imgOnboarding[1],
    },
    {
      'title': 'Receive and Send Money to Friends!',
      'content':
          'Send crypto to your friends with a personal message attached.',
      'image': AppImages.imgOnboarding[2],
    },
    {
      'title': 'Your Safety is Our Top Priority',
      'content':
          'Our top-notch security features will keep you completely safe.',
      'image': AppImages.imgOnboarding[3],
    },
  ];

  void _nextPage() {
    setState(() {
      _indexpage++;
    });
  }

  void _checkLogin() async {
        Navigator.pushNamed(context, Routes.WelcomeScreen);
      }


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: Color(0xFFEDF1F9),
        ),
        child: Column(
          children: [
            SizedBox(height: size.height * .08),
            OnboardingTop(
              indexpage: _indexpage,
              image: onboardingData[_indexpage]['image'].toString(),
              skipPress: _checkLogin,
            ),
            Spacer(),
            Container(
              height: size.height * .55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    ListDot(
                      index: _indexpage,
                    ),
                    SizedBox(height: 30),
                    OnboardingContent(
                      title: onboardingData[_indexpage]['title'].toString(),
                      content: onboardingData[_indexpage]['content'].toString(),
                    ),
                    Spacer(),
                    DefaultButton(
                      press: _indexpage < 3 ? _nextPage : _checkLogin,
                      text: _indexpage < 3 ? 'Next Step' : "Let's Get Started",
                      outline: _indexpage == 3 ? false : true,
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppImages {
  static const _baseImageFolder = "assets/image";
  // [Onboarding]
  static const imgOnboarding = <String>[
    "$_baseImageFolder/desktop.png",
    "$_baseImageFolder/idea.png",
    "$_baseImageFolder/social.png",
    "$_baseImageFolder/mobile.png",
  ];
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.press,
    required this.text,
    this.outline = true,
  }) : super(key: key);

  final Function press;
  final String text;
  final bool outline;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => press(),
      child: Container(
        width: 200,
        height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          border: Border.all(
            color: Color(0xFF347AF0),
          ),
          color: outline ? Colors.white : Color(0xFF347AF0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: outline ? Color(0xFF347AF0) : Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

