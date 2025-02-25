import 'home.dart';
import 'data/questions.dart';
import 'package:flutter/material.dart';

class Resualt extends StatefulWidget {
  const Resualt(this.selectedAnswerResualt, {super.key});

  final List<String> selectedAnswerResualt;

  @override
  State<Resualt> createState() => _ResualtState();
}

class _ResualtState extends State<Resualt> {
  List<Map<String, Object>> getSummeryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < widget.selectedAnswerResualt.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': widget.selectedAnswerResualt[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummeryData();
    int numOfCorrectAns = summaryData
        .where((element) => element['user_answer'] == element['correct_answer'])
        .length;
    return SingleChildScrollView(
      child: Container(
        color: Colors.indigo,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "Your Correct Answer is  $numOfCorrectAns of 6 ",
                style: const TextStyle(
                  backgroundColor : Colors.black45,
                    color: Colors.white,
                    fontSize: 30,
                    inherit: false,
                    fontWeight: FontWeight.bold),
              ),
              ...getSummeryData().map((e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: e['user_answer'] == e['correct_answer']
                            ? Colors.green
                            : Colors.red,
                        child: Text(
                          ((e['question_index'] as int) + 1).toString(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e['question'].toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      inherit: false,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  e['user_answer'].toString(),
                                  style: const TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 20,
                                    inherit: false,
                                  ),
                                ),
                                Text(
                                  e['correct_answer'].toString(),
                                  style: const TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 20,
                                    inherit: false,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  )),
              const SizedBox(
                height: 35,
              ),
              TextButton.icon(
                icon: const Icon(
                  Icons.restart_alt_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
                label: const Text(
                  "Restart Quiz !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    // inherit: false,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
