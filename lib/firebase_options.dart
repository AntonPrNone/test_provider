// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAjKTeNarL51-n_SMa2ajmAWQaARZyesx8',
    appId: '1:133183469301:web:da59ecdcf5d693c5d3b7bc',
    messagingSenderId: '133183469301',
    projectId: 'test-provider-278dc',
    authDomain: 'test-provider-278dc.firebaseapp.com',
    storageBucket: 'test-provider-278dc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0t9PrLe3g3gsnRzL3A87GN0ttRElqTV8',
    appId: '1:133183469301:android:60287ca6d38de0c2d3b7bc',
    messagingSenderId: '133183469301',
    projectId: 'test-provider-278dc',
    storageBucket: 'test-provider-278dc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD9e8i1XQuQW8IdcU29OAsNvRtno2rLawk',
    appId: '1:133183469301:ios:6afa14df77c035ded3b7bc',
    messagingSenderId: '133183469301',
    projectId: 'test-provider-278dc',
    storageBucket: 'test-provider-278dc.appspot.com',
    iosBundleId: 'com.example.testProvider',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD9e8i1XQuQW8IdcU29OAsNvRtno2rLawk',
    appId: '1:133183469301:ios:5c6450a1d0757510d3b7bc',
    messagingSenderId: '133183469301',
    projectId: 'test-provider-278dc',
    storageBucket: 'test-provider-278dc.appspot.com',
    iosBundleId: 'com.example.testProvider.RunnerTests',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAjKTeNarL51-n_SMa2ajmAWQaARZyesx8',
    appId: '1:133183469301:web:6ee8c0bc566acdc1d3b7bc',
    messagingSenderId: '133183469301',
    projectId: 'test-provider-278dc',
    authDomain: 'test-provider-278dc.firebaseapp.com',
    storageBucket: 'test-provider-278dc.appspot.com',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyAjKTeNarL51-n_SMa2ajmAWQaARZyesx8',
    appId: '1:133183469301:web:45ff2c6e0836cb5ed3b7bc',
    messagingSenderId: '133183469301',
    projectId: 'test-provider-278dc',
    authDomain: 'test-provider-278dc.firebaseapp.com',
    storageBucket: 'test-provider-278dc.appspot.com',
  );
}
