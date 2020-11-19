import 'package:chewie/chewie.dart';
import 'package:facebook_audience_network/constants.dart';

import 'package:first_application/features/presentation/components/hero_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class PortfolioTutorialDetailPage extends StatefulWidget {
  final Object heroTag;
  final String desc;
  final String videoUrl;

  const PortfolioTutorialDetailPage({
    Key key,
    @required this.heroTag,
    @required this.desc,
    @required this.videoUrl,
  }) : super(key: key);

  @override
  _PortfolioTutorialDetailPageState createState() =>
      _PortfolioTutorialDetailPageState();
}

class _PortfolioTutorialDetailPageState
    extends State<PortfolioTutorialDetailPage> {
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: VideoPlayerController.network(widget.videoUrl),
      aspectRatio: 16 / 9,
      autoInitialize: true,
      autoPlay: false,
      looping: false,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              errorMessage,
              style: TextStyle(color: Colors.black),
            ),
          ),
        );
      },
    );
/// most important for you alfaj
    _chewieController.addListener(
      () {
        if (_chewieController.isFullScreen) {
          FacebookInterstitialAd.loadInterstitialAd(
            placementId: "924724058051698_924742201383217",
            listener: (result, value) {
              if (result == InterstitialAdResult.LOADED)
                FacebookInterstitialAd.showInterstitialAd(delay: 5000);
            },
          );
        }
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Friends Watch'),
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildHeroWidget(context),
          _buildDesc(),
          Spacer(), 
          FacebookBannerAd(),
          FacebookBannerAd(placementId: "924724058051698_924846741372763"),
          FacebookBannerAd(placementId: "924724058051698_924847118039392"),

        ],
      ),
    );
  }

  HeroWidget _buildHeroWidget(BuildContext context) {
    return HeroWidget(
      heroTag: widget.heroTag,
      width: MediaQuery.of(context).size.width,
      builder: (BuildContext context) {
        return _buildHeroWidgetContent();
      },
    );
  }

  Chewie _buildHeroWidgetContent() {
    return Chewie(
      controller: _chewieController,
    );
  }

  Widget _buildDesc() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        widget.desc,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  void dispose() {
    _chewieController.videoPlayerController.dispose();
    _chewieController.dispose();

    super.dispose();
  }
}

class BannerSize {
  final int width;
  final int height;

  static const BannerSize STANDARD = BannerSize(width: 320, height: 50);
  static const BannerSize LARGE = BannerSize(width: 320, height: 90);
  static const BannerSize MEDIUM_RECTANGLE =
      BannerSize(width: 320, height: 250);

  const BannerSize({this.width = 320, this.height = 50});
}

enum BannerAdResult {
  /// Banner Ad error.
  ERROR,

  /// Banner Ad loaded successfully.
  LOADED,

  /// Banner Ad clicked.
  CLICKED,

  /// Banner Ad impression logged.
  LOGGING_IMPRESSION,
}

class FacebookBannerAd extends StatefulWidget {
  final Key key;

  /// Replace the default one with your placement ID for the release build.
  final String placementId;

  /// Size of the Banner Ad. Choose from three pre-defined sizes.
  final BannerSize bannerSize;

  /// Banner Ad listener
  final void Function(BannerAdResult, dynamic) listener;

  /// This defines if the ad view to be kept alive.
  final bool keepAlive;

  /// This widget is used to contain Banner Ads. [listener] is used to monitor
  /// Banner Ad. [BannerAdResult] is passed to the callback function along with
  /// other information based on result such as placement id, error code, error
  /// message, click info etc.
  ///
  /// Information will generally be of type Map with details such as:
  ///
  /// ```dart
  /// {
  ///   'placement\_id': "YOUR\_PLACEMENT\_ID",
  ///   'invalidated': false,
  ///   'error\_code': 2,
  ///   'error\_message': "No internet connection",
  /// }
  /// ```
  FacebookBannerAd({
    this.key,
    this.placementId = "924724058051698_924844314706339",
    this.bannerSize = BannerSize.STANDARD,
    this.listener,
    this.keepAlive = false,
  }) : super(key: key);

  @override
  _FacebookBannerAdState createState() => _FacebookBannerAdState();
}

