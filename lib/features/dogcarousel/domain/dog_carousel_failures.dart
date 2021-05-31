import 'package:flutter_clean_architecture/core/domain/failure.dart';

class DogCarouselFailures extends Failure {
  static const DogCarouselFailures REMOTE_CALL_FAILED = DogCarouselFailures(1);

  const DogCarouselFailures(int code) : super(code);
}
