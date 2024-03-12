import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/constants.dart';
import 'package:spotify_clone/ui/create_email_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.blackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/onboarding_background.png",
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Milyonlarca şarkı",
              style: TextStyle(
                fontFamily: "AB",
                fontSize: 28,
                color: MyColors.whiteColor,
              ),
            ),
            const Text(
              "Özgürce dinle",
              style: TextStyle(
                fontFamily: "AB",
                fontSize: 28,
                color: MyColors.whiteColor,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const _ActionButtons(),
          ],
        ),
      ),
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width, 49),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              backgroundColor: MyColors.greenColor,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CreateEmailScreen(),
                ),
              );
            },
            child: const Text(
              "ُÜcretsiz kayıt ol",
              style: TextStyle(
                fontFamily: "AB",
                fontSize: 16,
                color: MyColors.blackColor,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          OutlinedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width, 49),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              side: const BorderSide(
                width: 1,
                color: MyColors.lightGrey,
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/icon_google.png"),
                const Text(
                  "Google ile giriş yap",
                  style: TextStyle(
                    fontFamily: "AB",
                    fontSize: 16,
                    color: MyColors.whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 18,
                  width: 18,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          OutlinedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width, 49),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              side: const BorderSide(
                width: 1,
                color: MyColors.lightGrey,
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/icon_facebook.png"),
                const Text(
                  "Facebook ile giriş yap", 
                  style: TextStyle(
                    fontFamily: "AB",
                    fontSize: 16,
                    color: MyColors.whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 18,
                  width: 18,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          OutlinedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width, 49),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              side: const BorderSide(
                width: 1,
                color: MyColors.lightGrey,
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/icon_apple.png"),
                const Text(
                  "Apple ile giriş yap",
                  style: TextStyle(
                    fontFamily: "AB",
                    fontSize: 16,
                    color: MyColors.whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 18,
                  width: 18,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Giriş yap",
            style: TextStyle(
              fontFamily: "AB",
              fontSize: 16,
              color: MyColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
