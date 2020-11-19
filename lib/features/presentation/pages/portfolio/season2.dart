import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_application/features/presentation/components/hero_widget.dart';
import 'package:first_application/features/presentation/pages/portfolio/portfolio_tutorial_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class Season2 extends StatelessWidget {
  const Season2({Key key}) : super(key: key);

  static const List<Tuple3> tutorials = [
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E01 The One with Ross\'s New Girlfriend',
      'https://www.dropbox.com/s/1afv7oy2i9d7kqt/Friends%20S02E01%20The%20One%20with%20Ross%27s%20New%20Girlfriend.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E02 The One with the Breast Milk',
      'https://www.dropbox.com/s/w7r8gjicisxpkxr/Friends%20S02E02%20The%20One%20with%20the%20Breast%20Milk.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E03 The One Where Heckles Dies',
      'https://www.dropbox.com/s/q08hm0y385ks7xh/Friends%20S02E03%20The%20One%20Where%20Heckles%20Dies.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E04 The One with Phoebe\'s Husband',
      'https://www.dropbox.com/s/5uady62w8stsqon/Friends%20S02E04%20The%20One%20with%20Phoebe%27s%20Husband.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E05 The One with Five Steaks and an Eggplant',
      'https://www.dropbox.com/s/0h3o48319u9hwfm/Friends%20S02E05%20The%20One%20with%20Five%20Steaks%20and%20an%20Eggplant.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E06 The One with the Baby on the Bus',
      'https://www.dropbox.com/s/ge7on094hwxjvj5/Friends%20S02E06%20The%20One%20with%20the%20Baby%20on%20the%20Bus.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E07 The One Where Ross Finds Out',
      'https://www.dropbox.com/s/o9lwkmcmey3bc63/Friends%20S02E07%20The%20One%20Where%20Ross%20Finds%20Out.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E08 The One with the List',
      'https://www.dropbox.com/s/w4qcuu82d0uayfs/Friends%20S02E08%20The%20One%20with%20the%20List.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E09 The One with Phoebe\'s Dad',
      'https://www.dropbox.com/s/7cp8cc9pcv9i0qc/Friends%20S02E09%20The%20One%20with%20Phoebe%27s%20Dad.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E10 The One with Russ',
      'https://www.dropbox.com/s/cenep5io5k8vwlp/Friends%20S02E10%20The%20One%20with%20Russ.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E11 The One with the Lesbian Wedding',
      'https://www.dropbox.com/s/emp8ns96x8s0mc1/Friends%20S02E11%20The%20One%20with%20the%20Lesbian%20Wedding.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E12 The One After the Superbowl Pt 1',
      'https://www.dropbox.com/s/mdn70des3g7posp/Friends%20S02E12%20The%20One%20After%20the%20Superbowl%20Pt%201.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E13 The One After the Superbowl Pt 2',
      'https://www.dropbox.com/s/mcp7skq6dujxh5p/Friends%20S02E13%20The%20One%20After%20the%20Superbowl%20Pt%202.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E14 The One with the Prom Video',
      'https://www.dropbox.com/s/kqtbhhlfto48pgi/Friends%20S02E14%20The%20One%20with%20the%20Prom%20Video.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E15 The One Where Ross and Rachel... You Know',
      'https://www.dropbox.com/s/ar0huprk26nuqya/Friends%20S02E15%20The%20One%20Where%20Ross%20and%20Rachel...%20You%20Know.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E16 The One Where Joey Moves Out',
      'https://www.dropbox.com/s/poi12y7nn55ld3h/Friends%20S02E16%20The%20One%20Where%20Joey%20Moves%20Out.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E17 The One Where Eddie Moves In',
      'https://www.dropbox.com/s/4sqkae85h5cqe0q/Friends%20S02E17%20The%20One%20Where%20Eddie%20Moves%20In.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E18 The One Where Dr. Ramoray Dies',
      'https://www.dropbox.com/s/8ytn4tn2bn533y8/Friends%20S02E18%20The%20One%20Where%20Dr.%20Ramoray%20Dies.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E19 The One Where Eddie Won\'t Go',
      'https://www.dropbox.com/s/ezmdqd8tiu4rli4/Friends%20S02E19%20The%20One%20Where%20Eddie%20Won%27t%20Go.mp4?raw=1',
    ),
    
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E20 The One Where Old Yeller Dies',
      'https://www.dropbox.com/s/6b8kckulidcu43v/Friends%20S02E20%20The%20One%20Where%20Old%20Yeller%20Dies.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E21 The One with the Bulliesa',
      'https://www.dropbox.com/s/slcfj3sunjgiubf/Friends%20S02E21%20The%20One%20with%20the%20Bullies.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E22 The One with the Two Parties',
      'https://www.dropbox.com/s/5dy469mt5j6ub90/Friends%20S02E22%20The%20One%20with%20the%20Two%20Parties.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E23 The One with the Chicken Pox',
      'https://www.dropbox.com/s/tthr0c8unngkbyl/Friends%20S02E23%20The%20One%20with%20the%20Chicken%20Pox.mp4?raw=1',
    ),
    const Tuple3<String, String, String>(
      'https://www.dropbox.com/s/lulbkf75cg4fv60/2.PNG?raw=1',
      'Friends Watch – S02E24 The One with Barry and Mindy\'s Wedding',
      'https://www.dropbox.com/s/9o3fdttbo6jrqlz/Friends%20S02E24%20The%20One%20with%20Barry%20and%20Mindy%27s%20Wedding.mp4?raw=1',
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
