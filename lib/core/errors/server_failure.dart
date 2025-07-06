import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:sindhri/core/errors/failure.dart';

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  /// للتعامل مع HTTP responses (لو احتجتها لاحقًا)
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Your request was not found, please try again later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error, please try again later!");
    } else {
      return ServerFailure("Oops, there was an error. Please try again later!");
    }
  }

  /// للتعامل مع Firebase/FirebaseException
  factory ServerFailure.fromFirebaseException(FirebaseException e) {
    return ServerFailure(e.message ?? "Unexpected Firebase error occurred.");
  }

  /// للتعامل مع PlatformException
  factory ServerFailure.fromPlatformException(PlatformException e) {
    return ServerFailure(e.message ?? "A platform error occurred.");
  }
}
