import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:news_app/shared/resources/routes_manager.dart';
import 'package:news_app/shared/style/color/light_color.dart';

import 'cubit/app_cubit.dart';
import 'cubit/app_state.dart';

class LayoutsScreen extends StatelessWidget {
  const LayoutsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            // leading: IconButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, Routes.searchScreen);
            //     },
            //     icon: const Icon(Icons.search)),
            actions: [
              IconButton(
                  onPressed: () {
                    cubit.changAppThemeMode();
                  },
                  icon: const Icon(
                    Icons.brightness_4_outlined,
                  ))
            ],
            title: Text(
              cubit.title[cubit.currentIndex],
              style: TextStyle(
                  color: cubit.color[cubit.currentIndex],
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavyBar(
            selectedIndex: cubit.currentIndex,
            showElevation: true,
            itemCornerRadius: 24,
            curve: Curves.easeIn,
            backgroundColor: AppCubit.get(context).isDark
                ? ColorManager.backgroundColor
                : ColorManager.primary,
            onItemSelected: (index) => cubit.changeBottom(index),
            items: cubit.item,
          ),
          body: cubit.screen[cubit.currentIndex],
        );
      },
    );
  }
}
