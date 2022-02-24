import 'dart:convert';

class Rate {
  double rate;
  int count;
  Rate({
    required this.rate,
    required this.count,
  });

  Rate copyWith({
    double? rate,
    int? count,
  }) {
    return Rate(
      rate: rate ?? this.rate,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'rate': rate,
      'count': count,
    };
  }

  factory Rate.fromMap(Map<String, dynamic> map) {
    return Rate(
      rate: map['rate']?.toDouble() ?? 0.0,
      count: map['count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Rate.fromJson(String source) => Rate.fromMap(json.decode(source));

  @override
  String toString() => 'Rate(rate: $rate, count: $count)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Rate && other.rate == rate && other.count == count;
  }

  @override
  int get hashCode => rate.hashCode ^ count.hashCode;
}
