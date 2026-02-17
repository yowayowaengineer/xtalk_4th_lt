import 'package:flutter_deck/flutter_deck.dart';
import 'package:xtalk_4th_lt/slides/src/big_concept_slide.dart';
import 'package:xtalk_4th_lt/slides/src/case_00.dart';
import 'package:xtalk_4th_lt/slides/src/case_01.dart';
import 'package:xtalk_4th_lt/slides/src/case_03.dart';
import 'package:xtalk_4th_lt/slides/src/case_04.dart';
import 'package:xtalk_4th_lt/slides/src/ending_slide.dart';
import 'package:xtalk_4th_lt/slides/src/icebreak_slide.dart';
import 'package:xtalk_4th_lt/slides/src/who_am_i_1_slide.dart';
import 'package:xtalk_4th_lt/slides/src/who_am_i_2_slide.dart';

List<FlutterDeckSlideWidget> get slides => [
  // オープニング
  const IcebreakSlide(),

  // 自己紹介
  const WhoAmISlide1(),
  const WhoAmISlide2(),

  // Case：
  Case00Slide(),
  Case01Slide(),
  Case03Slide(),
  Case04Slide(),

  // コードを憎んで人を憎まず！
  const BigConceptSlide(),

  // クロージング
  const EndingSlide(),
];
