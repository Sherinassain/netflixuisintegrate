import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixuis/Search/searchbloc/search_bloc.dart';
import 'package:netflixuis/core/di/injectable.dart';
import 'package:netflixuis/dbloc/downloads/downloads_bloc.dart';
import 'package:netflixuis/widgets/home_page.dart';
import 'package:netflixuis/widgets/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureinjection();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (ctx) => getit<DownloadsBloc>()),
      BlocProvider(create: (ctx)=>getit<SearchBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            backgroundColor: Colors.black,
            textTheme: TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                bodyText2: TextStyle(color: Colors.white)),
            appBarTheme: AppBarTheme(backgroundColor: constblack)),
        home: Home_page(),
      ),
    );
  }
}
