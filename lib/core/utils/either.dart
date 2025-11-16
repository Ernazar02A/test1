class Either<L, R> {
  final L? _left;
  final R? _right;

  const Either._(this._left, this._right);

  bool get isLeft => _left != null;
  bool get isRight => _right != null;

  L get left {
    if (_left != null) return _left;
    throw Exception('Called left on a Right Either');
  }

  R get right {
    if (_right != null) return _right;
    throw Exception('Called right on a Left Either');
  }

  factory Either.left(L value) => Either<L, R>._(value, null);
  factory Either.right(R value) => Either<L, R>._(null, value);

  T fold<T>(T Function(L) ifLeft, T Function(R) ifRight) {
    if (isLeft) return ifLeft(left);
    return ifRight(right);
  }

  Either<L, T> map<T>(T Function(R) f) {
    if (isRight) return Either<L, T>.right(f(right));
    return Either<L, T>.left(left);
  }

  Either<L, T> flatMap<T>(Either<L, T> Function(R) f) {
    if (isRight) return f(right);
    return Either<L, T>.left(left);
  }
}