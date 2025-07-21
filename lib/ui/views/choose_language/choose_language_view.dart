import 'package:expresso_self_care/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../enums/language_enum.dart';
import '../../widgets/language_card.dart';

class ChooseLanguageView extends StatefulWidget {
  const ChooseLanguageView({super.key});

  @override
  State<ChooseLanguageView> createState() => _ChooseLanguageViewState();
}

class _ChooseLanguageViewState extends State<ChooseLanguageView> {
  Language? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('LANGUAGE', style: kTitleTextStyle),
                  SizedBox(height: 20),
                  Text('Choisissez votre langue', style: kSubtitleTextStyle),
                  LanguageCard(
                    language: kEnglish,
                    imageDest: kEnglishCard,
                    color: selectedLanguage == Language.english
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    onPress: () {
                      setState(() {
                        selectedLanguage = Language.english;
                      });
                    },
                  ),
                  LanguageCard(
                    language: kFrench,
                    imageDest: kFrenchCard,
                    color: selectedLanguage == Language.french
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    onPress: () {
                      setState(() {
                        selectedLanguage = Language.french;
                      });
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color:
                          selectedLanguage == Language.french ||
                              selectedLanguage == Language.english
                          ? kActiveButtonColor
                          : kInactiveButtonColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('Continue'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
