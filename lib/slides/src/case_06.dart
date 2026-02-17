import 'package:xtalk_4th_lt/slides/src/case_slide_widget.dart';

class Case06Slide extends CaseSlideWidget {
  Case06Slide({super.key})
    : super(
        caseNumber: 'CASE 06',
        customerRequest: 'チッ（舌打ち）クソコードがッ', // ここに実際のテキストを入れる
        supplement: null, // Optional: null にすると表示されない
        myThought: '（これは僕が発した言葉）', // ここに実際のテキストを入れる
        route: '/case-06',
      );
}
