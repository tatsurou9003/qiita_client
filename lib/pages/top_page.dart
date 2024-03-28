import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Row(children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/qiita_client.png"),
                    fit: BoxFit.cover),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    const Spacer(),
                    SizedBox(
                      width: 280,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.greenAccent,
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side:
                                  const BorderSide(color: Colors.greenAccent)),
                        ),
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          context.push('/feed');
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                      width: 280,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.greenAccent,
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side:
                                  const BorderSide(color: Colors.greenAccent)),
                        ),
                        child: const Text(
                          'USE  WITHOUT  LOGIN',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          context.push('/feed');
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 120.0,
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
