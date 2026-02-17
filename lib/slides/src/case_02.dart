import 'package:xtalk_4th_lt/slides/src/case_slide_widget.dart';

class Case02Slide extends CaseSlideWidget {
  Case02Slide({super.key})
    : super(
        caseNumber: 'CASE 02',
        customerRequest: '〇〇さんはやってくれたんですけど', // ここに実際のテキストを入れる
        supplement: null, // Optional: null にすると表示されない
        myThought: '知らんがな', // ここに実際のテキストを入れる
        route: '/case-02',
      );
}
