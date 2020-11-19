import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_application/features/presentation/components/hero_widget.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_tutorial_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class Season5 extends StatelessWidget {
  const Season5({Key key}) : super(key: key);

  static const List<Tuple3> tutorials = [
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E01 The One After Ross Says Rachel',
      'https://www.dropbox.com/s/0fb5q36luk0firg/Friends%20S05E01%20The%20One%20After%20Ross%20Says%20Rachel.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E02 The One with All the Kissing',
      'https://www.dropbox.com/s/ztf8pbkf2cbedoe/Friends%20S05E02%20The%20One%20with%20All%20the%20Kissing.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E03 The One with The Triplets The One Hundredth',
      'https://www.dropbox.com/s/qj093i8zkqbyu6g/Friends%20S05E03%20The%20One%20with%20The%20Triplets%20The%20One%20Hundredth.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E04 The One Where Phoebe Hates PBS',
      'https://www.dropbox.com/s/jyv3la6n60erbvi/Friends%20S05E04%20The%20One%20Where%20Phoebe%20Hates%20PBS.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E05 The One with The Kips',
      'https://www.dropbox.com/s/3stewub10dek6ds/Friends%20S05E05%20The%20One%20with%20The%20Kips.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E06 The One with The Yeti',
      'https://www.dropbox.com/s/qu2rpgrtwmbvfz4/Friends%20S05E06%20The%20One%20with%20The%20Yeti.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E07 The One Where Ross Moves In',
      'https://www.dropbox.com/s/pu5nc7ak8t1qf44/Friends%20S05E07%20The%20One%20Where%20Ross%20Moves%20In.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E08 The One with All the Thanksgivings',
      'https://www.dropbox.com/s/mp8kd8mic6qgjx7/Friends%20S05E08%20The%20One%20with%20All%20the%20Thanksgivings.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E09 The One with Ross\'s Sandwich',
      'https://www.dropbox.com/s/ego5i9ant5ha3we/Friends%20S05E09%20The%20One%20with%20Ross%27s%20Sandwich.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E10 The One with the Inappropriate Sister',
      'https://www.dropbox.com/s/z23c2r0b92lbwge/Friends%20S05E10%20The%20One%20with%20the%20Inappropriate%20Sister.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E11 The One with All the Resolutions',
      'https://www.dropbox.com/s/o386bvtvbdlgl4n/Friends%20S05E11%20The%20One%20with%20All%20the%20Resolutions.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E12 The One with Chandler\'s Work Laugh',
      'https://www.dropbox.com/s/jojpa0idbw39dy1/Friends%20S05E12%20The%20One%20with%20Chandler%27s%20Work%20Laugh.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E13 The One with Joey\'s Bag',
      'https://www.dropbox.com/s/4zbw1pj7clvl42e/Friends%20S05E13%20The%20One%20with%20Joey%27s%20Bag.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E14 The One Where Everybody Finds Out',
      'https://www.dropbox.com/s/jzt4my0i95hbss7/Friends%20S05E14%20The%20One%20Where%20Everybody%20Finds%20Out.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E15 The One with the Girl Who Hits Joey',
      'https://www.dropbox.com/s/9trxct4gsr3zm1g/Friends%20S05E15%20The%20One%20with%20the%20Girl%20Who%20Hits%20Joey.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E16 The One with the Cop',
      'https://www.dropbox.com/s/8pg9t3ogu3zxbb8/Friends%20S05E16%20The%20One%20with%20the%20Cop.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E17 The One with Rachel\'s Inadvertent Kiss',
      'https://www.dropbox.com/s/sweuan7c86u8j2s/Friends%20S05E17%20The%20One%20with%20Rachel%27s%20Inadvertent%20Kiss.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E18 The One Where Rachel Smokes',
      'https://www.dropbox.com/s/75yxzv6otj3jii8/Friends%20S05E18%20The%20One%20Where%20Rachel%20Smokes.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E19 The One Where Ross Can\'t Flirt',
      'https://www.dropbox.com/s/5vzbxp8h4lrxsed/Friends%20S05E19%20The%20One%20Where%20Ross%20Can%27t%20Flirt.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E20 The One with The Ride-Along',
      'https://www.dropbox.com/s/k7dy7r96sq175zi/Friends%20S05E20%20The%20One%20with%20The%20Ride-Along.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E21 The One with The Ball',
      'https://www.dropbox.com/s/qmw3tfjzrsvp43b/Friends%20S05E21%20The%20One%20with%20The%20Ball.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E22 The One with Joey\'s Big Break',
      'https://www.dropbox.com/s/d25th88t7kzc6dt/Friends%20S05E22%20The%20One%20with%20Joey%27s%20Big%20Break.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E23 The One in Vegas Pt 1',
      'https://www.dropbox.com/s/9bvc8ui3f9zfh23/Friends%20S05E23%20The%20One%20in%20Vegas%20Pt%201.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/03nof25iosogu29/5.jpg?raw=1',
      'Friends Watch – S05E24 The One in Vegas Pt 2',
      'https://www.dropbox.com/s/udvb6l0jh6ga78v/Friends%20S05E24%20The%20One%20in%20Vegas%20Pt%202.mp4?raw=1',
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
