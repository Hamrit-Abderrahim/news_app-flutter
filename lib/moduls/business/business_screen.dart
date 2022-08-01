import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layouts/cubit/app_cubit.dart';
import '../../layouts/cubit/app_state.dart';
import '../../shared/components/widget.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          body: ConditionalBuilder(
            condition: cubit.businessModel != null,
            builder: (context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: RefreshIndicator(
                onRefresh: () => cubit.getBusiness(),
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      item(cubit.businessModel!.articles[index], context),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: cubit.businessModel!.articles.length,
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
