import 'package:chat/screens/chats/components/body.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatScreenState();
}


class _ChatScreenState extends State<Chats> with AutomaticKeepAliveClientMixin {

  int _selectedIndex = 0;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar()
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (val) {
        setState(() {
          _selectedIndex = val;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'People'),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
            label: 'Calls'
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      brightness: Brightness.dark,
      title: Text('chats'),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.search)
        )
      ],
    );
  }
}