import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BigConceptSlide extends FlutterDeckSlideWidget {
  const BigConceptSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/big-concept',
          title: 'ビッグコンセプト',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _BigConceptSlideContent(),
    );
  }
}

class _BigConceptSlideContent extends StatefulWidget {
  const _BigConceptSlideContent();

  @override
  State<_BigConceptSlideContent> createState() =>
      _BigConceptSlideContentState();
}

class _BigConceptSlideContentState extends State<_BigConceptSlideContent>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOutBack),
    );
    // アニメーションを自動開始
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: _buildText(text: 'コードを憎んで人を憎まず！', fontSize: 72),
        ),
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
