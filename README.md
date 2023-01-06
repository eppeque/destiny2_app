# Destiny 2 app

The Destiny 2 app in Flutter.

## Getting Started

This project is a Flutter application. To learn more about Flutter, visit the [official online documentation](https://docs.flutter.dev).

## Bungie API

This app uses the [Bungie API](https://github.com/Bungie-net/api). The data fetched from it is parsed with the [built_value](https://github.com/google/built_value.dart) package.

> Note: This package generates the `*.g.dart` files. Since these files are generated, please don't modify them by hand. You can regenerate files at any time with the following command:

```bash
$ flutter pub run build_runner build
```

### API Key

My API Key is not shared on this repo so you have to get your own. To do so, go on the [Bungie developer portal](https://www.bungie.net/en/Application). Once you get it, create the `lib/src/api_key.dart` file and declare a variable with your API Key like this:

```dart
const apiKey = '<Your API Key>';
```

The entire code in the app will use this key automatically if you placed and named the file correctly.