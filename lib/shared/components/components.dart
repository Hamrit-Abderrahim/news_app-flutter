// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../resources/style_manager.dart';
import '../resources/value_manager.dart';
import '../style/color/light_color.dart';

//*********NavigateAndReplace***************
void navigateAndReplace(context, widget) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
    (route) => false,
  );
}

//*********Navigate To***************
void navigateTo(context, widget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

//*******************************defaultIconData ****************//
Widget defaultIcon({context, required IconData icon}) => Icon(
      icon,
      color: ColorManager.redColor,
    );

//*********************defaultText **********************//
Widget defaultText(
  context, {
  required String text,
  double? size,
  FontWeight? fontWeight,
  int? maxLines,
  TextOverflow? overflow,
  TextAlign? align,
  double? height,
  TextStyle? style,
}) =>
    Text(text, textAlign: align, maxLines: maxLines, style: style);
//........MyDivider............
Widget myDivider() => const Padding(
      padding: EdgeInsetsDirectional.only(start: 0.0, end: 0.0),
      child: SizedBox(
        width: double.infinity,
        height: 1.0,
        //color: Colors.grey,
      ),
    );

//...........defaultFormField..........
Widget defaultFormField(
  context, {
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  FormFieldValidator<String>? validate,
  required String label,
  Widget? prefix,
  Widget? suffix,
  Function? suffixPressed,
  bool isClickable = true,
  int? maxLength,
  int maxLines = 1,
  int? minLines,
  Color fillColor = const Color(0xFFE8E8E8),
  Color textColorDark = Colors.white,
  bool enabled = true,
  String? hint,
}) =>
    TextFormField(
      textDirection: TextDirection.rtl,
      enabled: enabled,
      style: const TextStyle(fontSize: 18.0, color: Colors.black),
      keyboardType: type,
      validator: validate,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffC9C9C9), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffC9C9C9), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        errorStyle: const TextStyle(fontSize: 14),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff0e93a7), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        contentPadding: const EdgeInsets.all(10),
        labelText: label,
        suffixIcon: suffix,
        labelStyle: const TextStyle(
          fontSize: 18,
          color: Colors.grey,
        ),
        hintStyle: const TextStyle(
          fontSize: 15,
        ),
        hintText: hint,
        prefixIcon: prefix,
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    );
//*************************CustomFormFieled ***************//
//...........defaultFormField..........
Widget customeFormFieled(context,
        {required TextEditingController controller,
        required TextInputType type,
        bool isPassword = false,
        FormFieldValidator<String>? validate,
        required String label,
        Widget? prefix,
        Widget? suffix,
        bool isClickable = true,
        int? maxLength,
        int? maxLines,
        int? minLines,
        Color fillColor = const Color(0xFFE8E8E8),
        Color? suffixColor,
        double? suffixSize,
        Color? prifixColor,
        double prifixSize = 20.0,
        bool read = false,
        Color colorOneDark = Colors.white,
        String? hint,
        Color textColor = Colors.white}) =>
    TextFormField(
      style: const TextStyle(color: Colors.black),
      readOnly: read,
      validator: validate,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffC9C9C9), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        errorStyle: const TextStyle(fontSize: 14),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff0e93a7), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        contentPadding: const EdgeInsets.all(10),
        labelText: label,
        suffixIcon: suffix,
        labelStyle: const TextStyle(
          fontSize: 18,
          color: Colors.grey,
        ),
        hintStyle: const TextStyle(
          fontSize: 21,
        ),
        hintText: hint,
        prefixIcon: prefix,
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    );
//.............defaultButton.........
Widget defaultButton({
  double width = double.infinity,
  Color background = const Color(0xFFECB390),
  bool isUpperCase = true,
  double radius = 3.0,
  double size = 18.0,
  required Function function,
  required Widget text,
}) =>
    SizedBox(
      width: width,
      height: 50.0,
      child: MaterialButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        color: background,
        onPressed: () {
          function();
        },
        child: text,
      ),
    );
//.............defaultTextButton.........
Widget defaultTextButton(
  context, {
  required Function function,
  required String text,
  Color colorTwo = const Color(0xFFFF957B),
  Color colorOne = const Color(0xFF075668),
  double? size,
}) =>
    TextButton(
      onPressed: () {
        function();
      },
      child: Text(
        text.toUpperCase(),
        style: TextStyle(color: colorOne, fontSize: size),
      ),
    );
//.............showToast............
void showToast({
  required String text,
  required ToastStates state,
}) =>
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        //هذي ل android lenght_long 5s
        gravity: ToastGravity.BOTTOM,
        //مكان ظهورها في الشاشة
        timeInSecForIosWeb: 5,
        //هذا ل ios and web
        backgroundColor: chooseToastColor(state),
        textColor: Colors.black,
        fontSize: 16.0);

enum ToastStates { SUCCESS, ERROR, WARNING }

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}

//*********defaultAppbar ***********//
PreferredSizeWidget defaultAppBar({
  String title = "",
  required BuildContext context,
  List<Widget>? actions,
  double? size,
  Widget? leading,
  Color? backColor,
  FontWeight? weight,
  double? elevation = AppSize.s8,
  Color color = const Color(0xFFECB390),
}) =>
    AppBar(
      backgroundColor: backColor,
      leadingWidth: AppSize.s30,
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorManager.backgroundColor),
      elevation: elevation,
      centerTitle: true,
      leading: leading,
      title: Text(title, style: getsemiBoldStyle(color: ColorManager.primary)),
      actions: actions,
      titleSpacing: 5.0,
    );
