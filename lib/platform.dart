// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import "src/platform_unknown.dart"
    if (dart.library.io) "src/platform_io.dart"
    if (dart.library.html) "src/platform_html.dart" as p;

/// A string representing the operating system or platform.
String get operatingSystem => p.os;

/// A string representing the version of the operating system or platform.
String get operatingSystemVersion => p.osVersion;

/// The name of the current locale.
String get localeName => p.locale;

/// Whether the operating system is a version of
/// [Linux](https://en.wikipedia.org/wiki/Linux).
///
/// This value is `false` if the operating system is a specialized
/// version of Linux that identifies itself by a different name,
/// for example Android (see [isAndroid]).
bool get isLinux => (operatingSystem == "linux");

/// Whether the operating system is a version of
/// [macOS](https://en.wikipedia.org/wiki/MacOS).
bool get isMacOS => (operatingSystem == "macos");

/// Whether the operating system is a version of
/// [Microsoft Windows](https://en.wikipedia.org/wiki/Microsoft_Windows).
bool get isWindows => (operatingSystem == "windows");

/// Whether the operating system is a version of
/// [Android](https://en.wikipedia.org/wiki/Android_%28operating_system%29).
bool get isAndroid => (operatingSystem == "android");

/// Whether the operating system is a version of
/// [iOS](https://en.wikipedia.org/wiki/IOS).
bool get isIOS => (operatingSystem == "ios");

/// Whether the operating system is a version of
/// [Fuchsia](https://en.wikipedia.org/wiki/Google_Fuchsia).
bool get isFuchsia => (operatingSystem == "fuchsia");
