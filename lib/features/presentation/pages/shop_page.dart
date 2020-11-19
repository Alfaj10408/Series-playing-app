import 'package:facebook_audience_network/constants.dart';
import 'package:first_application/features/presentation/components/shop_drawer.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_page1.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_page10.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_page2.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_page3.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_page4.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_page5.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_page6.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_page7.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_page8.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_page9.dart';


import 'package:first_application/features/presentation/pages/season_card.dart';
import 'package:flutter/foundation.dart';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../header_with_seachbox.dart';

class ShopPage extends StatefulWidget {
  ShopPage({Key key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final globalKey = GlobalKey<ScaffoldState>();

  String _title = 'How you doin\'?';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        title: Text(_title),
      ),
      drawer: ShopDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderWithSearchBox(size: size),
              RecomendPlantCard(
                image: "assets/images/s1-min.PNG",
                title: "Season 1",
                country: "1994",
                price: 9.0,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PortfolioPage1(),
                    ),
                  );
                },
              ),
              RecomendPlantCard(
                image: "assets/images/s2-min.PNG",
                title: "Season 2",
                country: "1995",
                price: 8.1,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PortfolioPage2(),
                    ),
                  );
                },
              ),
              RecomendPlantCard(
                image: "assets/images/s3-min.PNG",
                title: "Season 3",
                country: "1996",
                price: 8.2,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PortfolioPage3(),
                    ),
                  );
                },
              ),
             FacebookBannerAd(),
              RecomendPlantCard(
                image: "assets/images/s4-min.PNG",
                title: "Season 4",
                country: "1997",
                price: 8.1,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PortfolioPage4(),
                    ),
                  );
                },
              ),
              RecomendPlantCard(
                image: "assets/images/s5-min.PNG",
                title: "Season 5",
                country: "1998",
                price: 8.5,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PortfolioPage5(),
                    ),
                  );
                },
              ),
              RecomendPlantCard(
                image: "assets/images/s6-min.PNG",
                title: "Season 6",
                country: "1999",
                price: 8.1,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PortfolioPage6(),
                    ),
                  );
                },
              ),
              FacebookBannerAd(placementId: "924724058051698_924726578051446"),
              RecomendPlantCard(
                image: "assets/images/s7-min.PNG",
                title: "Season 7",
                country: "2000",
                price: 9,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PortfolioPage7(),
                    ),
                  );
                },
              ),
              RecomendPlantCard(
                image: "assets/images/s8-min.PNG",
                title: "Season 8",
                country: "2001",
                price: 8.1,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PortfolioPage8(),
                    ),
                  );
                },
              ),
              RecomendPlantCard(
                image: "assets/images/s9-min.PNG",
                title: "Season 9",
                country: "2002",
                price: 8.3,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PortfolioPage9(),
                    ),
                  );
                },
              ),
              FacebookBannerAd(placementId: "924724058051698_924736011383836"),
              RecomendPlantCard(
                image: "assets/images/s10-min.PNG",
                title: "Season 10",
                country: "2004",
                price: 8.3,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PortfolioPage10(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
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
    this.placementId = "446459862968251_446482856299285",
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
}