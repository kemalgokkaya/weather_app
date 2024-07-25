import 'package:flutter/material.dart';
import 'package:weather_app/weather_app.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final List list1 = [1, 2, 3, 4, 5];
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final contoller = ref.read(homeControllerProvider.notifier);
    final state = ref.watch(homeControllerProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hava Durumu "),
      ),
      body: Column(
        children: [
          TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              hintText: "Enter City Name",
              suffixIcon: IconButton(
                onPressed: () {
                  contoller.getWeather(_textEditingController.text);
                },
                icon: const Icon(Icons.search),
              ),
            ),
          ),
          Text(state?.main?.temp.toString() ?? "boş")
        ],
      ),
    );
  }
}
