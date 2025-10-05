/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/RoobertPRO-Bold.ttf
  String get roobertPROBold => 'assets/fonts/RoobertPRO-Bold.ttf';

  /// File path: assets/fonts/RoobertPRO-Light.ttf
  String get roobertPROLight => 'assets/fonts/RoobertPRO-Light.ttf';

  /// File path: assets/fonts/RoobertPRO-Medium.ttf
  String get roobertPROMedium => 'assets/fonts/RoobertPRO-Medium.ttf';

  /// File path: assets/fonts/RoobertPRO-Regular.ttf
  String get roobertPRORegular => 'assets/fonts/RoobertPRO-Regular.ttf';

  /// List of all assets
  List<String> get values =>
      [roobertPROBold, roobertPROLight, roobertPROMedium, roobertPRORegular];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Close.svg
  SvgGenImage get close => const SvgGenImage('assets/icons/Close.svg');

  /// File path: assets/icons/House.svg
  SvgGenImage get house => const SvgGenImage('assets/icons/House.svg');

  /// File path: assets/icons/Like.svg
  SvgGenImage get like => const SvgGenImage('assets/icons/Like.svg');

  /// File path: assets/icons/Search (Bar).svg
  SvgGenImage get searchBar =>
      const SvgGenImage('assets/icons/Search (Bar).svg');

  /// File path: assets/icons/Settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/icons/Settings.svg');

  /// File path: assets/icons/User.svg
  SvgGenImage get user => const SvgGenImage('assets/icons/User.svg');

  /// File path: assets/icons/Video.svg
  SvgGenImage get video => const SvgGenImage('assets/icons/Video.svg');

  /// File path: assets/icons/bookmark.svg
  SvgGenImage get bookmark => const SvgGenImage('assets/icons/bookmark.svg');

  /// File path: assets/icons/comment.svg
  SvgGenImage get comment => const SvgGenImage('assets/icons/comment.svg');

  /// File path: assets/icons/dislike.svg
  SvgGenImage get dislike => const SvgGenImage('assets/icons/dislike.svg');

  /// File path: assets/icons/down-arrow.svg
  SvgGenImage get downArrow => const SvgGenImage('assets/icons/down-arrow.svg');

  /// File path: assets/icons/facebook.svg
  SvgGenImage get facebook => const SvgGenImage('assets/icons/facebook.svg');

  /// File path: assets/icons/flame.svg
  SvgGenImage get flame => const SvgGenImage('assets/icons/flame.svg');

  /// File path: assets/icons/icons8-bookmark.svg
  SvgGenImage get icons8Bookmark =>
      const SvgGenImage('assets/icons/icons8-bookmark.svg');

  /// File path: assets/icons/instagram.svg
  SvgGenImage get instagram => const SvgGenImage('assets/icons/instagram.svg');

  /// File path: assets/icons/phone.svg
  SvgGenImage get phone => const SvgGenImage('assets/icons/phone.svg');

  /// File path: assets/icons/question.svg
  SvgGenImage get question => const SvgGenImage('assets/icons/question.svg');

  /// File path: assets/icons/refresh-cw.svg
  SvgGenImage get refreshCw => const SvgGenImage('assets/icons/refresh-cw.svg');

  /// File path: assets/icons/sad.svg
  SvgGenImage get sad => const SvgGenImage('assets/icons/sad.svg');

  /// File path: assets/icons/search-plus-svgrepo-com.svg
  SvgGenImage get searchPlusSvgrepoCom =>
      const SvgGenImage('assets/icons/search-plus-svgrepo-com.svg');

  /// File path: assets/icons/send (details).svg
  SvgGenImage get sendDetails =>
      const SvgGenImage('assets/icons/send (details).svg');

  /// File path: assets/icons/send.svg
  SvgGenImage get send => const SvgGenImage('assets/icons/send.svg');

  /// File path: assets/icons/x.svg
  SvgGenImage get x => const SvgGenImage('assets/icons/x.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        close,
        house,
        like,
        searchBar,
        settings,
        user,
        video,
        bookmark,
        comment,
        dislike,
        downArrow,
        facebook,
        flame,
        icons8Bookmark,
        instagram,
        phone,
        question,
        refreshCw,
        sad,
        searchPlusSvgrepoCom,
        sendDetails,
        send,
        x
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Icon-App.png
  AssetGenImage get iconApp =>
      const AssetGenImage('assets/images/Icon-App.png');

  /// File path: assets/images/LaunchImage.png
  AssetGenImage get launchImage =>
      const AssetGenImage('assets/images/LaunchImage.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/splash.jpg
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [iconApp, launchImage, logo, splash];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
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
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
