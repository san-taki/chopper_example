import 'package:cached_network_image/cached_network_image.dart';
import 'package:chopper_example/models/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chopper_example/books_state.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      _buildAppbar(),
      ...context
          .select<BooksState, dynamic>((state) => state.books)
          .map((article) => _buildArticle(context, article))
          .toList(),
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

  Widget _buildArticle(BuildContext context, Book book) {
    return SliverToBoxAdapter(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 140,
            padding: EdgeInsets.only(left: 8, top: 2, right: 8, bottom: 2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: CachedNetworkImage(
                      imageUrl: book.summary.cover,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              CircularProgressIndicator(
                                  value: downloadProgress.progress),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            book.summary.title,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            book.summary.publisher,
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
                      onTap: () => context
                          .read<BooksStateNotifier>()
                          .favorite(book.summary.isbn),
                      child: _buildFavoriteIcon(book),
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

  Widget _buildFavoriteIcon(Book book) {
    if (book.summary.isFavorite) {
      return Icon(
        Icons.favorite,
        color: Colors.red,
        size: 22,
      );
    } else {
      return Icon(
        Icons.favorite_border,
        size: 22,
      );
    }
  }
}
