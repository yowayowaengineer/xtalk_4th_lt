import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

/// Caseスライド用の再利用可能なウィジェット
class CaseSlideWidget extends FlutterDeckSlideWidget {
  CaseSlideWidget({
    super.key,
    required this.caseNumber,
    required this.customerRequest,
    required this.myThought,
    this.supplement,
    required this.route,
  }) : super(
         configuration: FlutterDeckSlideConfiguration(
           route: route,
           title: '顧客に言われて困ったこと',
         ),
       );

  final String caseNumber; // 例: 'CASE 01'
  final String customerRequest; // 言われた言葉
  final String? supplement; // 補足分（Optional）
  final String myThought; // 僕の感想
  final String route; // ルート名

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => _CaseSlideContent(
        caseNumber: caseNumber,
        customerRequest: customerRequest,
        supplement: supplement,
        myThought: myThought,
      ),
    );
  }
}

class _CaseSlideContent extends StatefulWidget {
  const _CaseSlideContent({
    required this.caseNumber,
    required this.customerRequest,
    this.supplement,
    required this.myThought,
  });

  final String caseNumber;
  final String customerRequest;
  final String? supplement;
  final String myThought;

  @override
  State<_CaseSlideContent> createState() => _CaseSlideContentState();
}

class _CaseSlideContentState extends State<_CaseSlideContent>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0; // 0: ①のみ, 1: ①+②, 2: ③のみ
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onTap() {
    if (_currentIndex < 2) {
      setState(() {
        _currentIndex++;
        if (_currentIndex == 2) {
          _animationController.forward(from: 0.0);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    const padding = 80.0;

    return GestureDetector(
      onTap: _onTap,
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          // 右上にケース番号を表示
          Positioned(
            right: padding,
            top: padding,
            child: _buildText(text: widget.caseNumber, fontSize: 20),
          ),
          // ① 真ん中（言われた言葉）
          if (_currentIndex <= 1)
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Center(
                child: _buildText(text: widget.customerRequest, fontSize: 48),
              ),
            ),

          // ② 左上（補足分）※Optional
          // supplement が null でない場合のみ表示
          if (_currentIndex == 1 && widget.supplement != null)
            Positioned(
              left: padding + 150,
              top: padding + 200,
              child: _buildText(text: widget.supplement!, fontSize: 32),
            ),

          // ③ 真ん中（僕の感想）
          if (_currentIndex == 2)
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Center(
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: ScaleTransition(
                    scale: _scaleAnimation,
                    child: _buildText(text: widget.myThought, fontSize: 48),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildText({required String text, required double fontSize}) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
