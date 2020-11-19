import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_application/features/presentation/components/hero_widget.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_tutorial_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class Season8 extends StatelessWidget {
  const Season8({Key key}) : super(key: key);

  static const List<Tuple3> tutorials = [
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E01 The One After I Do',
      'https://www.dropbox.com/s/r47vqoo8bcr4thu/Friends%20S08E01%20The%20One%20After%20I%20Do.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E02 The One with the Red Sweater',
      'https://www.dropbox.com/s/ks1td5zmtukfvl3/Friends%20S08E02%20The%20One%20with%20the%20Red%20Sweater.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E03 The One Where Rachel Tells',
      'https://www.dropbox.com/s/rsg2f2sa1mhaqho/Friends%20S08E03%20The%20One%20Where%20Rachel%20Tells.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E04 The One with the Video Tape',
      'https://www.dropbox.com/s/9x1dnrmky4mmuqt/Friends%20S08E04%20The%20One%20with%20the%20Video%20Tape.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E05 The One with Rachel\'s Date',
      'https://www.dropbox.com/s/2hq502yrgpks4hl/Friends%20S08E05%20The%20One%20with%20Rachel%27s%20Date.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E06 The One with the Halloween Party',
      'https://www.dropbox.com/s/tg5d6any9ww6gxh/Friends%20S08E06%20The%20One%20with%20the%20Halloween%20Party.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E07 The One with the Stain',
      'https://www.dropbox.com/s/l7ugrp5rfmy0g89/Friends%20S08E07%20The%20One%20with%20the%20Stain.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E08 The One with the Stripper',
      'https://www.dropbox.com/s/fc079c7syfa8f9z/Friends%20S08E08%20The%20One%20with%20the%20Stripper.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E09 The One with the Rumor',
      'https://www.dropbox.com/s/l7m1k7jj5mymkma/Friends%20S08E09%20The%20One%20with%20the%20Rumor.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E10 The One with Monica\'s Boots',
      'https://www.dropbox.com/s/kuikkjug864myv3/Friends%20S08E10%20The%20One%20with%20Monica%27s%20Boots.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E11 The One with Ross\'s Step Forward',
      'https://www.dropbox.com/s/kz515vn5ewg1zzf/Friends%20S08E11%20The%20One%20with%20Ross%27s%20Step%20Forward.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E12 The One Where Joey Dates Rachel',
      'https://www.dropbox.com/s/xkfyuhz516q08h8/Friends%20S08E12%20The%20One%20Where%20Joey%20Dates%20Rachel.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E13 The One Where Chandler Takes a Bath',
      'https://www.dropbox.com/s/r9qvf426k0tjupl/Friends%20S08E13%20The%20One%20Where%20Chandler%20Takes%20a%20Bath.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E14 The One with the Secret Closet',
      'https://www.dropbox.com/s/iis0iopdqdgkpkw/Friends%20S08E14%20The%20One%20with%20the%20Secret%20Closet.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E15 The One with the Birthing Video',
      'https://www.dropbox.com/s/6xeagud27vkg089/Friends%20S08E15%20The%20One%20with%20the%20Birthing%20Video.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E16 The One Where Joey Tells Rachel',
      'https://www.dropbox.com/s/5cfbq7h37rhhsiq/Friends%20S08E16%20The%20One%20Where%20Joey%20Tells%20Rachel.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E17 The One with the Tea Leaves',
      'https://www.dropbox.com/s/83wlay3shd3q5sn/Friends%20S08E17%20The%20One%20with%20the%20Tea%20Leaves.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E18 The One In Massapequa',
      'https://www.dropbox.com/s/565pqo0m0ywqms6/Friends%20S08E18%20The%20One%20In%20Massapequa.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E19 The One with Joey\'s Interview',
      'https://www.dropbox.com/s/pi7vej0btzw1wtl/Friends%20S08E19%20The%20One%20with%20Joey%27s%20Interview.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E20 The One with the Baby Shower',
      'https://www.dropbox.com/s/rwbau9bu82a0q0z/Friends%20S08E20%20The%20One%20with%20the%20Baby%20Shower.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E21 The One with the Cooking Class',
      'https://www.dropbox.com/s/h396hjtspcauwc8/Friends%20S08E21%20The%20One%20with%20the%20Cooking%20Class.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E22 The One Where Rachel Is Late',
      'https://www.dropbox.com/s/dmn3gdraxe32os3/Friends%20S08E22%20The%20One%20Where%20Rachel%20Is%20Late.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E23 The One Where Rachel Has a Baby Pt 1',
      'https://www.dropbox.com/s/sxr8qufjfh89v96/Friends%20S08E23%20The%20One%20Where%20Rachel%20Has%20a%20Baby%20Pt%201.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/zd1dz8w0oru7gf8/8.jpg?raw=1',
      'Friends Watch – S08E24 The One Where Rachel Has a Baby Pt 2',
      'https://www.dropbox.com/s/bcvgjk2e9nr4sex/Friends%20S08E24%20The%20One%20Where%20Rachel%20Has%20a%20Baby%20Pt%202.mp4?raw=1',
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
