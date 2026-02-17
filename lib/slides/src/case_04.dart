import 'package:xtalk_4th_lt/slides/src/case_slide_widget.dart';

class Case04Slide extends CaseSlideWidget {
  Case04Slide({super.key})
    : super(
        caseNumber: 'CASE 04',
        customerRequest: '素晴らしい！こういうドキュメントを作らないといけないよ。', // ここに実際のテキストを入れる
        supplement: '障害報告の場にて', // Optional: null にすると表示されない
        myThought: '褒められているようで、なんだか不名誉', // ここに実際のテキストを入れる
        route: '/case-04',
      );
}
