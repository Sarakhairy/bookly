import 'package:bookly/Core/errors/failures.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures,List<BookModel>>>fetchNewestBooks();
  Future<Either<Failures,List<BookModel>>>fetchFeaturedBooks();
  Future<Either<Failures,List<BookModel>>>fetchSimilarBooks({required String category});
  Future<Either<Failures,List<BookModel>>>search({required String bookName});
}
