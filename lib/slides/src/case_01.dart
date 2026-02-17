import 'package:xtalk_4th_lt/slides/src/case_slide_widget.dart';

class Case01Slide extends CaseSlideWidget {
  Case01Slide({super.key})
    : super(
        caseNumber: 'CASE 01',
        customerRequest: '言われた言葉', // ここに実際のテキストを入れる
        supplement: '（あれば）補足分', // Optional: null にすると表示されない
        myThought: '僕の感想', // ここに実際のテキストを入れる
        route: '/case-01',
      );
}
