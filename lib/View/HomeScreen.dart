import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Data/Response/Status.dart';
import '../Utils/Routes/RoutesName.dart';
import '../ViewModel/HomeViewModel.dart';
import '../ViewModel/UserViewModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeViewModel>(context, listen: false).fetchMoviesListApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    final userPreference = Provider.of<UserViewModel>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Product List',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: CupertinoColors.activeGreen,
        actions: [
          InkWell(
            onTap: () {
              userPreference.removeUser().then((value) {
                Navigator.pushNamedAndRemoveUntil(
                    context, RoutesName.login, (route) => false);
              });
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Center(
                  child: Text('Logout',
                      style: TextStyle(color: Colors.white, fontSize: 16))),
            ),
          ),
        ],
      ),
      body: Consumer<HomeViewModel>(
        builder: (context, viewModel, _) {
          switch (viewModel.moviesList.status) {
            case Status.LOADING:
              return const Center(child: CircularProgressIndicator());

            case Status.ERROR:
              return Center(
                  child: Text(viewModel.moviesList.message.toString()));

            case Status.COMPLETED:
              if (viewModel.moviesList.data?.movies == null ||
                  viewModel.moviesList.data!.movies!.isEmpty) {
                return const Center(child: Text('No products found.'));
              }

              return ListView.builder(
                itemCount: viewModel.moviesList.data!.movies!.length,
                itemBuilder: (context, index) {
                  final movie = viewModel.moviesList.data!.movies![index];
                  return Card(
                    margin:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    child: ListTile(
                      leading: Image.network(
                        movie.thumbnail ?? '',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.error_outline,
                              color: Colors.red);
                        },
                      ),
                      title: Text(movie.title ?? ''),
                      subtitle: Text(movie.description ?? ''),
                      trailing: Text('Rs. ${movie.price.toString()}'),
                    ),
                  );
                },
              );

            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
