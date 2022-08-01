import 'dart:ui';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layouts/cubit/app_cubit.dart';
import 'package:news_app/layouts/cubit/app_state.dart';
import 'package:news_app/models/model.dart';
import 'package:news_app/shared/components/components.dart';
import 'package:news_app/shared/style/color/light_color.dart';

import '../../shared/components/constants.dart';
import '../../shared/components/widget.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          body: ConditionalBuilder(
            condition: cubit.generaleModel != null,
            builder: (context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: RefreshIndicator(
                onRefresh: () => cubit.getGenerale(),
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      item(cubit.generaleModel!.articles[index], context),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: cubit.generaleModel!.articles.length,
                ),
              ),
            ),
            fallback: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
