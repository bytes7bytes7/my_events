/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/account.svg
  SvgGenImage get account => const SvgGenImage('assets/icons/account.svg');

  /// File path: assets/icons/chat.svg
  SvgGenImage get chat => const SvgGenImage('assets/icons/chat.svg');

  /// File path: assets/icons/events.svg
  SvgGenImage get events => const SvgGenImage('assets/icons/events.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/my_event.svg
  SvgGenImage get myEvent => const SvgGenImage('assets/icons/my_event.svg');

  /// File path: assets/icons/notifications.svg
  SvgGenImage get notifications =>
      const SvgGenImage('assets/icons/notifications.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [account, chat, events, home, myEvent, notifications];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo];
}

class $AssetsMockGen {
  const $AssetsMockGen();

  $AssetsMockIconsGen get icons => const $AssetsMockIconsGen();
  $AssetsMockImagesGen get images => const $AssetsMockImagesGen();
}

class $AssetsMockIconsGen {
  const $AssetsMockIconsGen();

  /// File path: assets/mock/icons/event_card_icon1.svg
  SvgGenImage get eventCardIcon1 =>
      const SvgGenImage('assets/mock/icons/event_card_icon1.svg');

  /// File path: assets/mock/icons/event_card_icon2.svg
  SvgGenImage get eventCardIcon2 =>
      const SvgGenImage('assets/mock/icons/event_card_icon2.svg');

  /// File path: assets/mock/icons/event_card_icon3.svg
  SvgGenImage get eventCardIcon3 =>
      const SvgGenImage('assets/mock/icons/event_card_icon3.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [eventCardIcon1, eventCardIcon2, eventCardIcon3];
}

class $AssetsMockImagesGen {
  const $AssetsMockImagesGen();

  /// File path: assets/mock/images/account.jpg
  AssetGenImage get account =>
      const AssetGenImage('assets/mock/images/account.jpg');

  /// File path: assets/mock/images/event_card_bg1.png
  AssetGenImage get eventCardBg1 =>
      const AssetGenImage('assets/mock/images/event_card_bg1.png');

  /// File path: assets/mock/images/event_card_bg2.png
  AssetGenImage get eventCardBg2 =>
      const AssetGenImage('assets/mock/images/event_card_bg2.png');

  /// File path: assets/mock/images/event_card_bg3.png
  AssetGenImage get eventCardBg3 =>
      const AssetGenImage('assets/mock/images/event_card_bg3.png');

  /// File path: assets/mock/images/news1.png
  AssetGenImage get news1 =>
      const AssetGenImage('assets/mock/images/news1.png');

  /// File path: assets/mock/images/news2.png
  AssetGenImage get news2 =>
      const AssetGenImage('assets/mock/images/news2.png');

  /// File path: assets/mock/images/onboarding1.png
  AssetGenImage get onboarding1 =>
      const AssetGenImage('assets/mock/images/onboarding1.png');

  /// File path: assets/mock/images/onboarding2.png
  AssetGenImage get onboarding2 =>
      const AssetGenImage('assets/mock/images/onboarding2.png');

  /// File path: assets/mock/images/onboarding3.png
  AssetGenImage get onboarding3 =>
      const AssetGenImage('assets/mock/images/onboarding3.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        account,
        eventCardBg1,
        eventCardBg2,
        eventCardBg3,
        news1,
        news2,
        onboarding1,
        onboarding2,
        onboarding3
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsMockGen mock = $AssetsMockGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
