// Openapi Generator last run: : 2025-08-14T10:42:33.373297
import 'dart:io';
import 'dart:ui';

import 'package:event/event.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kubirovacka_one/apis/api_client.dart';
import 'package:kubirovacka_one/bloc/auth_bloc.dart';
import 'package:kubirovacka_one/bloc/auth_event.dart';
import 'package:kubirovacka_one/events/auth_events.dart';
import 'package:kubirovacka_one/router.dart';
import 'package:kubirovacka_one/services/quality_service.dart';
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import 'colors.dart';
import 'events/logs_events.dart';
import 'firebase_options.dart';
import 'services/auth_service.dart';
import 'services/scheduler_service.dart';

final getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!Platform.environment.containsKey('FLUTTER_TEST')) {
    await setupFirebase();
    setupCrashlytics();
  }

  initializeDateFormatting('cs-CZ');
  registerEvents();
  await registerServices();
  runApp(const MyApp());
}

Future registerServices() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  getIt.registerSingleton(sharedPrefs);

  getIt.registerSingleton<AuthService>(AuthService());
  getIt.registerSingleton(ApiClient());
  getIt.registerSingleton(QualityService());

  getIt.registerSingleton(SchedulerService());
  final database = await setupDatabase();

  getIt.registerSingleton<Database>(database);
}

void registerEvents() {
  getIt.registerSingleton(Event<UserInitCompleteEvent>());
  getIt.registerSingleton(Event<UserPurchasedPremiumEvent>());
  getIt.registerSingleton(Event<LogListCreatedEvent>());
  getIt.registerSingleton(Event<LogListEditedEvent>());
  getIt.registerSingleton(Event<LogListLogsChangedEvent>());
}

Future setupFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

void setupCrashlytics() {
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
}

Future<Database> setupDatabase() async {
  void createDb(Database db, int version) async {
    await db.execute(
        'CREATE TABLE wood_log_list(id TEXT PRIMARY KEY NOT NULL, name TEXT NOT NULL, created_at DATETIME NOT NULL, uploaded_at DATETIME, reward_in_cents INT NOT NULL, is_current_version_uploaded INT NOT NULL);');
    await db.execute(
        'CREATE TABLE wood_log(id TEXT PRIMARY KEY NOT NULL, log_list_id TEXT NOT NULL, wood_log_type INT NOT NULL, length REAL, diameter REAL, volume REAL NOT NULL, fsdu TEXT, is_rhizome INT NOT NULL, number INT NOT NULL, wood_type INT NOT NULL, quality INT NOT NULL, lat REAL, lng REAL, added_at DATETIME NOT NULL, raw_category INT, FOREIGN KEY (log_list_id) REFERENCES wood_log_list (id) ON DELETE CASCADE);');
  }

  final database = openDatabase(
    join(await getDatabasesPath(), 'kubirovacka_one.db'),
    onCreate: (db, version) {
      return createDb(db, version);
    },
    version: 1,
  );

  return database;
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}


class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return BlocProvider(create: (context) => AuthBloc()..add(InitAuthEvent()), child: Builder(builder: (context) => _buildPage(context),));
  }

  @override void dispose() {
    getIt.unregister<AuthService>();
    getIt.unregister<SchedulerService>();
    getIt.unregister<QualityService>();

    getIt.unregister<ApiClient>();
    getIt.unregister<Database>();
    getIt.unregister<SharedPreferences>();

    getIt.unregister<Event<UserInitCompleteEvent>>();
    getIt.unregister<Event<UserPurchasedPremiumEvent>>();
    getIt.unregister<Event<LogListCreatedEvent>>();
    getIt.unregister<Event<LogListEditedEvent>>();
    getIt.unregister<Event<LogListLogsChangedEvent>>();

    super.dispose();
  }

  Widget _buildPage(BuildContext context) {
    final _ = BlocProvider.of<AuthBloc>(context); // this needs to be called, otherwise the bloc is not created on start
    return MaterialApp.router(
      routerConfig: router,
      title: 'Kubírovačka ONE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        shadowColor: const Color.fromRGBO(245, 245, 245, 1),
        colorSchemeSeed: primaryColor,
        brightness: Brightness.light,
        useMaterial3: true,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: primaryColor,
          selectionColor: primaryColor,
          selectionHandleColor: primaryColor,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.black,
                displayColor: Colors.black,
              ),
        ).copyWith(
          bodyLarge: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, height: 1.5),
          bodyMedium: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, height: 1.5),
          bodySmall: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.5),
          titleLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          titleMedium: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          titleSmall: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(primaryColor),
              foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
              shape:
                  WidgetStateProperty.all<RoundedRectangleBorder>(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
              padding: WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.only(top: 13, bottom: 13, left: 30, right: 30)),
              textStyle: WidgetStateProperty.all<TextStyle>(const TextStyle(fontSize: 16, fontWeight: FontWeight.w900))),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              foregroundColor: WidgetStateProperty.all<Color>(primaryColor),
              textStyle: WidgetStateProperty.all<TextStyle>(const TextStyle(fontSize: 16, fontWeight: FontWeight.w900))),
        ),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: primaryColor,
          contentTextStyle: TextStyle(color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          ),
        ),
      ),
    );
  }
}

@Openapi(
    additionalProperties: AdditionalProperties(pubName: 'kubirovacka_api', pubAuthor: 'Václav Kozák'),
    inputSpec: RemoteSpec(path: 'https://stage.kubirovacka.cz/swagger/v1/swagger.json'),
    typeMappings: {
      'Type': 'ApiType'
    },
    forceAlwaysRun: true,
    generatorName: Generator.dio,
    runSourceGenOnOutput: true,
    outputDirectory: 'kubirovacka_api')
class ApiGenerator {}