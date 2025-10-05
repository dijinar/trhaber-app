import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/city.dart';
import '../presentation/weather/weather_bloc.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  String _selectedCity = 'istanbul';

  // List of cities in English, lowercase

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  void _fetchWeather() {
    context.read<WeatherBloc>().add(WeatherEvent.fetch(city: _selectedCity));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const CircularProgressIndicator(strokeWidth: 2),
          loaded: (weather) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // City dropdown menu
                PopupMenuButton<String>(
                  initialValue: _selectedCity,
                  onSelected: (String city) {
                    setState(() {
                      _selectedCity = city;
                    });
                    _fetchWeather();
                  },
                  itemBuilder: (BuildContext context) => cities
                      .map((city) => PopupMenuItem<String>(
                            value: city,
                            height: 32.h, // Reduced height of each item
                            textStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium, // Smaller text style
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 4.h,
                                  horizontal: 2.w), // Reduced padding
                              child: Text(
                                city[0].toUpperCase() + city.substring(1),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium, // Smaller text style
                              ),
                            ),
                          ))
                      .toList(),
                  offset: Offset(0, 38.h),
                  color: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  elevation: 4,
                  constraints: BoxConstraints(
                      maxHeight: 300.h,
                      maxWidth: 150.w), // Add size constraints
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          weather.label,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        SizedBox(width: 7.w),
                        Text(
                          '${weather.degree}°',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 4.w),
                        Icon(Icons.arrow_drop_down, size: 20.r)
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          error: (msg) => GestureDetector(
            onTap: () {
              setState(() {
                _selectedCity =
                    'istanbul'; // Default to Istanbul on error refresh
              });
              _fetchWeather();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.error_outline, // Changed icon slightly for visual cue
                  color: Colors.red,
                  size: 16.r,
                ),
                SizedBox(width: 4.w),
                Text(
                  'Yenilemek için dokunun.', // Shortened and actionable message
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.red,
                        fontSize: 12.sp, // Smaller font size for error message
                      ),
                ),
              ],
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
