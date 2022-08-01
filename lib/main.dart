import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:news_app/shared/bloc_observer.dart';

import 'app.dart';
import 'shared/network/local/cache_helper.dart';
import 'shared/network/remote/dio_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  DioHelper.init();
  bool isDark = CacheHelper.getData(key: 'isDark') ?? false;
  BlocOverrides.runZoned(
    () => runApp(MyApp(isDark)),
    blocObserver: MyBlocObserver(),
  );
}
