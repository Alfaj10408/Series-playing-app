import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_application/features/presentation/components/hero_widget.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_tutorial_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class Season10 extends StatelessWidget {
  const Season10({Key key}) : super(key: key);

  static const List<Tuple3> tutorials = [
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E01 The One After Joey and Rachel Kiss',
      'https://www.dropbox.com/s/pmhgorctrm6qct3/Friends%20S10E01%20The%20One%20After%20Joey%20and%20Rachel%20Kiss.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E02 The One Where Ross Is Fine',
      'https://www.dropbox.com/s/q4ay8sa27hlanf8/Friends%20S10E02%20The%20One%20Where%20Ross%20Is%20Fine.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E03 The One with Ross\'s Tan',
      'https://www.dropbox.com/s/1yubllwnrnguqt7/Friends%20S10E03%20The%20One%20with%20Ross%27s%20Tan.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E04 The One with the Cake',
      'https://www.dropbox.com/s/gyri8j3g882qka3/Friends%20S10E04%20The%20One%20with%20the%20Cake.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E05 The One Where Rachel\'s Sister Babysits',
      'https://www.dropbox.com/s/s6slw0oun8bj6i7/Friends%20S10E05%20The%20One%20Where%20Rachel%27s%20Sister%20Babysits.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E06 The One with Ross\'s Grant',
      'https://www.dropbox.com/s/0ofz417tlzxh3hr/Friends%20S10E06%20The%20One%20with%20Ross%27s%20Grant.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E07 The One with the Home Study',
      'https://www.dropbox.com/s/0v1xp7vyshc6lne/Friends%20S10E07%20The%20One%20with%20the%20Home%20Study.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E08 The One with the Late Thanksgiving',
      'https://www.dropbox.com/s/0wyzhwb5j2akoon/Friends%20S10E08%20The%20One%20with%20the%20Late%20Thanksgiving.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E09 The One with the Birth Mother',
      'https://www.dropbox.com/s/mkpudrfynafq5h2/Friends%20S10E09%20The%20One%20with%20the%20Birth%20Mother.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E10 The One Where Chandler Gets Caught',
      'https://www.dropbox.com/s/81603ihdvm5bqbe/Friends%20S10E10%20The%20One%20Where%20Chandler%20Gets%20Caught.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E11 The One Where the Stripper Cries',
      'https://www.dropbox.com/s/f33mfsti01gbzfl/Friends%20S10E11%20The%20One%20Where%20the%20Stripper%20Cries.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E12 The One with Phoebe\'s Wedding',
      'https://www.dropbox.com/s/fe4wpgpo09t9y2b/Friends%20S10E12%20The%20One%20with%20Phoebe%27s%20Wedding.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E13 The One Where Joey Speaks French',
      'https://www.dropbox.com/s/up1w93euaa6n9d9/Friends%20S10E13%20The%20One%20Where%20Joey%20Speaks%20French.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E14 The One with Princess Consuela',
      'https://www.dropbox.com/s/7u05h6wbsnizpgh/Friends%20S10E14%20The%20One%20with%20Princess%20Consuela.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E15 The One Where Estelle Dies',
      'https://www.dropbox.com/s/7ta7vptchkjc00t/Friends%20S10E15%20The%20One%20Where%20Estelle%20Dies.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E16 The One with Rachel\'s Going Away Party',
      'https://www.dropbox.com/s/5pq0y0xpp2wos42/Friends%20S10E16%20The%20One%20with%20Rachel%27s%20Going%20Away%20Party.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/hk24at92i2ujiq9/10.PNG?raw=1',
      'Friends Watch – S10E17+E18 The Last One',
      'https://www.dropbox.com/s/9auc11pr2q3te0b/Friends%20S10E17%2BE18%20The%20Last%20One.mp4?raw=1',
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
