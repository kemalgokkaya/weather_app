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
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      state?.location?.name ?? "",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      state?.location?.country.toString() ?? "",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )),
          ),
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TypeAheadField<String>(
                  builder: (context, controller, focusNode) => TextField(
                    controller: controller,
                    focusNode: focusNode,
                    autofocus: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: "Konumunuzu Giriniz...",
                    ),
                  ),
                  itemBuilder: (context, suggestion) {
                    return ListTile(
                      title: Text(suggestion),
                    );
                  },
                  onSelected: (suggestion) {
                    ref.read(homeControllerLoadingProvider.notifier).state =
                        true;
                    controller.getWeather(suggestion.turkishToEnglish).then(
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
              ),
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
                          height: 15,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.all(10),
                              width: 180,
                              height: 250,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Tarih:"
                                    "${state?.current?.lastUpdated ?? ""}",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                ),
                              ),
                              padding: const EdgeInsets.all(10),
                              width: 200,
                              height: 250,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Derece(c):"
                                    "${state?.current?.tempC.toString() ?? ""}",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                ),
                              ),
                              padding: const EdgeInsets.all(10),
                              width: 180,
                              height: 250,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Hissedilen(c):"
                                    "${state?.current?.feelslikeC.toString() ?? ""}",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Nem(%):"
                                    "${state?.current?.humidity.toString() ?? ""}",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Bulut Orani(%):"
                                    "${state?.current?.cloud.toString() ?? ""}",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Rüzgar Hizi(km):"
                                    "${state?.current?.windKph.toString() ?? ""}",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                ),
                              ),
                              padding: const EdgeInsets.all(8),
                              width: 180,
                              height: 250,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Rüzgar Sicakliği(c):"
                                    "${state?.current?.windDegree.toString() ?? ""}",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Yağiş(%):"
                                    "${state?.current?.precipMm.toString() ?? ""}",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "UV:"
                                    "${state?.current?.uv.toString() ?? ""}",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Basinç Yüksekliği(mb):"
                                    "${state?.current?.pressureMb.toString() ?? ""}",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
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
