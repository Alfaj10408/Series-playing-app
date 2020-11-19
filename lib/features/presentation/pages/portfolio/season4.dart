import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_application/features/presentation/components/hero_widget.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_tutorial_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class Season4 extends StatelessWidget {
  const Season4({Key key}) : super(key: key);

  static const List<Tuple3> tutorials = [
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E01 The One with the Jellyfish',
      'https://www.dropbox.com/s/snm7j48xh7cehej/Friends%20S04E01%20The%20One%20with%20the%20Jellyfish.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E02 The One with the Cat',
      'https://www.dropbox.com/s/r4y8skcclcxwmwj/Friends%20S04E02%20The%20One%20with%20the%20Cat.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E03 The One with the Cuffs',
      'https://www.dropbox.com/s/n8a8kmgsca4r79v/Friends%20S04E03%20The%20One%20with%20the%20Cuffs.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E04 The One with the Ballroom Dancing',
      'https://www.dropbox.com/s/bd2mkqg5fqf4o8c/Friends%20S04E04%20The%20One%20with%20the%20Ballroom%20Dancing.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E05 The One with Joey\'s New Girlfriend',
      'https://www.dropbox.com/s/qt8zvz7audlec9m/Friends%20S04E05%20The%20One%20with%20Joey%27s%20New%20Girlfriend.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E06 The One with the Dirty Girl',
      'https://www.dropbox.com/s/me0gzq21kpogm7i/Friends%20S04E06%20The%20One%20with%20the%20Dirty%20Girl.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E07 The One Where Chandler Crosses the Line',
      'https://www.dropbox.com/s/xcziivjhzij7st5/Friends%20S04E07%20The%20One%20Where%20Chandler%20Crosses%20the%20Line.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E08 The One with Chandler in a Box',
      'https://www.dropbox.com/s/k3h19axn1s02zgb/Friends%20S04E08%20The%20One%20with%20Chandler%20in%20a%20Box.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E09 The One Where They\'re Going to Party!',
      'https://www.dropbox.com/s/ra5nb6v3wqj0orl/Friends%20S04E09%20The%20One%20Where%20They%27re%20Going%20to%20Party%21.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E10 The One with the Girl from Poughkeepsie',
      'https://www.dropbox.com/s/cxrjzt2kqtsf0i8/Friends%20S04E10%20The%20One%20with%20the%20Girl%20from%20Poughkeepsie.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E11 The One with Phoebe\'s Uterus',
      'https://www.dropbox.com/s/0ukgn2d0g95h2lt/Friends%20S04E11%20The%20One%20with%20Phoebe%27s%20Uterus.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E12 The One with the Embryos',
      'https://www.dropbox.com/s/44ugobeu3xierqw/Friends%20S04E12%20The%20One%20with%20the%20Embryos.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E13 The One with Rachel\'s Crush',
      'https://www.dropbox.com/s/mx22neaeqzb6oiv/Friends%20S04E13%20The%20One%20with%20Rachel%27s%20Crush.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E14 The One with Joey\'s Dirty Day',
      'https://www.dropbox.com/s/8dhb5onr9rszoo2/Friends%20S04E14%20The%20One%20with%20Joey%27s%20Dirty%20Day.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E15 The One with All the Rugby',
      'https://www.dropbox.com/s/6n263pdy5qk1zby/Friends%20S04E15%20The%20One%20with%20All%20the%20Rugby.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E16 The One with the Fake Party',
      'https://www.dropbox.com/s/zgwejk4mz49qiv6/Friends%20S04E16%20The%20One%20with%20the%20Fake%20Party.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E17 The One with the Free Porn',
      'https://www.dropbox.com/s/no5g1h62nklt2cn/Friends%20S04E17%20The%20One%20with%20the%20Free%20Porn.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E18 The One with Rachel\'s New Dress',
      'https://www.dropbox.com/s/c0prluo6b5ty9do/Friends%20S04E18%20The%20One%20with%20Rachel%27s%20New%20Dress.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E19 The One with All the Haste',
      'https://www.dropbox.com/s/6ivg0vef0nbyxdj/Friends%20S04E19%20The%20One%20with%20All%20the%20Haste.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – ',
      'https://www.dropbox.com/s/6ivg0vef0nbyxdj/Friends%20S04E19%20The%20One%20with%20All%20the%20Haste.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E20 The One with All the Wedding Dresses',
      'https://www.dropbox.com/s/7mvt0vm23zmj49c/Friends%20S04E20%20The%20One%20with%20All%20the%20Wedding%20Dresses.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E21 The One with the Invitation',
      'https://www.dropbox.com/s/guguhur9tbqr3df/Friends%20S04E21%20The%20One%20with%20the%20Invitation.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E22 The One with the Worst Best Man Ever',
      'https://www.dropbox.com/s/ox6i4yr5egf58mb/Friends%20S04E22%20The%20One%20with%20the%20Worst%20Best%20Man%20Ever.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E23 The One with Ross\'s Wedding Pt 1',
      'https://www.dropbox.com/s/jkee9hn6o1yt81o/Friends%20S04E23%20The%20One%20with%20Ross%27s%20Wedding%20Pt%201.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/qq8vmmsxwyuf713/4.jpg?raw=1',
      'Friends Watch – S04E24 The One with Ross\'s Wedding Pt 2',
      'https://www.dropbox.com/s/fpq86vsx8ltc0gk/Friends%20S04E24%20The%20One%20with%20Ross%27s%20Wedding%20Pt%202.mp4?raw=1',
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
