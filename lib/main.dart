import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/Core/Utils/app_router.dart';
import 'package:recipe_app/Core/Utils/service_locator.dart';

void main()
{
  setUpServiceLocator();
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget
{
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      designSize: Size(MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),

      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme(), useMaterial3: true),
      ),
    );
  }
}