import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("뮤직앱",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary)),
          centerTitle: true,
          bottom: TabBar(
            controller: _controller,
            tabs: [
              Tab(
                icon: Icon(Icons.music_note),
                text: "아티스트",
              ),
              Tab(
                icon: Icon(Icons.movie),
                text: "앨범",
              ),
              Tab(
                icon: Icon(Icons.book),
                text: "노래",
              ),
            ],
          ),
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: TabBarView(
            controller: _controller,
            children: [
              TabContent(
                title: "아티스트",
                items: [
                  ContentItem(
                      name: "콜드플레이1", icon: Icons.group, description: "임시플레이어"),
                  ContentItem(
                      name: "콜드플레이2", icon: Icons.group, description: "임시플레이어2")
                ],
              ),
              TabContent(
                title: "앨범",
                items: [
                  ContentItem(
                      name: "앨범1", icon: Icons.album, description: "앨범입니닿ㅎㅎㅎ"),
                  ContentItem(
                      name: "앨범2", icon: Icons.album, description: "앨범내줘")
                ],
              ),
              TabContent(
                title: "노래",
                items: [
                  ContentItem(
                      name: "노래1", icon: Icons.note, description: "겁쟁이"),
                  ContentItem(name: "노래2", icon: Icons.note, description: "가시")
                ],
              )
            ],
          ),
        ));
  }
}

class TabContent extends StatelessWidget {
  final String title;
  final List<ContentItem> items;

  const TabContent({Key? key, required this.title, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 6),
            child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(5)),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  leading: Icon(
                    items[index].icon,
                    size: 25,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  title: Text(
                    items[index].name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inverseSurface),
                  ),
                  subtitle: Text(items[index].description),
                  trailing: Icon(Icons.chevron_right,
                      color: Theme.of(context).colorScheme.inverseSurface),
                  // 화살표 표시
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).canvasColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)
                              )
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        items[index].icon,
                                        size: 30,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        items[index].name,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    items[index].description,
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                )),
          );
        });
  }
}

class ContentItem {
  final String name;
  final IconData icon;
  final String description;

  ContentItem(
      {required this.name, required this.icon, required this.description});
}
