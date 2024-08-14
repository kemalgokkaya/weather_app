import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:weather_app/weather_app.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});
  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(homeControllerProvider.notifier);
    final state = ref.watch(homeControllerProvider);
    final loadingState = ref.watch(homeControllerLoadingProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hava Durumu "),
      ),
      body: Column(
        children: [
          TypeAheadField<String>(
            itemBuilder: (context, suggestion) {
              return ListTile(
                title: Text(suggestion),
              );
            },
            onSelected: (suggestion) {
              ref.read(homeControllerLoadingProvider.notifier).state = true;
              controller.getWeather(suggestion).then(
                (data) {
                  ref.read(homeControllerLoadingProvider.notifier).state =
                      false;
                },
              );
            },
            suggestionsCallback: (pattern) async {
              return await controller.getCities(city: pattern);
            },
          ),
          if (loadingState)
            const CircularProgressIndicator()
          else
            Text(state?.main?.feelsLike.toString() ?? ""),
        ],
      ),
    );
  }
}
