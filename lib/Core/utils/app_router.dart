import 'package:bookly/Core/utils/service_locator.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_imp.dart';
import 'package:bookly/Features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/view_models/search_cubit/search_cubit.dart';

import 'package:bookly/Features/search/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: '/homeview', builder: (context, state) => HomeView()),
      GoRoute(path: '/bookdetails', builder: (context, state) => BlocProvider(
        create: (context)=> SimilarBooksCubit(getIt.get<HomeRepoImp>()),
        child: BookDetailsView(bookModel: state.extra as BookModel,),

      )),
      GoRoute(path: '/searchview', builder: (context, state) => BlocProvider(create: (context) => SearchCubit(getIt.get<HomeRepoImp>()),
      child : SearchView())),

      ],
  );
}
