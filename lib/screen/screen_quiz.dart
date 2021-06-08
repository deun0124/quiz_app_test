import 'dart:html';

import 'package:quiz_app_test/models/model_quiz.dart';

import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  List<Quiz> quizs;
  QuizScreen({required this.quizs});
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // 정답을 담아놓을 리스트
  List<int> _answers = [-1, -1, -1];

  // 각 문제별 보기의 눌렸는지 안눌렸는지 판단하는 리스트
  List<bool> _answerState = [false, false, false, false];

  // 현재 어떤 문제를 풀고 있는지
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.deepPurple),
            ),
            width: width * 0.85,
            height: height * 0.5,
          ),
        ),
      ),
    );
  }
}
