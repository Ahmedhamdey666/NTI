import 'package:flutter/material.dart';

import '../../core/localization/app_string.dart';
import '../../core/utils/app_assets.dart';
import '../../core/widgets/inputs/Default.dart';
import '../auth/view/register_view.dart';


class Lets extends StatefulWidget {
  const Lets({super.key});

  @override
  State<Lets> createState() => _LetsState();
}

class _LetsState extends State<Lets> {
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset(
              AppAssets.trueIcon,
            ),
          ),
          Text(
            AppString.welcome_text,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            AppString.opening_text,
            style: const TextStyle(
              color: Color(0xff6E6A7C),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Button(
            text: AppString.Lets_btn,
            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>RegisterView()),);})
        ],
      ),
    );
  }
}