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
    code: json["code"],
    caption: json["caption"],
    fullCaption: json["fullCaption"],
    sort: json["sort"],
    group: json["group"],
    initialValue: json["initial_value"],
    regExp: json["regExp"],
    required: json["required"],
    type: json["type"],
    values: (json["values"] as List<dynamic>?) ?? [],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "caption": caption,
    "fullCaption": fullCaption,
    "sort": sort,
    "group": group,
    "initial_value": initialValue,
    "regExp": regExp,
    "required": required,
    "type": type,
    "values": values
  };
}