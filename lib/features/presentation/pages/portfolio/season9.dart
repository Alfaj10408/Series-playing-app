import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_application/features/presentation/components/hero_widget.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_tutorial_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class Season9 extends StatelessWidget {
  const Season9({Key key}) : super(key: key);

  static const List<Tuple3> tutorials = [
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E01 The One Where No One Proposes',
      'https://www.dropbox.com/s/yryh4x1h8wry38u/Friends%20S09E01%20The%20One%20Where%20No%20One%20Proposes.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E02 The One Where Emma Cries',
      'https://www.dropbox.com/s/td61xt1jd2f69kz/Friends%20S09E02%20The%20One%20Where%20Emma%20Cries.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E03 The One with the Pediatrician',
      'https://www.dropbox.com/s/ikqsipb6d6i216f/Friends%20S09E03%20The%20One%20with%20the%20Pediatrician.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E04 The One with the Sharks',
      'https://www.dropbox.com/s/dfrxh5412c585zq/Friends%20S09E04%20The%20One%20with%20the%20Sharks.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E05 The One with Phoebe\'s Birthday Dinner',
      'https://www.dropbox.com/s/sy84rze23syl9lo/Friends%20S09E05%20The%20One%20with%20Phoebe%27s%20Birthday%20Dinner.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E06 The One with the Male Nanny',
      'https://www.dropbox.com/s/xybc98rcbgli9zb/Friends%20S09E06%20The%20One%20with%20the%20Male%20Nanny.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E07 The One with Ross\'s Inappropriate Song',
      'https://www.dropbox.com/s/irkqqckr9jkzdzk/Friends%20S09E07%20The%20One%20with%20Ross%27s%20Inappropriate%20Song.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E08 The One with Rachel\'s Other Sister',
      'https://www.dropbox.com/s/uvmyufzbvjbvds4/Friends%20S09E08%20The%20One%20with%20Rachel%27s%20Other%20Sister.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E09 The One with Rachel\'s Phone Number',
      'https://www.dropbox.com/s/cxt1wwedzs11b45/Friends%20S09E09%20The%20One%20with%20Rachel%27s%20Phone%20Number.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E10 The One with Christmas in Tulsa',
      'https://www.dropbox.com/s/oxs989e2q1kif0l/Friends%20S09E10%20The%20One%20with%20Christmas%20in%20Tulsa.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E11 The One Where Rachel Goes Back to Work',
      'https://www.dropbox.com/s/z7wogj2e2bfvhv1/Friends%20S09E11%20The%20One%20Where%20Rachel%20Goes%20Back%20to%20Work.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E12 The One with Phoebe\'s Rats',
      'https://www.dropbox.com/s/29z387dykyo0c5j/Friends%20S09E12%20The%20One%20with%20Phoebe%27s%20Rats.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E13 The One Where Monica Sings',
      'https://www.dropbox.com/s/vbpcoo1t802xdgs/Friends%20S09E13%20The%20One%20Where%20Monica%20Sings.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E14 The One with the Blind Dates',
      'https://www.dropbox.com/s/inmxw7kzu0slo16/Friends%20S09E14%20The%20One%20with%20the%20Blind%20Dates.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E15 The One with the Mugging',
      'https://www.dropbox.com/s/24jvoh1bdndsvvj/Friends%20S09E15%20The%20One%20with%20the%20Mugging.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E16 The One with the Boob Job',
      'https://www.dropbox.com/s/955c9uydmxqfhk9/Friends%20S09E16%20The%20One%20with%20the%20Boob%20Job.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E17 The One with the Memorial Service',
      'https://www.dropbox.com/s/ivcdmp2wq2ks9vn/Friends%20S09E17%20The%20One%20with%20the%20Memorial%20Service.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E18 The One with the Lottery',
      'https://www.dropbox.com/s/lf08s02izm97ob9/Friends%20S09E18%20The%20One%20with%20the%20Lottery.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E19 The One with Rachel\'s Dream',
      'https://www.dropbox.com/s/g1uwn7sa9kbvbqr/Friends%20S09E19%20The%20One%20with%20Rachel%27s%20Dream.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E20 The One with the Soap Opera',
      'https://www.dropbox.com/s/1wcf3lhpe16p3jo/Friends%20S09E20%20The%20One%20with%20the%20Soap%20Opera.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E21 The One with the Fertility Test',
      'https://www.dropbox.com/s/8sv6qdqygk84h2u/Friends%20S09E21%20The%20One%20with%20the%20Fertility%20Test.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E22 The One with the Donor',
      'https://www.dropbox.com/s/jmpziihmgvxmf27/Friends%20S09E22%20The%20One%20with%20the%20Donor.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/acsa2mmlfu9mym7/9.jpg?raw=1',
      'Friends Watch – S09E23+E24 The One in Barbados',
      'https://www.dropbox.com/s/grikybxwku1aypw/Friends%20S09E23%2BE24%20The%20One%20in%20Barbados.mp4?raw=1',
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
