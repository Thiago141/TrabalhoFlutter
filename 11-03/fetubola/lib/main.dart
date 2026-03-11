import 'package:fetubola/models/news.dart';
import 'package:fetubola/ui/screens/news_details_screen.dart';
import 'package:fetubola/ui/widgets/custom_app_bar.dart';
import 'package:fetubola/ui/widgets/search_widget.dart';
import 'package:fetubola/utils/app_style.dart';
import 'package:flutter/material.dart';

//TODO: Adicionar um sistema de busca para filtrar as notícias por título ou conteúdo.
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Renderizou');

    final List<News> news = [
      News(
        title: 'Notícia 1',
        content:
            'Conteúdo da notícia 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        imageUrl: 'https://placehold.co/600x400.png',
        imageDescription: 'Imagem de exemplo para a notícia 1',
        newsAuthor: 'Autor da notícia 1',
      ),
      News(
        title: 'Notícia 2',
        content:
            'Conteúdo da notícia 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        imageUrl: 'https://placehold.co/600x400.png',
        imageDescription: 'Imagem de exemplo para a notícia 2',
        newsAuthor: 'Autor da notícia 2',
      ),
      News(
        title: 'Notícia 3',
        content:
            'Conteúdo da notícia 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        imageUrl: 'https://placehold.co/600x400.png',
        imageDescription: 'Imagem de exemplo para a notícia 3',
        newsAuthor: 'Autor da notícia 3',
      ),
      News(
        title: 'Notícia 4',
        content:
            'Conteúdo da notícia 4.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        imageUrl: 'https://placehold.co/600x400.png',
        imageDescription: 'Imagem de exemplo para a notícia 4',
        newsAuthor: 'Autor da notícia 4',
      ),
      News(
        title: 'Notícia 5',
        content:
            'Conteúdo da notícia 5. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        imageUrl: 'https://placehold.co/600x400.png',
        imageDescription: 'Imagem de exemplo para a notícia 5',
        newsAuthor: 'Autor da notícia 5',
      ),
      News(
        title: 'Notícia 6',
        content:
            'Conteúdo da notícia 6. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        imageUrl: 'https://placehold.co/600x400.png',
        imageDescription: 'Imagem de exemplo para a notícia 6',
        newsAuthor: 'Autor da notícia 6',
      ),
      News(
        title: 'Notícia 7',
        content:
            'Conteúdo da notícia 7. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        imageUrl: 'https://placehold.co/600x400.png',
        imageDescription: 'Imagem de exemplo para a notícia 7',
        newsAuthor: 'Autor da notícia 7',
      ),
      News(
        title: 'Notícia 8',
        content:
            'Conteúdo da notícia 8. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        imageUrl: 'https://placehold.co/600x400.png',
        imageDescription: 'Imagem de exemplo para a notícia 8',
        newsAuthor: 'Autor da notícia 8',
      ),
      News(
        title: 'Notícia 9',
        content:
            'Conteúdo da notícia 9. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        imageUrl: 'https://placehold.co/600x400.png',
        imageDescription: 'Imagem de exemplo para a notícia 9',
        newsAuthor: 'Autor da notícia 9',
      ),
      News(
        title: 'Notícia 10',
        content:
            'Conteúdo da notícia 10. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        imageUrl: 'https://placehold.co/600x400.png',
        imageDescription: 'Imagem de exemplo para a notícia 10',
        newsAuthor: 'Autor da notícia 10',
      ),
      News(
        title: 'Notícia 11',
        content:
            'Conteúdo da notícia 11. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        imageUrl: 'https://placehold.co/600x400.png',
        imageDescription: 'Imagem de exemplo para a notícia 11',
        newsAuthor: 'Autor da notícia 11',
      ),
      News(
        title: 'Notícia 12',
        content:
            'Conteúdo da notícia 12.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        imageUrl: 'https://placehold.co/600x400.png',
        imageDescription: 'Imagem de exemplo para a notícia 12',
        newsAuthor: 'Autor da notícia 12',
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScaffold(news: news),
    );
  }
}

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({super.key, required this.news});

  final List<News> news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Futebola'),
      body: Padding(
        padding: AppStyle.screenPadding,
        child: Column(
          children: [
            Row(
              children: [
                Text('Últimas Notícias', style: AppStyle.sectionTitleStyle),
                SearchWidget(),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: news.length,
                itemBuilder: (context, index) {
                  return ListTileCard(news: news, index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListTileCard extends StatelessWidget {
  final int index;
  const ListTileCard({super.key, required this.news, required this.index});

  final List<News> news;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(news[index].title, style: AppStyle.listTileTitleStyle),
        subtitle: Text(
          news[index].content,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        leading: Image.network(news[index].imageUrl),
        trailing: IconButton(
          onPressed: () {
            // Navegar para a tela de detalhes da notícia
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewsDetailsScreen(news: news[index]),
              ),
            );
          },
          icon: Icon(Icons.arrow_right),
        ),
      ),
    );
  }
}
