// Need global variable because _lightTheme depends on _lightColorScheme
// which is not a static member
// ignore_for_file: prefer-static-class

// Ignoring null safety for this file because color palette is configured
// in the right way,
// ignore_for_file: avoid-non-null-assertion

part of 'ds_theme.dart';

final ColorScheme _lightColorScheme = const ColorScheme.dark().copyWith(
  primary: DSConstColor.primary,
  primaryContainer: DSConstColor.primary,
  secondary: DSConstColor.secondary,
  secondaryContainer: DSConstColor.secondary,
  surface: DSConstColor.white,
  background: DSConstColor.lighter,
  error: Colors.red,
  onPrimary: DSConstColor.white,
  onSecondary: DSConstColor.white,
  onSurface: DSConstColor.dark,
  onBackground: DSConstColor.dark,
  onError: DSConstColor.white,
  brightness: Brightness.light,
);

final ThemeData _lightThemeData = ThemeData.light().copyWith(
  primaryColor: _lightColorScheme.primary,
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  scaffoldBackgroundColor: _lightColorScheme.background,
  appBarTheme: AppBarTheme(
    // backgroundColor: _lightColorScheme.primaryContainer,
    backgroundColor:  _lightColorScheme.onBackground,
    foregroundColor: _lightColorScheme.onPrimary,
    centerTitle: true,
    elevation: 0,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: _lightColorScheme.onPrimary,
    ),
    actionsIconTheme: IconThemeData(
      color: _lightColorScheme.onPrimary,
    ),
    titleTextStyle: DSBaseTypography.textTheme.headlineMedium!.copyWith(
      color: _lightColorScheme.onPrimary,
    ),
  ),
  cardTheme: const CardTheme(
    color: DSConstColor.white,
    elevation: 0,
    shadowColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(DSConstProperty.radius),
    ),
  ),
  chipTheme: ChipThemeData(
    shape: const StadiumBorder(
      side: BorderSide(width: 0),
    ),
    labelStyle: DSBaseTypography.textTheme.bodyLarge!.copyWith(
      color: DSConstColor.light,
    ),
    backgroundColor: DSConstColor.dark,
    labelPadding: const EdgeInsets.symmetric(
      vertical: DSConstSpace.xxSmall,
      horizontal: DSConstSpace.xSmall,
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: DSConstColor.light,
    thickness: DSConstSize.dividerThickness,
    space: DSConstSpace.xLarge,
  ),

  disabledColor: DSConstColor.light,
  inputDecorationTheme: InputDecorationTheme(
    fillColor: _lightColorScheme.background,
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
    iconColor: _lightColorScheme.primary,
    prefixIconColor: _lightColorScheme.primary,
    suffixIconColor: _lightColorScheme.primary,
    hintStyle: DSBaseTypography.textTheme.bodyMedium!.copyWith(
      color: _lightColorScheme.onBackground,
    ),
  ),
  textTheme: DSBaseTypography.textTheme.copyWith(
    titleLarge: DSBaseTypography.textTheme.titleLarge!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    titleMedium: DSBaseTypography.textTheme.titleMedium!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    titleSmall: DSBaseTypography.textTheme.titleSmall!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    headlineLarge: DSBaseTypography.textTheme.headlineLarge!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    headlineMedium: DSBaseTypography.textTheme.headlineMedium!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    headlineSmall: DSBaseTypography.textTheme.headlineSmall!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    bodyLarge: DSBaseTypography.textTheme.bodyLarge!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    bodyMedium: DSBaseTypography.textTheme.bodyMedium!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
    bodySmall: DSBaseTypography.textTheme.bodySmall!.copyWith(
      color: _lightColorScheme.onSurface,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: _baseButtonStyle.copyWith(
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return DSConstColor.light;
          } else if (states.contains(MaterialState.pressed)) {
            return DSConstColor.primaryLight;
          } else if (states.contains(MaterialState.hovered)) {
            return DSConstColor.primaryLight;
          } else {
            return DSConstColor.primary;
          }
        },
      ),
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return DSConstColor.medium;
          } else {
            return DSConstColor.lighter;
          }
        },
      ),
    ),
  ),
  // iconButtonTheme: IconButtonThemeData(style: ButtonStyle()),
  iconTheme: IconThemeData(
    color: _lightColorScheme.onSurface,
  ),
  extensions: <ThemeExtension<dynamic>>[DSCustomTheme.light],
);
