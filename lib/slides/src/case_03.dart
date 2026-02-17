import 'package:xtalk_4th_lt/slides/src/case_slide_widget.dart';

class Case03Slide extends CaseSlideWidget {
  Case03Slide({super.key})
    : super(
        caseNumber: 'CASE 03',
        customerRequest: 'お金のことしか話しませんね', // ここに実際のテキストを入れる
        supplement: null, // Optional: null にすると表示されない
        myThought: '💴 大好き', // ここに実際のテキストを入れる
        route: '/case-03',
      );
}