class _FacebookBannerAdState extends State<FacebookBannerAd>
    with AutomaticKeepAliveClientMixin {
  double containerHeight = 0.5;

  @override
  bool get wantKeepAlive => widget.keepAlive;

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return Container(
        height: containerHeight,
        color: Colors.transparent,
        child: AndroidView(
          viewType: BANNER_AD_CHANNEL,
          onPlatformViewCreated: _onBannerAdViewCreated,
          creationParams: <String, dynamic>{
            "id": widget.placementId,
            "width": widget.bannerSize.width,
            "height": widget.bannerSize.height,
          },
          creationParamsCodec: StandardMessageCodec(),
        ),
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return Container(
        height: containerHeight,
        color: Colors.transparent,
        child: Container(
          width: widget.bannerSize.width.toDouble(),
          child: Center(
            child: UiKitView(
              viewType: BANNER_AD_CHANNEL,
              onPlatformViewCreated: _onBannerAdViewCreated,
              creationParams: <String, dynamic>{
                "id": widget.placementId,
                "width": widget.bannerSize.width,
                "height": widget.bannerSize.height,
              },
              creationParamsCodec: StandardMessageCodec(),
            ),
          ),
        ),
      );
    } else {
      return Container(
        height: widget.bannerSize.height <= -1
            ? double.infinity
            : widget.bannerSize.height.toDouble(),
        child: Center(
          child:
              Text("Banner Ads for this platform is currently not supported"),
        ),
      );
    }
  }

  void _onBannerAdViewCreated(int id) async {
    final channel = MethodChannel('${BANNER_AD_CHANNEL}_$id');

    channel.setMethodCallHandler((MethodCall call) {
      switch (call.method) {
        case ERROR_METHOD:
          if (widget.listener != null)
            widget.listener(BannerAdResult.ERROR, call.arguments);
          break;
        case LOADED_METHOD:
          setState(() {
            containerHeight = widget.bannerSize.height <= -1
                ? double.infinity
                : widget.bannerSize.height.toDouble();
          });
          if (widget.listener != null)
            widget.listener(BannerAdResult.LOADED, call.arguments);
          break;
        case CLICKED_METHOD:
          if (widget.listener != null)
            widget.listener(BannerAdResult.CLICKED, call.arguments);
          break;
        case LOGGING_IMPRESSION_METHOD:
          if (widget.listener != null)
            widget.listener(BannerAdResult.LOGGING_IMPRESSION, call.arguments);
          break;
      }
    });
  }

  ////////////// Int AD/////////////
  ///

}

enum InterstitialAdResult {
  /// Interstitial Ad displayed to the user
  DISPLAYED,

  /// Interstitial Ad dismissed by the user
  DISMISSED,

  /// Interstitial Ad error
  ERROR,

  /// Interstitial Ad loaded
  LOADED,

  /// Interstitial Ad clicked
  CLICKED,

  /// Interstitial Ad impression logged
  LOGGING_IMPRESSION,
}

class FacebookInterstitialAd {
  static void Function(InterstitialAdResult, dynamic) _listener;

  static const _channel = const MethodChannel(INTERSTITIAL_AD_CHANNEL);

  /// Loads an Interstitial Ad in background. Replace the default [placementId]
  /// with the one which you obtain by signing-up for Facebook Audience Network.
  ///
  /// [listener] passes [InterstitialAdResult] and information associated with
  /// the result to the implemented callback.
  ///
  /// Information will generally be of type Map with details such as:
  ///
  /// ```dart
  /// {
  ///   'placement\_id': "YOUR\_PLACEMENT\_ID",
  ///   'invalidated': false,
  ///   'error\_code': 2,
  ///   'error\_message': "No internet connection",
  /// }
  /// ```
  static Future<bool> loadInterstitialAd({
    String placementId = "924724058051698_924742201383217",
    Function(InterstitialAdResult, dynamic) listener,
  }) async {
    try {
      final args = <String, dynamic>{
        "id": placementId,
      };

      final result = await _channel.invokeMethod(
        LOAD_INTERSTITIAL_METHOD,
        args,
      );
      _channel.setMethodCallHandler(_interstitialMethodCall);
      _listener = listener;

      return result;
    } on PlatformException {
      return false;
    }
  }

  /// Shows an Interstitial Ad after it has been loaded. (This needs to be called
  /// only after calling [loadInterstitialAd] function). [delay] is in
  /// milliseconds.
  ///
  /// Example:
  ///
  /// ```dart
  /// FacebookInterstitialAd.loadInterstitialAd(
  ///   listener: (result, value) {
  ///     if (result == InterstitialAdResult.LOADED)
  ///       FacebookInterstitialAd.showInterstitialAd(delay: 5000);
  ///   },
  /// );
  /// ```
  static Future<bool> showInterstitialAd({int delay = 0}) async {
    try {
      final args = <String, dynamic>{
        "delay": delay,
      };

      final result = await _channel.invokeMethod(
        SHOW_INTERSTITIAL_METHOD,
        args,
      );

      return result;
    } on PlatformException {
      return false;
    }
  }

  /// Removes the Ad.
  static Future<bool> destroyInterstitialAd() async {
    try {
      final result = await _channel.invokeMethod(DESTROY_INTERSTITIAL_METHOD);
      return result;
    } on PlatformException {
      return false;
    }
  }

  static Future<dynamic> _interstitialMethodCall(MethodCall call) {
    switch (call.method) {
      case DISPLAYED_METHOD:
        if (_listener != null)
          _listener(InterstitialAdResult.DISPLAYED, call.arguments);
        break;
      case DISMISSED_METHOD:
        if (_listener != null)
          _listener(InterstitialAdResult.DISMISSED, call.arguments);
        break;
      case ERROR_METHOD:
        if (_listener != null)
          _listener(InterstitialAdResult.ERROR, call.arguments);
        break;
      case LOADED_METHOD:
        if (_listener != null)
          _listener(InterstitialAdResult.LOADED, call.arguments);
        break;
      case CLICKED_METHOD:
        if (_listener != null)
          _listener(InterstitialAdResult.CLICKED, call.arguments);
        break;
      case LOGGING_IMPRESSION_METHOD:
        if (_listener != null)
          _listener(InterstitialAdResult.LOGGING_IMPRESSION, call.arguments);
        break;
    }
    return Future.value(true);
  }
}
