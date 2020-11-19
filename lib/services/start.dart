import 'package:flutter/material.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';





class FacebookAds extends StatefulWidget {
  @override
  FacebookAdsState createState() => FacebookAdsState();
}

class FacebookAdsState extends State<FacebookAds> {
  Widget _currentAd = SizedBox(
    width: 0.0,
    height: 0.0,
  );

  @override
  void initState() {
    super.initState();

    FacebookAudienceNetwork.init(
      testingId: "35e92a63-8102-46a4-b0f5-4fd269e6a13c",
    );

  }



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: Align(
            alignment: Alignment(0, -1.0),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: _showBannerAd(),
            ),
          ),
          fit: FlexFit.tight,
          flex: 2,
        ),
        Flexible(
          child: Align(
            alignment: Alignment(0, 1.0),
            child: _currentAd,
          ),
          fit: FlexFit.tight,
          flex: 3,
        )
      ],
    );
  }

 

  _showBannerAd() {
    setState(() {
      _currentAd = FacebookBannerAd(
        bannerSize: BannerSize.STANDARD,
        placementId: "446459862968251_446482856299285",
        listener: (result, value) {
          print("Banner Ad: $result -->  $value");
        },
      );
    });
  }

 
}