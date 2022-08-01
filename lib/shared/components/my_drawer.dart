// import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import 'package:rahim_portfolio/shared/components/components.dart';
// import 'package:rahim_portfolio/shared/components/widget.dart';
// import 'package:rahim_portfolio/shared/resources/strings_manager.dart';
// import 'package:rahim_portfolio/shared/resources/style_manager.dart';
// import 'package:rahim_portfolio/shared/resources/value_manager.dart';
// import 'package:rahim_portfolio/shared/style/color/light_color.dart';
// import '../resources/assets_manager.dart';
// import 'constants.dart';

// Drawer myDrawer(context) => Drawer(
//       child: Scaffold(
//         appBar: defaultAppBar(
//             context: context, leading: leading(context), elevation: AppSize.s0),
//         body: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 const CircleAvatar(
//                   radius: AppSize.s60,
//                   backgroundImage: AssetImage(ImageAssets.profileImage),
//                 ),
//                 const SizedBox(height: AppSize.s10),
//                 defaultText(context,
//                     text: StringsManager.prSkill,
//                     style: getBoldStyle(color: ColorManager.primary)),
//                 const SizedBox(height: AppSize.s10),
//                 skills(
//                     context,
//                     StringsManager.wPress,
//                     0.9,
//                     StringsManager.perWPress,
//                     ColorManager.pinkColor,
//                     ColorManager.pinkColor),
//                 skills(context, StringsManager.php, 0.8, StringsManager.perhtml,
//                     ColorManager.redColor, ColorManager.redColor),
//                 skills(
//                     context,
//                     StringsManager.html,
//                     0.7,
//                     StringsManager.perhtml,
//                     ColorManager.blueColor,
//                     ColorManager.blueColor),
//                 skills(context, StringsManager.css, 0.6, StringsManager.percss,
//                     ColorManager.yelloColor, ColorManager.yelloColor),
//                 skills(
//                     context,
//                     StringsManager.mSql,
//                     0.5,
//                     StringsManager.permSql,
//                     ColorManager.aquaColor,
//                     ColorManager.aquaColor),
//                 const SizedBox(
//                   height: AppSize.s10,
//                 ),
//                 defaultText(context,
//                     text: StringsManager.lngSkill,
//                     style: getBoldStyle(color: ColorManager.primary)),
//                 const SizedBox(height: AppSize.s10),
//                 Padding(
//                   padding: const EdgeInsets.all(AppPadding.p8),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: AppPadding.p8),
//                         child: defaultText(context,
//                             text: StringsManager.engSkill,
//                             style:
//                                 getsemiBoldStyle(color: ColorManager.textGrey)),
//                       ),
//                       Row(
//                         children: [
//                           icon(),
//                           icon(),
//                           icon(),
//                           icon(),
//                           iconOutline()
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: AppPadding.p8),
//                         child: defaultText(context,
//                             text: StringsManager.frSkill,
//                             style:
//                                 getsemiBoldStyle(color: ColorManager.textGrey)),
//                       ),
//                       Row(
//                         children: [
//                           icon(),
//                           icon(),
//                           icon(),
//                           icon(),
//                           iconOutline()
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
// Widget icon() => const Icon(
//       Icons.star,
//       size: AppSize.s40,
//     );
// Widget iconOutline() => const Icon(
//       Icons.star_border_outlined,
//       size: AppSize.s40,
//     );

// Widget skills(context, String text, double percent, String textPercent,
//         Color colorOne, Color colorTwo) =>
//     Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
//           child: defaultText(context,
//               text: text, style: getsemiBoldStyle(color: ColorManager.primary)),
//         ),
//         const SizedBox(height: AppSize.s10),
//         Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             boxShadow: [
//               BoxShadow(
//                 color: ColorManager.shadowCard.withOpacity(0.1),
//                 spreadRadius: 5,
//                 blurRadius: 7,
//                 offset: const Offset(0, 3), // changes position of shadow
//               ),
//             ],
//           ),
//           child: LinearPercentIndicator(
//               // width: double.infinity,
//               animation: true,
//               animationDuration: animationDuration,
//               lineHeight: AppSize.s20,
//               percent: percent,
//               center: defaultText(context,
//                   text: textPercent,
//                   style: getMediumStyle(color: ColorManager.backgroundColor)),
//               linearStrokeCap: LinearStrokeCap.round,
//               backgroundColor: ColorManager.backgroundColor,
//               linearGradient: LinearGradient(colors: [
//                 colorOne,
//                 colorTwo.withOpacity(.6),
//               ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
//         ),
//       ],
//     );
