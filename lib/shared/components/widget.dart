import 'package:flutter/material.dart';
import 'package:news_app/layouts/cubit/app_cubit.dart';
import 'package:news_app/moduls/web_view/web_view.dart';

import '../../models/model.dart';
import '../style/color/light_color.dart';
import 'components.dart';
import 'constants.dart';

Widget item(Articles model, context) => InkWell(
      onTap: () {
        navigateTo(context, WebViewScreen('${model.url}'));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                '${model.title}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppCubit.get(context).isDark
                        ? ColorManager.primary
                        : ColorManager.backgroundColor,
                    fontSize: 18.0),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                height: 200.0,
                width: double.infinity,
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(model.urlToImage ?? imaeUrl)),
              ),
              if (model.description != null)
                Text(
                  '${model.description}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppCubit.get(context).isDark
                          ? ColorManager.primary
                          : ColorManager.backgroundColor,
                      fontSize: 18.0),
                  textDirection: TextDirection.rtl,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  defaultText(context,
                      text: '${model.publishedAt}',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: ColorManager.pinkColor,
                          fontWeight: FontWeight.w700)),
                  defaultText(context,
                      text: '${model.source!.name}',
                      style: const TextStyle(
                          fontSize: 12.0,
                          color: ColorManager.purpleColor,
                          fontWeight: FontWeight.w600)),
                ],
              )
            ],
          ),
        ),
      ),
    );
