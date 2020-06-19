import 'package:chopper_example/models/article.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chopper_example',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> _articles;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => fetchData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return CustomScrollView(slivers: <Widget>[
      _buildAppbar(),
      ..._articles.map((article) => _buildArticle(article)).toList(),
    ]);
  }

  Widget _buildAppbar() {
    return const SliverAppBar(
      floating: true,
      pinned: false,
      snap: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('Chopper example'),
      ),
    );
  }

  Widget _buildArticle(Article article) {
    return SliverToBoxAdapter(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: onArticlePressed,
          child: Container(
            height: 70,
            padding: EdgeInsets.only(left: 8, top: 2, right: 8, bottom: 2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            article.title,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "description",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: onFavoritePressed,
                      child: Icon(
                        Icons.favorite_border,
                        size: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onArticlePressed() {
    print("onArticlePressed");
  }

  void onFavoritePressed() {
    print("onFavoritePressed");
  }

  fetchData() {
    setState(() {
      _articles = [
        Article("test1", false),
        Article("test2", false),
        Article("test3", false),
        Article("test4", false),
        Article("test5", false),
        Article("test6", false),
        Article("test7", false),
        Article("test8", false),
        Article("test9", false),
        Article("test10", false),
        Article("test11", false),
      ];
    });
  }
}
