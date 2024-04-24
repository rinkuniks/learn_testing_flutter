import 'package:learn_testing/feature/qoute/services/quote_service.dart';
import 'package:mocktail/mocktail.dart';

//@GenerateMocks([QuoteService]) -> with mockito package
class MockQuoteService extends Mock implements QuoteService {}
