import 'dart:html' as html;
import 'dart:ui';

import 'package:flutter/material.dart';

import 'platform_locale_interface.dart';

class PlatformLocaleWeb implements PlatformLocale {
  @override
  Locale getPlatformLocale() {
    var _platformLocaleName = html.window.navigator.language;
    print("language: " + _platformLocaleName);

    String _languageCode = _platformLocaleName.substring(0, _platformLocaleName.indexOf('-'));
    String _countryCode = _platformLocaleName.substring(_platformLocaleName.indexOf('-') + 1);

    return Locale.fromSubtags(
      languageCode: _languageCode,
      countryCode: _countryCode,
    );
  }
}

PlatformLocale getImplementation() => PlatformLocaleWeb();
