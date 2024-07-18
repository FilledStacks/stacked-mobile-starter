import 'package:flutter/material.dart';

class AppTypography extends ThemeExtension<AppTypography> {
  final TextStyle ktsH1;
  final TextStyle ktsTableHead;
  final TextStyle ktsH2;
  final TextStyle ktsH3;
  final TextStyle ktsH4;
  final TextStyle ktsLarge;
  final TextStyle ktsSmall;
  final TextStyle ktsLead;
  final TextStyle ktsP;
  final TextStyle ktsBlockQuote;
  final TextStyle ktsSubtitle;

  AppTypography({
    required this.ktsH1,
    required this.ktsTableHead,
    required this.ktsH2,
    required this.ktsH3,
    required this.ktsH4,
    required this.ktsLarge,
    required this.ktsSmall,
    required this.ktsLead,
    required this.ktsP,
    required this.ktsBlockQuote,
    required this.ktsSubtitle,
  });
  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? ktsH1,
    TextStyle? ktsTableHead,
    TextStyle? ktsH2,
    TextStyle? ktsH3,
    TextStyle? ktsH4,
    TextStyle? ktsLarge,
    TextStyle? ktsSmall,
    TextStyle? ktsLead,
    TextStyle? ktsP,
    TextStyle? ktsBlockQuote,
    TextStyle? ktsSubtitle,
  }) {
    return AppTypography(
      ktsH1: ktsH1 ?? this.ktsH1,
      ktsTableHead: ktsTableHead ?? this.ktsTableHead,
      ktsH2: ktsH2 ?? this.ktsH2,
      ktsH3: ktsH3 ?? this.ktsH3,
      ktsH4: ktsH4 ?? this.ktsH4,
      ktsLarge: ktsLarge ?? this.ktsLarge,
      ktsSmall: ktsSmall ?? this.ktsSmall,
      ktsLead: ktsLead ?? this.ktsLead,
      ktsP: ktsP ?? this.ktsP,
      ktsBlockQuote: ktsBlockQuote ?? this.ktsBlockQuote,
      ktsSubtitle: ktsSubtitle ?? this.ktsSubtitle,
    );
  }

  @override
  ThemeExtension<AppTypography> lerp(
    covariant ThemeExtension<AppTypography>? other,
    double t,
  ) {
    if (other is! AppTypography) {
      return this;
    }
    return AppTypography(
      ktsH1: TextStyle.lerp(ktsH1, other.ktsH1, t)!,
      ktsTableHead: TextStyle.lerp(ktsTableHead, other.ktsTableHead, t)!,
      ktsH2: TextStyle.lerp(ktsH2, other.ktsH2, t)!,
      ktsH3: TextStyle.lerp(ktsH3, other.ktsH3, t)!,
      ktsH4: TextStyle.lerp(ktsH4, other.ktsH4, t)!,
      ktsLarge: TextStyle.lerp(ktsLarge, other.ktsLarge, t)!,
      ktsSmall: TextStyle.lerp(ktsSmall, other.ktsSmall, t)!,
      ktsLead: TextStyle.lerp(ktsLead, other.ktsLead, t)!,
      ktsP: TextStyle.lerp(ktsP, other.ktsP, t)!,
      ktsBlockQuote: TextStyle.lerp(ktsBlockQuote, other.ktsBlockQuote, t)!,
      ktsSubtitle: TextStyle.lerp(ktsSubtitle, other.ktsSubtitle, t)!,
    );
  }
}
