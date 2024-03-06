class NotAuthenticatedError extends Error {
  @override
  String toString() {
    return Error.safeToString('User not authenticated');
  }
}
