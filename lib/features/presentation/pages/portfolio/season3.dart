import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_application/features/presentation/components/hero_widget.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_tutorial_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class Season3 extends StatelessWidget {
  const Season3({Key key}) : super(key: key);

  static const List<Tuple3> tutorials = [
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E01 The One with the Princess Leia Fantasy',
      'https://www.dropbox.com/s/4z1nwohfg8s0tfy/Friends%20S03E01%20The%20One%20with%20the%20Princess%20Leia%20Fantasy.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E02 The One Where No One\'s Ready',
      'https://www.dropbox.com/s/dqi0qt69zt27k8t/Friends%20S03E02%20The%20One%20Where%20No%20One%27s%20Ready.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E03 The One with the Jam',
      'https://www.dropbox.com/s/v0266dvp90n61cp/Friends%20S03E03%20The%20One%20with%20the%20Jam.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E04 The One with the Metaphorical Tunnel',
      'https://www.dropbox.com/s/55256tg3gw9eokt/Friends%20S03E04%20The%20One%20with%20the%20Metaphorical%20Tunnel.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E05 The One with Frank Jr',
      'https://www.dropbox.com/s/67blzk90bzp0bry/Friends%20S03E05%20The%20One%20with%20Frank%20Jr..mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E06 The One with the Flashback',
      'https://www.dropbox.com/s/04i6thy7y5yqxrn/Friends%20S03E06%20The%20One%20with%20the%20Flashback.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch –S03E07 The One with the Race Car Bed',
      'https://www.dropbox.com/s/x7tn718hfrvw8r0/Friends%20S03E07%20The%20One%20with%20the%20Race%20Car%20Bed.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E08 The One with the Giant Poking Device',
      'https://www.dropbox.com/s/ms6uf6li0bvhnw3/Friends%20S03E08%20The%20One%20with%20the%20Giant%20Poking%20Device.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E09 The One with the Football',
      'https://www.dropbox.com/s/vrg5515hf2ssosw/Friends%20S03E09%20The%20One%20with%20the%20Football.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E10 The One Where Rachel Quits',
      'https://www.dropbox.com/s/psrnbstgahntyz1/Friends%20S03E10%20The%20One%20Where%20Rachel%20Quits.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E11 The One Where Chandler Can\'t Remember Which Sister',
      'https://www.dropbox.com/s/5z6nn5hw6n437ys/Friends%20S03E11%20The%20One%20Where%20Chandler%20Can%27t%20Remember%20Which%20Sister.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E12 The One with All the Jealousy',
      'https://www.dropbox.com/s/5oe3e7z2n3sz95i/Friends%20S03E12%20The%20One%20with%20All%20the%20Jealousy.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E13 The One Where Monica and Richard Are Just Friends',
      'https://www.dropbox.com/s/p3g8uabywadxiyk/Friends%20S03E13%20The%20One%20Where%20Monica%20and%20Richard%20Are%20Just%20Friends.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E14 The One with Phoebe\'s Ex-Partner',
      'https://www.dropbox.com/s/8x2q9he8hh37qf0/Friends%20S03E14%20The%20One%20with%20Phoebe%27s%20Ex-Partner.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E15 The One Where Ross and Rachel Take a Break',
      'https://www.dropbox.com/s/nqh4u07n46izbsq/Friends%20S03E15%20The%20One%20Where%20Ross%20and%20Rachel%20Take%20a%20Break.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E16 The One the Morning After',
      'https://www.dropbox.com/s/21i7e3vpx92d54c/Friends%20S03E16%20The%20One%20the%20Morning%20After.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E17 The One without the Ski Trip',
      'https://www.dropbox.com/s/5pj2df2xrp8r1bj/Friends%20S03E17%20The%20One%20without%20the%20Ski%20Trip.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E18 The One with the Hypnosis Tape',
      'https://www.dropbox.com/s/3dldx8wm606h6j2/Friends%20S03E18%20The%20One%20with%20the%20Hypnosis%20Tape.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E19 The One with the Tiny T-Shirt',
      'https://www.dropbox.com/s/2q5r78iuntsmsta/Friends%20S03E19%20The%20One%20with%20the%20Tiny%20T-Shirt.mp4?raw=1',
    ),
    
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E20 The One with the Dollhouse',
      'https://www.dropbox.com/s/dnv2xgii88ydzle/Friends%20S03E20%20The%20One%20with%20the%20Dollhouse.mp4??raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E21 The One with the Chick and the Duck',
      'https://www.dropbox.com/s/yp8wdced7dsq0t4/Friends%20S03E21%20The%20One%20with%20the%20Chick%20and%20the%20Duck.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E22 The One with the Screamer',
      'https://www.dropbox.com/s/wey02gjl1iw2v01/Friends%20S03E22%20The%20One%20with%20the%20Screamer.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E23 The One with Ross\'s Thing',
      'https://www.dropbox.com/s/ohmp8wbyqh3wgm6/Friends%20S03E23%20The%20One%20with%20Ross%27s%20Thing.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E24 The One with the Ultimate Fighting Champion',
      'https://www.dropbox.com/s/o7f51f2qqtp8aqt/Friends%20S03E24%20The%20One%20with%20the%20Ultimate%20Fighting%20Champion.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/xndzdhas3aoicim/3.jpg?raw=1',
      'Friends Watch – S03E25 The One at the Beach',
      'https://www.dropbox.com/s/plpfyv3x1vir255/Friends%20S03E25%20The%20One%20at%20the%20Beach.mp4?raw=1',
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
