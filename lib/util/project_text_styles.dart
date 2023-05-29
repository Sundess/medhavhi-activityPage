import 'package:activity_page/util/project_colors.dart';
import 'package:flutter/widgets.dart';

/// Text Styles used in the app

class ProjectTextStyles {
  /// Title 1
  ///
  /// * Font Size: 24
  /// * Font Weight: 600
  /// * Letter Spacing: 2% (0.48)
  /// * Font Family: Urbanist
  static const TextStyle title1 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.48, // 2 percent
    fontFamily: 'Urbanist',
  );

  /// Title 2
  ///
  /// * Font Size: 20
  /// * Font Weight: 600
  /// * Letter Spacing: 2% (0.4)
  /// * Font Family: Urbanist
  static const TextStyle title2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.4, // 2 percent
    fontFamily: 'Urbanist',
  );

  /// Title 3
  ///
  /// * Font Size: 16
  /// * Font Weight: 600
  /// * Letter Spacing: 2% (0.28)
  /// * Font Family: Urbanist
  static const TextStyle title3 = TextStyle(
    fontSize: 16,
    height: 1.25,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.28,
    fontFamily: 'Urbanist',
  );

  /// Title 4
  ///
  /// * Font Size: 14
  /// * Font Weight: 600
  /// * Letter Spacing: 2% (0.28)
  /// * Font Family: Urbanist
  static const TextStyle title4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.28,
    fontFamily: 'Urbanist',
  );

  /// Body Large
  ///
  /// * Font Size: 16
  /// * Font Weight: 400
  /// * Letter Spacing: 2% (0.32)
  /// * Font Family: Urbanist
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 14,
    letterSpacing: 0.32,
    fontFamily: 'Urbanist',
  );

  /// Body
  ///
  /// * Font Size: 14
  /// * Font Weight: 400
  /// * Letter Spacing: 2% (0.28)
  /// * Font Family: Urbanist
  static const TextStyle body = TextStyle(
    fontSize: 14,
    height: 1.4,
    letterSpacing: 0.28,
    fontFamily: 'Urbanist',
  );

  /// Body Bold
  ///
  /// * Font Size: 14
  /// * Font Weight: 500
  /// * Letter Spacing: 2% (0.28)
  /// * Font Family: Urbanist
  static const TextStyle bodyBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: 0.28,
    fontFamily: 'Urbanist',
  );

  ///
  /// Body Small
  ///
  /// * Font Size: 12
  /// * Font Weight: 400
  /// * Letter Spacing: 2% (0.24)
  /// * Font Family: Urbanist
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    height: 1.3,
    letterSpacing: 0.24,
    fontFamily: 'Urbanist',
    color: ProjectColors.spanishGrey,
  );

  ///
  /// Body Subtitle
  /// * Font Size: 10
  /// * Font Weight: 400
  /// * Letter Spacing: 2% (0.2)
  /// * Font Family: Urbanist
  static const TextStyle bodySubtitle = TextStyle(
    fontSize: 10,
    letterSpacing: 0.2,
    fontFamily: 'Urbanist',
  );

  ///
  /// Body Small Bold
  /// * Font Size: 16
  /// * Font Weight: 500
  /// * Letter Spacing: 4% (0.64)
  /// * Font Family: Urbanist
  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.64,
    fontFamily: 'Urbanist',
  );

  ///
  /// Button Small
  /// * Font Size: 10
  /// * Font Weight: 500
  /// * Letter Spacing: 2% (0.2)
  /// * Font Family: Urbanist
  static const TextStyle buttonSmall = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
    fontFamily: 'Urbanist',
  );
}
