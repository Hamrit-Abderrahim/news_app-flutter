import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layouts/cubit/app_cubit.dart';
import 'package:news_app/layouts/cubit/app_state.dart';
import 'package:news_app/shared/components/components.dart';
import 'package:news_app/shared/resources/value_manager.dart';

import '../../shared/components/widget.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  var searchController = TextEditingController();
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);

        return Scaffold(
          appBar: AppBar(title: const Text('Search'), elevation: AppSize.s0),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: searchController,
                  onChanged: (String value) {
                    if (value.isNotEmpty) cubit.search(value);
                  },
                  decoration: const InputDecoration(label: Text('search')),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                //if (cubit.searchModel!.articles.isNotEmpty)
                Expanded(
                  child: ConditionalBuilder(
                    condition: cubit.searchModel != null,
                    builder: (context) => ListView.separated(
                      itemBuilder: (context, index) =>
                          item(cubit.searchModel!.articles[index], context),
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: cubit.searchModel!.articles.length,
                    ),
                    fallback: (context) => isSearch
                        ? Container()
                        : const Center(child: CircularProgressIndicator()),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
