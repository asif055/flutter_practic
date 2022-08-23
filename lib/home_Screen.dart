import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // static final String id = 'home_Screen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp UI'),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('CHATS'),
            ),
            Tab(
              child: Text('STATUS'),
            ),
            Tab(
              child: Text('CALLS'),
            )
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10.0),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: '1',
                  child: Text('New Group'),
                ),
                const PopupMenuItem(
                  value: '2',
                  child: Text('Setting'),
                ),
                const PopupMenuItem(
                  value: '3',
                  child: Text('Logout'),
                )
              ],
            ),
            const SizedBox(width: 10)
          ],
        ),
        body: TabBarView(children: [
          const Text('Camera'),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg')),
                  title: const Text('Asif'),
                  subtitle: Row(
                    children: [
                      Icon(
                          index % 2 == 1 ? Icons.done_all_rounded : Icons.done),
                      const SizedBox(width: 10),
                      const Text('How are you friend'),
                    ],
                  ),
                  trailing: const Text('4:30 pm'),
                );
              }),
          ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg'),
                  ),
                  title: Text('Zahid Afridi'),
                  subtitle: Text('Today, 3:19 pm'),
                );
              }),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg')),
                  title: const Text('Asif'),
                  subtitle: Row(
                    children: [
                      Icon(index % 2 == 0
                          ? Icons.call_received
                          : Icons.call_made_outlined),
                      const SizedBox(width: 10),
                      Text(index % 2 == 0
                          ? 'Today, 2:56 pm'
                          : '7 Agust, 11:24 am'),
                    ],
                  ),
                  trailing: Icon(index % 2 == 1 ? Icons.call : Icons.videocam),
                );
              }),
        ]),
      ),
    );
  }
}
