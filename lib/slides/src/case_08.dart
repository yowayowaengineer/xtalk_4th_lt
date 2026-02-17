import 'package:xtalk_4th_lt/slides/src/case_slide_widget.dart';

class Case08Slide extends CaseSlideWidget {
  Case08Slide({super.key})
    : super(
        caseNumber: 'CASE 08',
        customerRequest: '仕事は楽しいですか？', // ここに実際のテキストを入れる
        supplement: '心のなかで叫びましょう', // Optional: null にすると表示されない
        myThought: '明日休みてぇ～！！', // ここに実際のテキストを入れる
        route: '/case-08',
      );
}
