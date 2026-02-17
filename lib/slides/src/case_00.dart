import 'package:xtalk_4th_lt/slides/src/case_slide_widget.dart';

class Case00Slide extends CaseSlideWidget {
  Case00Slide({super.key})
    : super(
        caseNumber: '顧客から言われて傷ついたこと',
        customerRequest: '言われた言葉', // ここに実際のテキストを入れる
        supplement: '（あれば）補足分', // Optional: null にすると表示されない
        myThought: '僕の感想', // ここに実際のテキストを入れる
        route: '/case-00',
      );
}
