import 'package:json_annotation/json_annotation.dart';

part 'my_points.g.dart';

@JsonSerializable()
class PointsRank extends Object {
  @JsonKey(name: 'curPage')
  int curPage;

  @JsonKey(name: 'datas')
  List<UserPoints> datas;

  @JsonKey(name: 'offset')
  int offset;

  @JsonKey(name: 'over')
  bool over;

  @JsonKey(name: 'pageCount')
  int pageCount;

  @JsonKey(name: 'size')
  int size;

  @JsonKey(name: 'total')
  int total;

  PointsRank(
    this.curPage,
    this.datas,
    this.offset,
    this.over,
    this.pageCount,
    this.size,
    this.total,
  );

  factory PointsRank.fromJson(Map<String, dynamic> srcJson) =>
      _$PointsRankFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PointsRankToJson(this);
}

@JsonSerializable()
class UserPoints extends Object {
  @JsonKey(name: 'coinCount')
  int coinCount;

  @JsonKey(name: 'level')
  int level;

  @JsonKey(name: 'rank')
  int rank;

  @JsonKey(name: 'userId')
  int userId;

  @JsonKey(name: 'username')
  String username;

  UserPoints(
    this.coinCount,
    this.level,
    this.rank,
    this.userId,
    this.username,
  );

  factory UserPoints.fromJson(Map<String, dynamic> srcJson) =>
      _$UserPointsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserPointsToJson(this);
}
