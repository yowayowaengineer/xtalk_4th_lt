import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class IcebreakSlide extends FlutterDeckSlideWidget {
  const IcebreakSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/icebreak'),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Stack(
        children: [
          // 背景画像（左寄せ、縦固定、横可変）
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/xtalk.webp',
              fit: BoxFit.fitHeight,
              height: double.infinity,
            ),
          ),
          // 右側にタイトルと著者名を配置
          Positioned(
            right: 80,
            top: 0,
            bottom: 0,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // タイトル
                  Text(
                    '顧客から言われて傷ついたこと',
                    style: TextStyle(
                      fontSize: 56,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 40),
                  // 著者名
                  Text(
                    'よわよわエンジニア',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
