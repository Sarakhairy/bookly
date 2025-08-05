import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Features/home/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(ApiService(Dio())),
  );
}
