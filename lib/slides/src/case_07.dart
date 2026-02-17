import 'package:xtalk_4th_lt/slides/src/case_slide_widget.dart';

class Case07Slide extends CaseSlideWidget {
  Case07Slide({super.key})
    : super(
        caseNumber: 'CASE 07',
        customerRequest: '仕事は楽しいですか？', // ここに実際のテキストを入れる
        supplement: '僕がパートナーの方に声をかけた言葉', // Optional: null にすると表示されない
        myThought: '楽しいです！', // ここに実際のテキストを入れる
        route: '/case-07',
      );
}
