import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urunan/engine/dio/tmdb.dart';
import 'package:urunan/engine/engine.dart';
import 'package:urunan/engine/repositories/activity.dart';
import 'package:urunan/l10n/l10n.dart';
import 'package:urunan/router/urunan_router.dart';
import 'package:urunan/shared/blocs/blocs.dart';

final _appRouter = UrunanRouter();

final _userDio = Dio(
  BaseOptions(
    // baseUrl: '',
    contentType: 'application/json',
  ),
);

final _fbAuth = FirebaseAuth.instance;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return _RepositoryProvider(
      child: _BlocProvider(
        child: _BlocListener(
          child: _app,
        ),
      ),
    );
  }
}

class _RepositoryProvider extends StatelessWidget {
  const _RepositoryProvider({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepository(dao: UserDio(dio: _userDio)),
        ),
        RepositoryProvider<ServiceAccessRepository>(
          create: (context) => const ServiceAccessRepository(
            dio: ServiceAccessDio(),
          ),
        ),
        RepositoryProvider<ActivityRepository>(
          create: (context) => ActivityRepository(
            dao: ActivityDio(tmdbDio: TMDBDio()),
          ),
        ),
      ],
      child: child,
    );
  }
}

class _BlocProvider extends StatelessWidget {
  const _BlocProvider({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (_) => AppBloc(),
        // ),
        // BlocProvider(
        //   create: (_) => GeminiBloc(),
        // ),
        // BlocProvider(
        //   create: (_) => GeminiVoiceBloc(),
        // ),
        BlocProvider(
          create: (_) {
            final bloc = UserBloc(
              repository: context.read<UserRepository>(),
              firebaseAuth: _fbAuth,
            );
            Future.delayed(const Duration(seconds: 2), () {
              bloc.add(const UserInitialize());
            });
            return bloc;
          },
          // ..add(const UserInitialize()),
          lazy: false,
        ),
      ],
      child: child,
    );
  }
}

class _BlocListener extends StatelessWidget {
  const _BlocListener({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UserBloc, UserState>(
          listenWhen: (prev, curr) {
            return prev.authState != curr.authState;
          },
          listener: (context, state) {
            if (state.authState == AuthState.signedIn) {
              _appRouter
                ..popUntilRoot()
                ..replace(const HomeRoute());
            } else {
              _appRouter
                ..popUntilRoot()
                ..replace(const SignInRoute());
            }
          },
        ),
      ],
      child: child,
    );
  }
}

final _typography = Typography();

const _urunanTextStyle = TextStyle(letterSpacing: 0.3);

final _app = MaterialApp.router(
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  routerConfig: _appRouter.config(),
  theme: ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: GoogleFonts.plusJakartaSansTextTheme(
      _typography.black.copyWith(
        titleMedium: _urunanTextStyle.copyWith(
          fontWeight: FontWeight.w800,
          color: Colors.grey.shade100,
        ),
        titleLarge: _urunanTextStyle.copyWith(
          fontWeight: FontWeight.w800,
          color: Colors.grey.shade100,
        ),
        titleSmall: _urunanTextStyle.copyWith(
          fontWeight: FontWeight.w800,
          color: Colors.grey.shade100,
        ),
        bodyMedium: _urunanTextStyle,
        bodyLarge: _urunanTextStyle,
        bodySmall: _urunanTextStyle,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.indigo.shade900, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.indigo.shade900, width: 2),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.indigo.shade900, width: 2),
      ),
      labelStyle: GoogleFonts.oswald(
        textStyle: const TextStyle(color: Colors.white),
        color: Colors.white,
      ),
      fillColor: Colors.indigo.shade900,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo.shade900,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.indigo.shade900,
      foregroundColor: Colors.white,
    ),
  ),
  // theme: lightTheme,
  // darkTheme: darkTheme,
);

extension BuildContextEntension<T> on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;

  EdgeInsets get screenPadding => MediaQuery.of(this).viewPadding;

  Size get size => MediaQuery.of(this).size;

  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension ColorBrightness on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1, 'Amount must be between 0 and 1');

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1, 'Amount must be between 0 and 1');

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  Brightness get getTextColorTheme {
    return (computeLuminance() > 0.179) ? Brightness.light : Brightness.dark;
  }
}
