class MySoftwares {
  // Essential properties
  final String title;
  final String? subtitle;

  // Image properties
  final String mainImageUrl;
  final List<String>? allImages;

  // Duration property
  final double hours;

  // User interaction properties
    List<String>? comments = [];
  int? likes = 0;
  int? sales = 0;
  int? views = 0;

  // Script details
  final String description;
  final String category;
  final String version;
  final double price; // Consider using dart:math for currency formatting

  // User interaction // List of individual user ratings
  final bool isAvailableInStock;

  // Additional considerations
  final String? author;
  final String? supportUrl;
  final String? license;
  final List<String>? features;
  final String? documentation;

  // Constructor (consider adding optional parameters)
  MySoftwares({
    required this.title,
    this.subtitle,
    required this.mainImageUrl,
    this.allImages,
    required this.hours,
    required this.description,
    required this.category,
    required this.version,
    required this.price,
    required this.isAvailableInStock,
    this.documentation, this.comments, this.likes,this.author,this.features,this.license,this.sales,this.supportUrl,this.views,
  });

  // Methods (add methods for specific functionalities)
  void addComment(String comment) {
    comments?.add(comment);
  }



  // Example method for calculating estimated duration (customize if needed)


  // Manual toJson method
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'mainImageUrl': mainImageUrl,
      'allImages': allImages,
      'hours': hours,
      'comments': comments,
      'likes': likes,
      'sales': sales,
      'views': views,
      'description': description,
      'category': category,
      'version': version,
      'price': price,
      'isAvailableInStock': isAvailableInStock,
      'author': author,
      'supportUrl': supportUrl,
      'license': license,
      'features': features,
      'documentation': documentation,
    };
  }

  // Manual fromJson method
  factory MySoftwares.fromJson(Map<String, dynamic> json) {
    return MySoftwares(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      mainImageUrl: json['mainImageUrl'] as String,
      allImages: json['allImages'] as List<String>?,
      hours: json['hours'] as double,
      comments: (json['comments'] as List).cast<String>() ?? [],
      likes: json['likes'] as int,
      sales: json['sales'] as int,
      views: json['views'] as int,
      description: json['description'] as String,
      category: json['category'] as String,
      version: json['version'] as String,
      price: json['price'] as double,
      isAvailableInStock: json['isAvailableInStock'] as bool,
      author: json['author'] as String?,
      supportUrl: json['supportUrl'] as String?,
      license: json['license'] as String?,
      features: json['features'] as List<String>?,
      documentation: json['documentation'] as String?,
    );
  }
}
