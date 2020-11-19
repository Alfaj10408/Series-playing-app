import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_application/features/presentation/components/hero_widget.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_tutorial_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class Season7 extends StatelessWidget {
  const Season7({Key key}) : super(key: key);

  static const List<Tuple3> tutorials = [
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E01 The One with Monica\'s Thunder',
      'https://www.dropbox.com/s/rsgrdbbzj20ve62/Friends%20S07E01%20The%20One%20with%20Monica%27s%20Thunder.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E02 The One with Rachel\'s Book',
      'https://www.dropbox.com/s/fcsfq93re3yopvb/Friends%20S07E02%20The%20One%20with%20Rachel%27s%20Book.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E03 The One with Phoebe\'s Cookies',
      'https://www.dropbox.com/s/6me7bgpvlr245jr/Friends%20S07E03%20The%20One%20with%20Phoebe%27s%20Cookies.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E04 The One with Rachel\'s Assistant',
      'https://www.dropbox.com/s/edwaw6aqwaultvj/Friends%20S07E04%20The%20One%20with%20Rachel%27s%20Assistant.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E05 The One with the Engagement Picture',
      'https://www.dropbox.com/s/xiin3b1ufpy1zlc/Friends%20S07E05%20The%20One%20with%20the%20Engagement%20Picture.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E06 The One with the Nap Partners',
      'https://www.dropbox.com/s/l9exzyyxgenhhzl/Friends%20S07E06%20The%20One%20with%20the%20Nap%20Partners.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E07 The One with Ross\'s Library Book',
      'https://www.dropbox.com/s/4c5b17fpwbnkom0/Friends%20S07E07%20The%20One%20with%20Ross%27s%20Library%20Book.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E08 The One Where Chandler Doesn\'t Like Dogs',
      'https://www.dropbox.com/s/fhmy698hd1d9f2y/Friends%20S07E08%20The%20One%20Where%20Chandler%20Doesn%27t%20Like%20Dogs.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E09 The One with All the Candy',
      'https://www.dropbox.com/s/oltwrs3bdqgwndd/Friends%20S07E09%20The%20One%20with%20All%20the%20Candy.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E10 The One with the Holiday Armadillo',
      'https://www.dropbox.com/s/t6940kg6x3irhlh/Friends%20S07E10%20The%20One%20with%20the%20Holiday%20Armadillo.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E11 The One with All the Cheesecakes',
      'https://www.dropbox.com/s/qjmexjxl0wdu9jz/Friends%20S07E11%20The%20One%20with%20All%20the%20Cheesecakes.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E12 The One Where They\'re Up All Night',
      'https://www.dropbox.com/s/6wt0rzfrembr9xm/Friends%20S07E12%20The%20One%20Where%20They%27re%20Up%20All%20Night.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E13 The One Where Rosita Dies',
      'https://www.dropbox.com/s/h20ebbq64brt2qy/Friends%20S07E13%20The%20One%20Where%20Rosita%20Dies.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E14 The One Where They All Turn Thirty',
      'https://www.dropbox.com/s/ueb1abqr6asim11/Friends%20S07E14%20The%20One%20Where%20They%20All%20Turn%20Thirty.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E15 The One with Joey\'s New Brain',
      'https://www.dropbox.com/s/ft7de7dj750755g/Friends%20S07E15%20The%20One%20with%20Joey%27s%20New%20Brain.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E16 The One with the Truth About London',
      'https://www.dropbox.com/s/uk5thgjnejk5mta/Friends%20S07E16%20The%20One%20with%20the%20Truth%20About%20London.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E17 The One with the Cheap Wedding Dress',
      'https://www.dropbox.com/s/v52k0zw7c8v85qp/Friends%20S07E17%20The%20One%20with%20the%20Cheap%20Wedding%20Dress.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E18 The One with Joey\'s Award',
      'https://www.dropbox.com/s/msxciajrrny5wnb/Friends%20S07E18%20The%20One%20with%20Joey%27s%20Award.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E19 The One with Ross and Monica\'s Cousin',
      'https://www.dropbox.com/s/xfoz7mn0snyvjrw/Friends%20S07E19%20The%20One%20with%20Ross%20and%20Monica%27s%20Cousin.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E20 The One with Rachel\'s Big Kiss',
      'https://www.dropbox.com/s/ixcm61xh4qumicb/Friends%20S07E20%20The%20One%20with%20Rachel%27s%20Big%20Kiss.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E21 The One with the Vows',
      'https://www.dropbox.com/s/ge42k4ffzglodgu/Friends%20S07E21%20The%20One%20with%20the%20Vows.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E22 The One with Chandler\'s Dad',
      'https://www.dropbox.com/s/kehg1u6bxr0z20i/Friends%20S07E22%20The%20One%20with%20Chandler%27s%20Dad.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E23 The One with Monica and Chandler\'s Wedding Pt 1',
      'https://www.dropbox.com/s/r6kf8pvtv9hyt0n/Friends%20S07E23%20The%20One%20with%20Monica%20and%20Chandler%27s%20Wedding%20Pt%201.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/kzuu98ovbjl0j92/7.PNG?raw=1',
      'Friends Watch – S07E24 The One with Monica and Chandler\'s Wedding Pt 2',
      'https://www.dropbox.com/s/x8x3wlkrqkvk4ba/Friends%20S07E24%20The%20One%20with%20Monica%20and%20Chandler%27s%20Wedding%20Pt%202.mp4?raw=1',
    ),
      

    
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        _buildSliverContent(),
      ],
    );
  }

  SliverFixedExtentList _buildSliverContent() {
    return SliverFixedExtentList(
      itemExtent: 110,
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return _buildListItem(context, tutorials[index]);
        },
        childCount: tutorials.length,
      ),
    );
  }

  Widget _buildListItem(BuildContext context, Tuple3 tutorial) {
    return Stack(
      children: <Widget>[
        _buildCardView(tutorial.item2, tutorial.item1),
        _buildRippleEffectNavigation(
            context, tutorial.item2, tutorial.item1, tutorial.item3),
      ],
    );
  }

  Widget _buildCardView(String desc, String imageUrl) {
    return Positioned.fill(
      child: Card(
        margin: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeroWidget(imageUrl),
            _buildDesc(desc),
          ],
        ),
      ),
    );
  }

  Expanded _buildDesc(String desc) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 0),
        child: Text(
          desc,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  HeroWidget _buildHeroWidget(String imageUrl) {
    return HeroWidget(
      width: 150,
      heroTag: imageUrl,
      builder: (BuildContext context) {
        return _buildHeroWidgetContent(imageUrl);
      },
    );
  }

  CachedNetworkImage _buildHeroWidgetContent(String imageUrl) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildRippleEffectNavigation(
      BuildContext context, String desc, String imageUrl, String videoUrl) {
    return Positioned.fill(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.red.withOpacity(0.5),
          highlightColor: Colors.red.withOpacity(0.5),
          onTap: () {
            Navigator.of(context).push(
              _createTutorialDetailRoute(desc, imageUrl, videoUrl),
            );
          },

          //* FilePicker to get video path from phone storage
          // onTap: () async {
          //   File videoFile = await FilePicker.getFile(type: FileType.video);
          //   if (videoFile != null) {
          //     videoUrl = videoFile.path;

          //     Navigator.of(context).push(
          //       _createTutorialDetailRoute(desc, imageUrl, videoUrl),
          //     );
          //   }
          // },
        ),
      ),
    );
  }

  PageRoute<Object> _createTutorialDetailRoute(desc, imageUrl, videoUrl) {
    return PageRouteBuilder(
      transitionDuration: Duration(seconds: 1),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween(begin: Offset(1.0, 0.0), end: Offset.zero)
              .chain(CurveTween(curve: Curves.ease))
              .animate(animation),
          child: FadeTransition(
            opacity: Tween(begin: 0.0, end: 1.0)
                .chain(CurveTween(curve: Curves.ease))
                .animate(animation),
            child: child,
          ),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) =>
          PortfolioTutorialDetailPage(
        heroTag: imageUrl,
        desc: desc,
        videoUrl: videoUrl,
      ),
    );
  }
}
