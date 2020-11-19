

import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_application/features/presentation/components/hero_widget.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_tutorial_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class Season1 extends StatelessWidget {
  const Season1({Key key}) : super(key: key);

  static const List<Tuple3> tutorials = [
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – S01E01 The One Where Monica Gets a New Roomate',
      'https://www.dropbox.com/s/yjy843mzgwg11pp/Friends%20S01E01%20The%20One%20Where%20Monica%20Gets%20a%20New%20Roomate.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E02 The One with the Sonogram at the End ',
      'https://www.dropbox.com/s/e3cpcj1zl99ij19/Friends%20S01E02%20The%20One%20with%20the%20Sonogram%20at%20the%20End.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E03 The One with the Thumb',
      'https://www.dropbox.com/s/7hoo3qy3ca4a0vi/Friends%20S01E03%20The%20One%20with%20the%20Thumb.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E04 The One with George Stephanopoulos',
      'https://www.dropbox.com/s/7mvjj1e6m3afsho/Friends%20S01E04%20The%20One%20with%20George%20Stephanopoulos.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E05 The One with the East German Laundry Detergent',
      'https://www.dropbox.com/s/qae64crpt1jnegv/Friends%20S01E05%20The%20One%20with%20the%20East%20German%20Laundry%20Detergent.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E06 The One with the Butt',
      'https://www.dropbox.com/s/qae64crpt1jnegv/Friends%20S01E05%20The%20One%20with%20the%20East%20German%20Laundry%20Detergent.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E07 The One with the Blackout',
      'https://www.dropbox.com/s/qae64crpt1jnegv/Friends%20S01E05%20The%20One%20with%20the%20East%20German%20Laundry%20Detergent.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E08 The One Where Nana Dies Twice',
      'https://www.dropbox.com/s/qae64crpt1jnegv/Friends%20S01E05%20The%20One%20with%20the%20East%20German%20Laundry%20Detergent.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E09 The One Where Underdog Gets Away',
      'https://www.dropbox.com/s/14yuuoye3mgcb9y/Friends%20S01E09%20The%20One%20Where%20Underdog%20Gets%20Away.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E10 The One with the Monkey',
      'https://www.dropbox.com/s/76a32kz803m63xl/Friends%20S01E10%20The%20One%20with%20the%20Monkey.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E11 The One with Mrs. Bing',
      'https://www.dropbox.com/s/82ettln4nmywctz/Friends%20S01E11%20The%20One%20with%20Mrs.%20Bing.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E12 The One with the Dozen Lasagnas',
      'https://www.dropbox.com/s/cl3u39i9mjc1col/Friends%20S01E12%20The%20One%20with%20the%20Dozen%20Lasagnas.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E13 The One with The Boobies',
      'https://www.dropbox.com/s/j5q99qc9mp0v2zn/Friends%20S01E13%20The%20One%20with%20The%20Boobies.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E14 The One with the Candy Hearts',
      'https://www.dropbox.com/s/kc2f200gqgzjnfn/Friends%20S01E14%20The%20One%20with%20the%20Candy%20Hearts.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E15 The One with the Stoned Guy',
      'https://www.dropbox.com/s/kgc29iq8esqg9ka/Friends%20S01E15%20The%20One%20with%20the%20Stoned%20Guy.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E16 The One with Two Parts Pt 1',
      'https://www.dropbox.com/s/hhxyr1bfhi3qs87/Friends%20S01E16%20The%20One%20with%20Two%20Parts%20Pt%201.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E17 The One with Two Parts Pt 2',
      'https://www.dropbox.com/s/5ii60chnc225b3v/Friends%20S01E17%20The%20One%20with%20Two%20Parts%20Pt%202.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E18 The One with All the Poker',
      'https://www.dropbox.com/s/cv6zo29ik60krqc/Friends%20S01E18%20The%20One%20with%20All%20the%20Poker.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E19 The One Where the Monkey Gets Away',
      'https://www.dropbox.com/s/jpiaawf9uw2nc9u/Friends%20S01E19%20The%20One%20Where%20the%20Monkey%20Gets%20Away.mp4?raw=1',
    ),
    
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E20 The One with the Evil Orthodontist',
      'https://www.dropbox.com/s/yo8pu2fh6wna2co/Friends%20S01E20%20The%20One%20with%20the%20Evil%20Orthodontist.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E21 The One with Fake Monica',
      'https://www.dropbox.com/s/n3mjefssb3broy8/Friends%20S01E21%20The%20One%20with%20Fake%20Monica.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E22 The One with the Ick Factor',
      'https://www.dropbox.com/s/ugbcp6ms5kqjlo5/Friends%20S01E22%20The%20One%20with%20the%20Ick%20Factor.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E23 The One with the Birth',
      'https://www.dropbox.com/s/xa0o4zq8cyqve9b/Friends%20S01E23%20The%20One%20with%20the%20Birth.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/jyfd0abve94h3n6/1.jpg?raw=1',
      'Friends Watch – Friends S01E24 The One Where Rachel Finds Out',
      'https://www.dropbox.com/s/av0p6sp4mt07er8/Friends%20S01E24%20The%20One%20Where%20Rachel%20Finds%20Out.mp4?raw=1',
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
