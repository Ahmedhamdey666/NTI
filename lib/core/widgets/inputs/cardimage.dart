import 'package:flutter/material.dart';

import '../../utils/app_text_style.dart';


abstract class AppCard {
  static Card card = Card(
    margin: const EdgeInsets.only(left: 10, top: 20),
    color: const Color(0xffCEEBDC),
    shadowColor: Colors.black,
    elevation: 25,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My First Task",
                style: TextStyle(fontSize: 12, color: Color(0xff6E6A7C)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Improve my English skills',
                style: AppTextStyles.cardTextStyle,
              ),
              Text(
                ' by trying to speek',
                style: AppTextStyles.cardTextStyle,
              ),
            ],
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("11/03/2025 "), Text("05:00 PM")],
            ),
          ),
        ],
      ),
    ),
  );
}