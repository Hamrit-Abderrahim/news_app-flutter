import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/models/model.dart';
import 'package:news_app/moduls/business/business_screen.dart';
import 'package:news_app/moduls/general/general_screen.dart';
import 'package:news_app/moduls/sciences/science_screen.dart';
import 'package:news_app/moduls/sports/sports_screen.dart';
import 'package:news_app/moduls/technology/technology_screen.dart';
import 'package:news_app/shared/network/remote/dio_helper.dart';
import 'package:news_app/shared/resources/strings_manager.dart';
import 'package:news_app/shared/style/color/light_color.dart';

import '../../shared/network/local/cache_helper.dart';
import 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);
//***********changetheme ***************//

  bool isDark = false;
  changAppThemeMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      emit(ChangeThemeState());
    } else {
      isDark = !isDark;
      CacheHelper.saveData(key: 'isDark', value: isDark).then((value) {
        emit(ChangeThemeState());
      });
    }
  }

  //****************title ********************/
  List<String> title = [
    StringsManager.general,
    StringsManager.business,
    StringsManager.science,
    StringsManager.technology,
    StringsManager.sports
  ];
//*******************screen *********************//
  List<Widget> screen = [
    const GeneralScreen(),
    const BusinessScreen(),
    const ScienceScreen(),
    const TechnologyScreen(),
    const SportsScreen(),
  ];
  List<Color> color = [
    ColorManager.redColor,
    ColorManager.pinkColor,
    ColorManager.purpleColor,
    ColorManager.blueColor,
    ColorManager.tealColor,
  ];
//************************** BottomNavyBarItem ******************//
  List<BottomNavyBarItem> item = [
    BottomNavyBarItem(
      icon: const Icon(Icons.newspaper),
      title: const Text(StringsManager.general),
      activeColor: ColorManager.redColor,
      textAlign: TextAlign.center,
    ),
    BottomNavyBarItem(
      icon: const Icon(Icons.business_sharp),
      title: const Text(StringsManager.business),
      activeColor: ColorManager.purpleColor,
      textAlign: TextAlign.center,
    ),
    BottomNavyBarItem(
      icon: const Icon(Icons.science),
      title: const Text(
        StringsManager.science,
      ),
      activeColor: Colors.pink,
      textAlign: TextAlign.center,
    ),
    BottomNavyBarItem(
      icon: const Icon(Icons.tablet),
      title: const Text(StringsManager.technology),
      activeColor: ColorManager.blueColor,
      textAlign: TextAlign.center,
    ),
    BottomNavyBarItem(
      icon: const Icon(Icons.sports),
      title: const Text(StringsManager.sports),
      activeColor: ColorManager.tealColor,
      textAlign: TextAlign.center,
    ),
  ];

  //****************changeBottom ************//
  int currentIndex = 0;
  void changeBottom(index) {
    currentIndex = index;
    if (index == 1) getBusiness();
    if (index == 2) getScience();
    if (index == 3) getTechnology();

    if (index == 4) getSports();

    emit(ChangeBottomState());
  }

  //***********getGenerale***************//
  NewsModel? generaleModel;
  getGenerale() async {
    emit(GetGeneraleLoadingState());
    await DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'language': 'ar',
      'category': 'general',
      'apiKey': '9974a009db954b5e91831a15a30fb074',
    }).then((value) {
      generaleModel = NewsModel.fromJson(value!.data);
      emit(GetGeneraleSuccessState());
    }).catchError((error) {
      if (kDebugMode) {
        print(error.toString());
      }
      emit(GetGeneraleErrorState());
    });
  }

  //***********getscience***************//
  NewsModel? sciencesModel;
  getScience() async {
    emit(GetSciencesLoadingState());
    await DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'language': 'ar',
      'category': 'science',
      'apiKey': '9974a009db954b5e91831a15a30fb074',
    }).then((value) {
      sciencesModel = NewsModel.fromJson(value!.data);
      emit(GetSciencesSuccessState());
    }).catchError((error) {
      if (kDebugMode) {
        print(error.toString());
      }
      emit(GetSciencesErrorState());
    });
  }

  //***********getBusiness***************//
  NewsModel? businessModel;
  getBusiness() async {
    emit(GetBusinessLoadingState());
    await DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'language': 'ar',
      'category': 'business',
      'apiKey': '9974a009db954b5e91831a15a30fb074',
    }).then((value) {
      businessModel = NewsModel.fromJson(value!.data);
      emit(GetBusinessSuccessState());
    }).catchError((error) {
      if (kDebugMode) {
        print(error.toString());
      }
      emit(GetBusinessErrorState());
    });
  }

  //***********gettechnology***************//
  NewsModel? technologyModel;
  getTechnology() async {
    emit(GetTechnologyLoadingState());
    await DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'language': 'ar',
      'category': 'technology',
      'apiKey': '9974a009db954b5e91831a15a30fb074',
    }).then((value) {
      technologyModel = NewsModel.fromJson(value!.data);
      emit(GetTechnologySuccessState());
    }).catchError((error) {
      if (kDebugMode) {
        print(error.toString());
      }
      emit(GetTechnologyErrorState());
    });
  }

  //***********getsports***************//
  NewsModel? sportsModel;
  getSports() async {
    emit(GetSportsLoadingState());
    await DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'language': 'ar',
      'category': 'sports',
      'apiKey': '9974a009db954b5e91831a15a30fb074',
    }).then((value) {
      sportsModel = NewsModel.fromJson(value!.data);
      emit(GetSportsSuccessState());
    }).catchError((error) {
      if (kDebugMode) {
        print(error.toString());
      }
      emit(GetSportsErrorState());
    });
  }

  //*************search *****//
  NewsModel? searchModel;
  search(String search) async {
    emit(GetSearchLoadingState());
    await DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'language': 'ar',
      'q': search,
      'apiKey': '9974a009db954b5e91831a15a30fb074',
    }).then((value) {
      searchModel = NewsModel.fromJson(value!.data);
      print(searchModel!.articles[0].title);
      emit(GetSearchSuccessState());
    }).catchError((error) {
      if (kDebugMode) {
        print(error.toString());
      }
      emit(GetSearchErrorState());
    });
  }
}
