import 'package:xtalk_4th_lt/slides/src/case_slide_widget.dart';

class Case05Slide extends CaseSlideWidget {
  Case05Slide({super.key})
    : super(
        caseNumber: 'CASE 05',
        customerRequest: 'くらもんが休むと障害が起こるからなぁ～', // ここに実際のテキストを入れる
        supplement: null, // Optional: null にすると表示されない
        myThought: 'いや、まじで、ごめんなさい', // ここに実際のテキストを入れる
        route: '/case-05',
      );
}
