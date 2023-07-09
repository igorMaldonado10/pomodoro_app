// Need global variable because _lightTheme depends on _lightColorScheme
// which is not a static member
// ignore_for_file: prefer-static-class

// Ignoring null safety for this file because color palette is configured
// in the right way,
// ignore_for_file: avoid-non-null-assertion

part of 'ds_theme.dart';

final ColorScheme _darkColorScheme = const ColorScheme.dark().copyWith(
  primary: DSConstColor.primary,
  primaryContainer: DSConstColor.primaryDark,
  secondary: DSConstColor.secondary,
  secondaryContainer: DSConstColor.secondaryDark,
  // secondaryContainer: Color.fromARGB(255, 117, 173, 196),
  surface: DSConstColor.dark,
  background: DSConstColor.darker,
  error: Colors.red,
  onPrimary: DSConstColor.white,
  onSecondary: DSConstColor.white,
  onSurface: DSConstColor.white,
  onBackground: DSConstColor.white,
  onError: DSConstColor.white,
  brightness: Brightness.dark,
);

final ThemeData _darkThemeData = ThemeData.dark().copyWith(
  primaryColor: _darkColorScheme.primary,
  useMaterial3: true,
  colorScheme: _darkColorScheme,
  scaffoldBackgroundColor: _darkColorScheme.background,
  appBarTheme: AppBarTheme(
    // backgroundColor: _darkColorScheme.primaryContainer,
    backgroundColor: _darkColorScheme.error,
    foregroundColor: _darkColorScheme.onSurface,
    centerTitle: true,
    elevation: 0,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: _darkColorScheme.onPrimary,
    ),
    actionsIconTheme: IconThemeData(
      color: _darkColorScheme.onPrimary,
    ),
    titleTextStyle: DSBaseTypography.textTheme.headlineMedium!.copyWith(
      color: _darkColorScheme.onPrimary,
    ),
  ),
  chipTheme: ChipThemeData(
    shape: const StadiumBorder(
      side: BorderSide(width: 0),
    ),
    labelStyle: DSBaseTypography.textTheme.bodyLarge!.copyWith(
      color: DSConstColor.dark,
    ),
    backgroundColor: DSConstColor.light,
    labelPadding: const EdgeInsets.symmetric(
      vertical: DSConstSpace.xxSmall,
      horizontal: DSConstSpace.xSmall,
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: DSConstColor.medium,
    thickness: DSConstSize.dividerThickness,
    space: DSConstSpace.xLarge,
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: _darkColorScheme.background,
    filled: true,
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(DSConstProperty.radiusXLarge),
      borderSide: BorderSide.none,
    ),
    contentPadding: const EdgeInsets.fromLTRB(
      DSConstSpace.large,
      DSConstSpace.small,
      DSConstSpace.large,
      DSConstSpace.small,
    ),
    iconColor: _darkColorScheme.primary,
    prefixIconColor: _darkColorScheme.primary,
    suffixIconColor: _darkColorScheme.primary,
    hintStyle: DSBaseTypography.textTheme.bodyMedium!.copyWith(
      color: _darkColorScheme.onBackground,
    ),
  ),
  textTheme: DSBaseTypography.textTheme.copyWith(
    titleLarge: DSBaseTypography.textTheme.titleLarge!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    titleMedium: DSBaseTypography.textTheme.titleMedium!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    titleSmall: DSBaseTypography.textTheme.titleSmall!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    headlineLarge: DSBaseTypography.textTheme.headlineLarge!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    headlineMedium: DSBaseTypography.textTheme.headlineMedium!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    headlineSmall: DSBaseTypography.textTheme.headlineSmall!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    bodyLarge: DSBaseTypography.textTheme.bodyLarge!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    bodyMedium: DSBaseTypography.textTheme.bodyMedium!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
    bodySmall: DSBaseTypography.textTheme.bodySmall!.copyWith(
      color: _darkColorScheme.onSurface,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: _baseButtonStyle.copyWith(
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return DSConstColor.dark;
          } else if (states.contains(MaterialState.pressed)) {
            return DSConstColor.primaryDark;
          } else if (states.contains(MaterialState.hovered)) {
            return DSConstColor.primaryDark;
          } else {
            return DSConstColor.primary;
          }
        },
      ),
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return DSConstColor.light;
          } else {
            return DSConstColor.lighter;
          }
        },
      ),
    ),
  ),
  extensions: <ThemeExtension<dynamic>>[DSCustomTheme.dark],
);
