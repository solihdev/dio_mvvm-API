class FieldsModel {
  FieldsModel({
    required this.code,
    required this.caption,
    required this.fullCaption,
    required this.sort,
    required this.group,
    required this.initialValue,
    required this.regExp,
    required this.required,
    required this.type,
    required this.values,
  });

  final String code;
  final String caption;
  final String fullCaption;
  final int sort;
  final String group;
  final String initialValue;
  final String regExp;
  final bool required;
  final String type;
  final List<dynamic> values;

  factory FieldsModel.fromJson(Map<String, dynamic> json) => FieldsModel(
        code: json["code"] as String? ?? "",
        caption: json["caption"] as String? ?? "",
        fullCaption: json["fullCaption"] as String? ?? "",
        sort: json["sort"] as int? ?? 0,
        group: json["group"] as String? ?? "",
        initialValue: json["initial_value"] as String? ?? "",
        regExp: json["regExp"] as String? ?? "",
        required: json["required"] as bool? ?? false,
        type: json["type"] as String? ?? "",
        values: (json["values"] as List<dynamic>?) ?? [],
      );
}
