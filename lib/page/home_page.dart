import 'package:adv_flutter_weather/bg/weather_bg.dart';
import 'package:adv_flutter_weather/utils/weather_type.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/weather_app.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});
  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((val) {
      ref.read(homeControllerLoadingProvider.notifier).state = true;
      ref.read(homeControllerProvider.notifier).getLocation().then((v) {
        ref.read(homeControllerLoadingProvider.notifier).state = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(homeControllerProvider.notifier);
    final state = ref.watch(homeControllerProvider);
    final loadingState = ref.watch(homeControllerLoadingProvider);

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Container(
            color: Colors.transparent,
            child: WeatherBg(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              weatherType: _weatherScene(state),
            ),
          ),
        ),
        Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      TypeAheadField<String>(
                        builder: (context, controller, focusNode) => TextField(
                          controller: controller,
                          focusNode: focusNode,
                          autofocus: false,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "Konumunuzu Giriniz...",
                          ),
                        ),
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            title: Text(suggestion),
                          );
                        },
                        onSelected: (suggestion) {
                          ref
                              .read(homeControllerLoadingProvider.notifier)
                              .state = true;
                          controller
                              .getWeather(suggestion.turkishToEnglish)
                              .then(
                            (data) {
                              ref
                                  .read(homeControllerLoadingProvider.notifier)
                                  .state = false;
                            },
                          );
                        },
                        suggestionsCallback: (pattern) async {
                          return await controller.getCities(city: pattern);
                        },
                      ),
                    ],
                  )),
              if (loadingState)
                const Center(
                  child: CircularProgressIndicator(),
                )
              else
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(state?.current?.lastUpdated ?? ""),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "${state?.current?.tempC.toString() ?? ""}" "°",
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 55,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    state?.location?.name ?? "",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    state?.location?.country.toString() ?? "",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    color: Colors.transparent,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              right: BorderSide(
                                                color: Colors.black,
                                                width: 0.3,
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              const Icon(Icons.cloud),
                                              Text(
                                                  "% ${state?.current?.cloud.toString() ?? ""}")
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              right: BorderSide(
                                                color: Colors.black,
                                                width: 0.5,
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              const Icon(Icons.air),
                                              Text(
                                                  " ${state?.current?.windKph?.toString() ?? ""}km/s")
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              right: BorderSide(
                                                color: Colors.black,
                                                width: 0.5,
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              const Icon(Icons.compress),
                                              Text(
                                                  " ${state?.current?.pressureMb?.toString() ?? ""}/mlb")
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Column(
                                            children: [
                                              const Icon(Icons.cloudy_snowing),
                                              Text(
                                                  "% ${state?.current?.cloud?.toString() ?? ""}"),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.black, width: 0.1))),
                          height: 300,
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text("Wind Direction "),
                                  Text("Nem"),
                                  Text("Sicaklik İndexi"),
                                  Text("Çiğ Noktosi"),
                                  Text("Görünürlük Mesafesi"),
                                  Text("Uv"),
                                  Text("Rüzgar Hiz Artişi"),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                          "${state?.current?.windDir.toString()}   " ??
                                              ""),
                                      const Icon(Icons.near_me),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                          "${state?.current?.humidity.toString()}   " ??
                                              ""),
                                      const Icon(Icons.opacity),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                          "${state?.current?.heatindexC.toString()}   " ??
                                              ""),
                                      const Icon(Icons.whatshot),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                          "${state?.current?.dewpointC.toString()}   " ??
                                              ""),
                                      const Icon(Icons.dew_point),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                          "${state?.current?.visKm.toString()}   " ??
                                              ""),
                                      const Icon(Icons.visibility),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("${state?.current?.uv.toString()}   " ??
                                          ""),
                                      const Icon(Icons.sunny),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("${state?.current?.uv.toString()}   "
                                         ?? ""),
                                      const Icon(Icons.emergency),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  WeatherType _weatherScene(WeatherModel? state) {
    var data = state?.current?.condition?.text;
    final hour = DateTime.now().hour;
    WeatherType result = WeatherType.sunny;

    if (data == WeatherEnum.sunny.data && hour >= 6 && hour <= 18) {
      result = WeatherEnum.sunny.widget;
    } else if (data == WeatherEnum.sunnyNight.data && (hour < 6 || hour > 18)) {
      result = WeatherEnum.sunnyNight.widget;
    } else if (data == WeatherEnum.partlyCloudy.data) {
      result = WeatherEnum.partlyCloudy.widget;
    } else if (data == WeatherEnum.cloudy.data) {
      result = WeatherEnum.cloudy.widget;
    } else if (data == WeatherEnum.overcast.data) {
      result = WeatherEnum.overcast.widget;
    } else if (data == WeatherEnum.mist.data) {
      result = WeatherEnum.mist.widget;
    } else if (data == WeatherEnum.patchyRainPossible.data) {
      result = WeatherEnum.patchyRainPossible.widget;
    } else if (data == WeatherEnum.patchySnowPossible.data) {
      result = WeatherEnum.patchySnowPossible.widget;
    } else if (data == WeatherEnum.patchySleetPossible.data) {
      result = WeatherEnum.patchySleetPossible.widget;
    } else if (data == WeatherEnum.patchyFreezingDrizzlePossible.data) {
      result = WeatherEnum.patchyFreezingDrizzlePossible.widget;
    } else if (data == WeatherEnum.thunderyOutbreaksPossible.data) {
      result = WeatherEnum.thunderyOutbreaksPossible.widget;
    } else if (data == WeatherEnum.blowingSnow.data) {
      result = WeatherEnum.blowingSnow.widget;
    } else if (data == WeatherEnum.blizzard.data) {
      result = WeatherEnum.blizzard.widget;
    } else if (data == WeatherEnum.fog.data) {
      result = WeatherEnum.fog.widget;
    } else if (data == WeatherEnum.freezingFog.data) {
      result = WeatherEnum.freezingFog.widget;
    } else if (data == WeatherEnum.patchyLightDrizzle.data) {
      result = WeatherEnum.patchyLightDrizzle.widget;
    } else if (data == WeatherEnum.lightDrizzle.data) {
      result = WeatherEnum.lightDrizzle.widget;
    } else if (data == WeatherEnum.freezingDrizzle.data) {
      result = WeatherEnum.freezingDrizzle.widget;
    } else if (data == WeatherEnum.heavyFreezingDrizzle.data) {
      result = WeatherEnum.heavyFreezingDrizzle.widget;
    } else if (data == WeatherEnum.patchyLightRain.data) {
      result = WeatherEnum.patchyLightRain.widget;
    } else if (data == WeatherEnum.lightRain.data) {
      result = WeatherEnum.lightRain.widget;
    }

    return result;
  }
}
