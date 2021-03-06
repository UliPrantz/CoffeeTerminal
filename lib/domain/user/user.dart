import 'package:equatable/equatable.dart';

class User with EquatableMixin {
  final String? uuid;
  final String tokenId;
  final DateTime? creationDate;
  final int balance;
  final String? username;

  User({
    this.uuid,
    required this.tokenId,
    this.creationDate,
    required this.balance,
    this.username,
  });

  User.empty({String? tokenId}) : this(
    tokenId: tokenId ?? "",
    balance: 0,
  );

  User copyWith({
    final String? uuid,
    final String? tokenId,
    final DateTime? creationDate,
    final int? balance,
    final String? username,
  }) {
    return User(
      uuid: uuid ?? this.uuid,
      tokenId: tokenId ?? this.tokenId,
      creationDate: creationDate ?? this.creationDate,
      balance: balance ?? this.balance,
      username: username ?? this.username,
    );
  }

  @override
  List<Object?> get props => [uuid, tokenId, creationDate, balance, username];
}