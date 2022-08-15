import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:test_mvvm_base/screens/movie_screen.dart';
import 'package:test_mvvm_base/viewmodels/movie_list_view_model.dart';
import 'package:provider/provider.dart';

class WebViewContainer extends StatefulWidget {
  final url;
  WebViewContainer(this.url);
  @override
  createState() => _WebViewContainerState(this.url);
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  final _key = UniqueKey();
  _WebViewContainerState(this._url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: WebView(
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: _url,
              navigationDelegate: (navigation) {
                final host = Uri.parse(navigation.url).host;
                print(navigation.url);
                if (host.contains('localhost')) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangeNotifierProvider(
                          create: (context) => MovieListViewModel(),
                          child: MovieListPage(),
                        ),
                      ));

                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text(
                  //       'Blocking navigation to $host',
                  //     ),
                  //   ),
                  // );
                  // return NavigationDecision.prevent;
                }
                return NavigationDecision.navigate;
              },
            ))
          ],
        ));
  }
}
