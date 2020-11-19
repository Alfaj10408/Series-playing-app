import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_application/features/presentation/components/hero_widget.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_tutorial_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class Season6 extends StatelessWidget {
  const Season6({Key key}) : super(key: key);

  static const List<Tuple3> tutorials = [
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E01 The One after Vegas',
      'https://www.dropbox.com/s/55karun9rudr3o6/Friends%20S06E01%20The%20One%20after%20Vegas.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E02 The One Where Ross Hugs Rachel',
      'https://www.dropbox.com/s/k0tu2phssmrlolq/Friends%20S06E02%20The%20One%20Where%20Ross%20Hugs%20Rachel.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E03 The One with Ross\'s Denial',
      'https://www.dropbox.com/s/j6lcy7bc92klejv/Friends%20S06E03%20The%20One%20with%20Ross%27s%20Denial.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E04 The One Where Joey Loses His Insurance',
      'https://www.dropbox.com/s/m1cw4b5q95haaip/Friends%20S06E04%20The%20One%20Where%20Joey%20Loses%20His%20Insurance.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E05 The One with Joey\'s Porsche',
      'https://www.dropbox.com/s/gupd8hgu3x5xts0/Friends%20S06E05%20The%20One%20with%20Joey%27s%20Porsche.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E06 The One on the Last Night',
      'https://www.dropbox.com/s/jpv5hoid6p6h3fk/Friends%20S06E06%20The%20One%20on%20the%20Last%20Night.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E07 The One Where Phoebe Runs',
      'https://www.dropbox.com/s/zhwtofsuopqrgln/Friends%20S06E07%20The%20One%20Where%20Phoebe%20Runs.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E08 The One with Ross\'s Teeth',
      'https://www.dropbox.com/s/c42dackbdovgqpk/Friends%20S06E08%20The%20One%20with%20Ross%27s%20Teeth.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E09 The One Where Ross Got High',
      'https://www.dropbox.com/s/4rcwt1n8cow9jgh/Friends%20S06E09%20The%20One%20Where%20Ross%20Got%20High.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E10 The One with the Routine',
      'https://www.dropbox.com/s/jbonp4hnjocls1x/Friends%20S06E10%20The%20One%20with%20the%20Routine.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E11 The One with the Apothecary Table',
      'https://www.dropbox.com/s/sgmm79mc3ewejsl/Friends%20S06E11%20The%20One%20with%20the%20Apothecary%20Table.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E12 The One with the Joke',
      'https://www.dropbox.com/s/8lk5d70rvgbyg6z/Friends%20S06E12%20The%20One%20with%20the%20Joke.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E13 The One with Rachel\'s Sister',
      'https://www.dropbox.com/s/d5uowyecjvqcqjf/Friends%20S06E13%20The%20One%20with%20Rachel%27s%20Sister.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E14 The One Where Chandler Can\'t Cry',
      'https://www.dropbox.com/s/bpt5fnhz1gtjmwt/Friends%20S06E14%20The%20One%20Where%20Chandler%20Can%27t%20Cry.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E15 The One That Could Have Been Pt 1',
      'https://www.dropbox.com/s/r07tbo9xggxn1pw/Friends%20S06E15%20The%20One%20That%20Could%20Have%20Been%20Pt%201.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E15 The One That Could Have Been Pt 2',
      'https://www.dropbox.com/s/oeo1bvns1yr80wo/Friends%20S06E16%20The%20One%20That%20Could%20Have%20Been%20Pt%202.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E17 The One with Unagi',
      'https://www.dropbox.com/s/z1bi66gp19jbdbn/Friends%20S06E17%20The%20One%20with%20Unagi.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E18 The One Where Ross Dates a Student',
      'https://www.dropbox.com/s/tjta4xzsc6abubk/Friends%20S06E18%20The%20One%20Where%20Ross%20Dates%20a%20Student.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E19 The One with Joey\'s Fridge',
      'https://www.dropbox.com/s/35m1qp1y2qzonnn/Friends%20S06E19%20The%20One%20with%20Joey%27s%20Fridge.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E20 The One with Mac & C.H.E.E.S.E.',
      'https://www.dropbox.com/s/6b3rysnfgnbh7k5/Friends%20S06E20%20The%20One%20with%20Mac%20%26%20C.H.E.E.S.E..mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E21 The One Where Ross Meets Elizabeth\'s Dad',
      'https://www.dropbox.com/s/c297ohqjdqkwlub/Friends%20S06E21%20The%20One%20Where%20Ross%20Meets%20Elizabeth%27s%20Dad.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E22 The One Where Paul\'s the Man',
      'https://www.dropbox.com/s/y0a4ekz69e0oyyv/Friends%20S06E22%20The%20One%20Where%20Paul%27s%20the%20Man.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E23 The One with the Ring',
      'https://www.dropbox.com/s/37bzq00nxn8d564/Friends%20S06E23%20The%20One%20with%20the%20Ring.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E24 The One with the Proposal Pt 1',
      'https://www.dropbox.com/s/tqb4m3rxxvo46uf/Friends%20S06E24%20The%20One%20with%20the%20Proposal%20Pt%201.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/8neggowbw3uad8x/6.PNG?raw=1',
      'Friends Watch – S06E25 The One with the Proposal Pt 2',
      'https://www.dropbox.com/s/h40pk1lk1g6txhq/Friends%20S06E25%20The%20One%20with%20the%20Proposal%20Pt%202.mp4?raw=1',
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
