import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layouts/cubit/app_cubit.dart';
import 'package:news_app/shared/style/theme/dark_theme.dart';
import 'layouts/cubit/app_cubit.dart';
import 'layouts/cubit/app_state.dart';
import 'shared/resources/routes_manager.dart';
import 'shared/style/theme/light_theme.dart';

class MyApp extends StatelessWidget {
  final bool isDark;

  MyApp(this.isDark);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => AppCubit()
              ..changAppThemeMode(fromShared: isDark)
              ..getGenerale())
      ],
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.layoutsScreen,
            theme:
                AppCubit.get(context).isDark ? getLightTheme() : getDarkTheme(),
          );
        },
      ),
    );
  }
}
