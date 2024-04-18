import 'package:arabni/core/utils/string_constants.dart';
import 'package:arabni/features/Register/views/screen/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  Future.wait([ScreenUtil.ensureScreenSize()]).then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      designSize: const Size(375, 812),
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: StringConstants.appName,
          home: RegisterScreen(),
        );
      },
    );
  }
}
