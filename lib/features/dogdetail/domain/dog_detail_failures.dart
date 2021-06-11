import 'package:flutter_clean_architecture/core/domain/failure.dart';

class DogDetailFailures extends Failure {
  static const DogDetailFailures REMOTE_CALL_FAILED = DogDetailFailures(1);

  const DogDetailFailures(int code) : super(code);
}
