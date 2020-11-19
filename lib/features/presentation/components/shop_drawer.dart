import 'package:first_application/features/presentation/components/subscribe.dart';
import 'package:first_application/features/presentation/components/subscribe1.dart';
import 'package:first_application/features/presentation/components/subscribe2.dart';
import 'package:flutter/material.dart';

class ShopDrawer extends StatelessWidget {
  const ShopDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.white),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _buildDrawerHeader(context),
            _buildPortfolioItem1(context),
            _buildPortfolioItem2(context),
            _buildPortfolioItem3(context),
            _buildDivider(),
          ],
        ),
      ),
    );
  }

  UserAccountsDrawerHeader _buildDrawerHeader(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text(
        'Friends Watch',
      ),
      accountEmail: Text(
        'M4 Ltd.',
      ),
      currentAccountPicture: GestureDetector(
        onTap: () => showDialog(
          context: context,
          child: AlertDialog(
            title: Text('Friends Watch'),
            content: Text(
                'A fanmade work to let other fans watch this anytime, anywhere, anyhow'),
            actions: <Widget>[
              FlatButton(
                child: Text('Close'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
        child: CircleAvatar(
          backgroundColor: Colors.black,
          backgroundImage: NetworkImage(
              'https://www.dropbox.com/s/myi798dgfi9w1ki/tic%201.jpg?raw=1'),
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://www.dropbox.com/s/ctnf09hvk0mm9da/side.jpg?raw=1'),
        ),
      ),
    );
  }
   ListTile _buildPortfolioItem1(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy Me A Pizza',
        style: TextStyle(color: Colors.tealAccent[700]),
      ),
      leading: Icon(
        Icons.local_pizza,
        color: Colors.tealAccent[700],
      ),
      trailing: Icon(
        Icons.arrow_right,
        color: Colors.tealAccent[700],
      ),
      onTap: () {
        Navigator.of(context).pop();

        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Subscribe2()),
        );
      },
    );
  }

  ListTile _buildPortfolioItem2(BuildContext context) {
    return ListTile(
      title: Text(
        'Support Me',
        style: TextStyle(color: Colors.tealAccent[700]),
      ),
      leading: Icon(
        Icons.free_breakfast,
        color: Colors.tealAccent[700],
      ),
      trailing: Icon(
        Icons.arrow_right,
        color: Colors.tealAccent[700],
      ),
      onTap: () {
        Navigator.of(context).pop();

        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Subscribe()),
        );
      },
    );
  }
  ListTile _buildPortfolioItem3(BuildContext context) {
    return ListTile(
      title: Text(
        'Follow Me',
        style: TextStyle(color: Colors.tealAccent[700]),
      ),
      leading: Icon(
        Icons.favorite,
        color: Colors.tealAccent[700],
      ),
      trailing: Icon(
        Icons.arrow_right,
        color: Colors.tealAccent[700],
      ),
      onTap: () {
        Navigator.of(context).pop();

        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Subscribe1()),
        );
      },
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: Colors.white,
    );
  }
}
