import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_sample/main_page_store.dart';

class MainPage extends StatelessWidget {
  final _store = MainPageStore();
  final _controller = TextEditingController();

  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobxExample'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40),
          Observer(builder: (_) => Text(_store.observableText ?? '')),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: _controller,
              onChanged: (text) => _store.observableText = text,
            ),
          ),
          SizedBox(height: 40),
          Observer(builder: (_) => Container(height: 50, width: 50, color: _store.color)),
          SizedBox(height: 40),
          ElevatedButton(onPressed: _reset, child: Text('Reset'))
        ],
      ),
    );
  }

  void _reset() {
    _controller.text = '';
    _store.reset();
  }
}
