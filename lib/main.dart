import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '/core/utils/logger.dart';
import '/core/utils/navigator_service.dart';
import '/core/utils/pref_utils.dart';
import '/localization/app_localization.dart';
import '/routes/app_routes.dart';
import 'localization/cubit/locale_cubit.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    PrefUtils().init();
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocaleCubit>(
          create: (_) => LocaleCubit(),
        ),
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(builder: (context, state) {
        return MaterialApp(
          navigatorKey: NavigatorService.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            visualDensity: VisualDensity.standard,
          ),
          scaffoldMessengerKey: globalMessengerKey,
          //for setting localization strings
          supportedLocales: const [
            Locale("ar", "SA"),
            Locale('en', 'US'),
          ],

          localizationsDelegates: const [
            AppLocalizationDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: state.locale,
          title: 'mohamed_s_application2',
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.routes,
        );
      }),
    );
  }
}
