/// _id : "PQFSEdCI88Dz"
/// content : "Through meditation and by giving full attention to one thing at a time, we can learn to direct attention where we choose."
/// author : "Eknath Easwaran"
/// tags : ["Famous Quotes"]
/// authorSlug : "eknath-easwaran"
/// length : 121
/// dateAdded : "2020-12-08"
/// dateModified : "2023-04-14"

class RandomQuotes {
  RandomQuotes({
    String? id,
    String? content,
    String? author,
    List<String>? tags,
    String? authorSlug,
    num? length,
    String? dateAdded,
    String? dateModified,}){
    _id = id;
    _content = content;
    _author = author;
    _tags = tags;
    _authorSlug = authorSlug;
    _length = length;
    _dateAdded = dateAdded;
    _dateModified = dateModified;
  }

  RandomQuotes.fromJson(dynamic json) {
    _id = json['_id'];
    _content = json['content'];
    _author = json['author'];
    _tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    _authorSlug = json['authorSlug'];
    _length = json['length'];
    _dateAdded = json['dateAdded'];
    _dateModified = json['dateModified'];
  }
  String? _id;
  String? _content;
  String? _author;
  List<String>? _tags;
  String? _authorSlug;
  num? _length;
  String? _dateAdded;
  String? _dateModified;
  RandomQuotes copyWith({  String? id,
    String? content,
    String? author,
    List<String>? tags,
    String? authorSlug,
    num? length,
    String? dateAdded,
    String? dateModified,
  }) => RandomQuotes(  id: id ?? _id,
    content: content ?? _content,
    author: author ?? _author,
    tags: tags ?? _tags,
    authorSlug: authorSlug ?? _authorSlug,
    length: length ?? _length,
    dateAdded: dateAdded ?? _dateAdded,
    dateModified: dateModified ?? _dateModified,
  );
  String? get id => _id;
  String? get content => _content;
  String? get author => _author;
  List<String>? get tags => _tags;
  String? get authorSlug => _authorSlug;
  num? get length => _length;
  String? get dateAdded => _dateAdded;
  String? get dateModified => _dateModified;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['content'] = _content;
    map['author'] = _author;
    map['tags'] = _tags;
    map['authorSlug'] = _authorSlug;
    map['length'] = _length;
    map['dateAdded'] = _dateAdded;
    map['dateModified'] = _dateModified;
    return map;
  }

}