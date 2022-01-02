import 'dart:convert';

import 'package:collection/collection.dart';

class ServerState {
  final List<String> ip;
  final int port;
  final int connection;

  ServerState(
    this.ip,
    this.port, [
    this.connection = 0,
  ]);

  ServerState copyWith({
    List<String>? ip,
    int? port,
    int? connection,
  }) {
    return ServerState(
      ip ?? this.ip,
      port ?? this.port,
      connection ?? this.connection,
    );
  }

  @override
  String toString() =>
      'ServerStatus(ip: $ip, port: $port, connection: $connection)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is ServerState &&
        listEquals(other.ip, ip) &&
        other.port == port &&
        other.connection == connection;
  }

  @override
  int get hashCode => ip.hashCode ^ port.hashCode ^ connection.hashCode;
}
