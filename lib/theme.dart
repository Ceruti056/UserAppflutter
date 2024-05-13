import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278217566),
      surfaceTint: Color(4278217566),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288672481),
      onPrimaryContainer: Color(4278198299),
      secondary: Color(4286011915),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294959004),
      onSecondaryContainer: Color(4280621568),
      tertiary: Color(4281297475),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4289917376),
      onTertiaryContainer: Color(4278198541),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294245368),
      onBackground: Color(4279704859),
      surface: Color(4294245368),
      onSurface: Color(4279704859),
      surfaceVariant: Color(4292535777),
      onSurfaceVariant: Color(4282337606),
      outline: Color(4285495670),
      outlineVariant: Color(4290693573),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020976),
      inverseOnSurface: Color(4293718767),
      inversePrimary: Color(4286830021),
      primaryFixed: Color(4288672481),
      onPrimaryFixed: Color(4278198299),
      primaryFixedDim: Color(4286830021),
      onPrimaryFixedVariant: Color(4278210630),
      secondaryFixed: Color(4294959004),
      onSecondaryFixed: Color(4280621568),
      secondaryFixedDim: Color(4293444204),
      onSecondaryFixedVariant: Color(4284171008),
      tertiaryFixed: Color(4289917376),
      onTertiaryFixed: Color(4278198541),
      tertiaryFixedDim: Color(4288140709),
      onTertiaryFixedVariant: Color(4279521581),
      surfaceDim: Color(4292205528),
      surfaceBright: Color(4294245368),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916146),
      surfaceContainer: Color(4293521388),
      surfaceContainerHigh: Color(4293126887),
      surfaceContainerHighest: Color(4292797665),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278209602),
      surfaceTint: Color(4278217566),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280975988),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283842304),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287590435),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279127337),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282810712),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294245368),
      onBackground: Color(4279704859),
      surface: Color(4294245368),
      onSurface: Color(4279704859),
      surfaceVariant: Color(4292535777),
      onSurfaceVariant: Color(4282074434),
      outline: Color(4283916638),
      outlineVariant: Color(4285758842),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020976),
      inverseOnSurface: Color(4293718767),
      inversePrimary: Color(4286830021),
      primaryFixed: Color(4280975988),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278216795),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287590435),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285814792),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282810712),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281165633),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205528),
      surfaceBright: Color(4294245368),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916146),
      surfaceContainer: Color(4293521388),
      surfaceContainerHigh: Color(4293126887),
      surfaceContainerHighest: Color(4292797665),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278200354),
      surfaceTint: Color(4278217566),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278209602),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281212928),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283842304),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278200593),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4279127337),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294245368),
      onBackground: Color(4279704859),
      surface: Color(4294245368),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4292535777),
      onSurfaceVariant: Color(4280034852),
      outline: Color(4282074434),
      outlineVariant: Color(4282074434),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020976),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4289264875),
      primaryFixed: Color(4278209602),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278203180),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283842304),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282067456),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4279127337),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278203672),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205528),
      surfaceBright: Color(4294245368),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916146),
      surfaceContainer: Color(4293521388),
      surfaceContainerHigh: Color(4293126887),
      surfaceContainerHighest: Color(4292797665),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4286830021),
      surfaceTint: Color(4286830021),
      onPrimary: Color(4278204208),
      primaryContainer: Color(4278210630),
      onPrimaryContainer: Color(4288672481),
      secondary: Color(4293444204),
      onSecondary: Color(4282330624),
      secondaryContainer: Color(4284171008),
      onSecondaryContainer: Color(4294959004),
      tertiary: Color(4288140709),
      onTertiary: Color(4278204699),
      tertiaryContainer: Color(4279521581),
      onTertiaryContainer: Color(4289917376),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279112979),
      onBackground: Color(4292797665),
      surface: Color(4279112979),
      onSurface: Color(4292797665),
      surfaceVariant: Color(4282337606),
      onSurfaceVariant: Color(4290693573),
      outline: Color(4287206288),
      outlineVariant: Color(4282337606),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797665),
      inverseOnSurface: Color(4281020976),
      inversePrimary: Color(4278217566),
      primaryFixed: Color(4288672481),
      onPrimaryFixed: Color(4278198299),
      primaryFixedDim: Color(4286830021),
      onPrimaryFixedVariant: Color(4278210630),
      secondaryFixed: Color(4294959004),
      onSecondaryFixed: Color(4280621568),
      secondaryFixedDim: Color(4293444204),
      onSecondaryFixedVariant: Color(4284171008),
      tertiaryFixed: Color(4289917376),
      onTertiaryFixed: Color(4278198541),
      tertiaryFixedDim: Color(4288140709),
      onTertiaryFixedVariant: Color(4279521581),
      surfaceDim: Color(4279112979),
      surfaceBright: Color(4281613113),
      surfaceContainerLowest: Color(4278783758),
      surfaceContainerLow: Color(4279704859),
      surfaceContainer: Color(4279968031),
      surfaceContainerHigh: Color(4280625962),
      surfaceContainerHighest: Color(4281349684),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4287093449),
      surfaceTint: Color(4286830021),
      onPrimary: Color(4278196758),
      primaryContainer: Color(4283145872),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293772912),
      onSecondary: Color(4280227072),
      secondaryContainer: Color(4289629245),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4288403881),
      onTertiary: Color(4278197002),
      tertiaryContainer: Color(4284653170),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279112979),
      onBackground: Color(4292797665),
      surface: Color(4279112979),
      onSurface: Color(4294376697),
      surfaceVariant: Color(4282337606),
      onSurfaceVariant: Color(4291022281),
      outline: Color(4288390562),
      outlineVariant: Color(4286285186),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797665),
      inverseOnSurface: Color(4280625962),
      inversePrimary: Color(4278211143),
      primaryFixed: Color(4288672481),
      onPrimaryFixed: Color(4278195473),
      primaryFixedDim: Color(4286830021),
      onPrimaryFixedVariant: Color(4278206006),
      secondaryFixed: Color(4294959004),
      onSecondaryFixed: Color(4279767040),
      secondaryFixedDim: Color(4293444204),
      onSecondaryFixedVariant: Color(4282790656),
      tertiaryFixed: Color(4289917376),
      onTertiaryFixed: Color(4278195463),
      tertiaryFixedDim: Color(4288140709),
      onTertiaryFixedVariant: Color(4278206239),
      surfaceDim: Color(4279112979),
      surfaceBright: Color(4281613113),
      surfaceContainerLowest: Color(4278783758),
      surfaceContainerLow: Color(4279704859),
      surfaceContainer: Color(4279968031),
      surfaceContainerHigh: Color(4280625962),
      surfaceContainerHighest: Color(4281349684),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4293656569),
      surfaceTint: Color(4286830021),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4287093449),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966007),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293772912),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293918702),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4288403881),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279112979),
      onBackground: Color(4292797665),
      surface: Color(4279112979),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4282337606),
      onSurfaceVariant: Color(4294180345),
      outline: Color(4291022281),
      outlineVariant: Color(4291022281),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797665),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4278202410),
      primaryFixed: Color(4288935653),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4287093449),
      onPrimaryFixedVariant: Color(4278196758),
      secondaryFixed: Color(4294960302),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293772912),
      onSecondaryFixedVariant: Color(4280227072),
      tertiaryFixed: Color(4290180804),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4288403881),
      onTertiaryFixedVariant: Color(4278197002),
      surfaceDim: Color(4279112979),
      surfaceBright: Color(4281613113),
      surfaceContainerLowest: Color(4278783758),
      surfaceContainerLow: Color(4279704859),
      surfaceContainer: Color(4279968031),
      surfaceContainerHigh: Color(4280625962),
      surfaceContainerHighest: Color(4281349684),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
