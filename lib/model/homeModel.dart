class HomeModel {
  List<Categories> categories;
  List<Data> data;
  List<Transact> transacts;
  List<BackgroundImages> backgroundImages;

  HomeModel(
      {this.categories, this.data, this.transacts, this.backgroundImages});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = new List<Categories>();
      json['categories'].forEach((v) {
        categories.add(new Categories.fromJson(v));
      });
    }
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    if (json['transacts'] != null) {
      transacts = new List<Transact>();
      json['transacts'].forEach((v) {
        transacts.add(new Transact.fromJson(v));
      });
    }
    if (json['background_images'] != null) {
      backgroundImages = new List<BackgroundImages>();
      json['background_images'].forEach((v) {
        backgroundImages.add(new BackgroundImages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categories != null) {
      data['categories'] = this.categories.map((v) => v.toJson()).toList();
    }
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    if (this.transacts != null) {
      data['transacts'] = this.transacts.map((v) => v.toJson()).toList();
    }
    if (this.backgroundImages != null) {
      data['background_images'] =
          this.backgroundImages.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  String name;
  String slug;
  String icon;

  Categories({this.name, this.slug, this.icon});

  Categories.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['icon'] = this.icon;
    return data;
  }
}

class Data {
  String type;
  List<Items> items;
  String title;
  String summary;
  int icon;
  bool twoLine;
  String seeAll;

  Data(
      {this.type,
        this.items,
        this.title,
        this.summary,
        this.icon,
        this.twoLine,
        this.seeAll});

  Data.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
    title = json['title'];
    summary = json['summary'];
    icon = json['icon'];
    twoLine = json['two_line'];
    seeAll = json['see_all'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['title'] = this.title;
    data['summary'] = this.summary;
    data['icon'] = this.icon;
    data['two_line'] = this.twoLine;
    data['see_all'] = this.seeAll;
    return data;
  }
}

class Items {
  String title;
  String image;
  String link;
  double minPrice;
  double price;
  String listingId;
  String createdSince;
  String updatedSince;
  Category category;
  String categorySlug;
  String slug;
  List<Attributes> attributes;
  String thumbnail;
  bool isSpam;
  bool isPremium;
  bool isVerified;
  String expiryDate;
  Null offer;
  bool isChatAllowed;
  bool isOffensive;
  bool isAuction;
  bool outKashmir;
  String locality;
  String city;
  int posted;
  Transact transact;
  bool inWishlist;

  Items(
      {this.title,
        this.image,
        this.link,
        this.minPrice,
        this.price,
        this.listingId,
        this.createdSince,
        this.updatedSince,
        this.category,
        this.categorySlug,
        this.slug,
        this.attributes,
        this.thumbnail,
        this.isSpam,
        this.isPremium,
        this.isVerified,
        this.expiryDate,
        this.offer,
        this.isChatAllowed,
        this.isOffensive,
        this.isAuction,
        this.outKashmir,
        this.locality,
        this.city,
        this.posted,
        this.transact,
        this.inWishlist});

  Items.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    link = json['link'];
    minPrice = json['min_price'];
    price = json['price'];
    listingId = json['listing_id'];
    createdSince = json['created_since'];
    updatedSince = json['updated_since'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    categorySlug = json['category_slug'];
    slug = json['slug'];
    if (json['attributes'] != null) {
      attributes = new List<Attributes>();
      json['attributes'].forEach((v) {
        attributes.add(new Attributes.fromJson(v));
      });
    }
    thumbnail = json['thumbnail'];
    isSpam = json['is_spam'];
    isPremium = json['is_premium'];
    isVerified = json['is_verified'];
    expiryDate = json['expiry_date'];
    offer = json['offer'];
    isChatAllowed = json['is_chat_allowed'];
    isOffensive = json['is_offensive'];
    isAuction = json['is_auction'];
    outKashmir = json['out_kashmir'];
    locality = json['locality'];
    city = json['city'];
    posted = json['posted'];
    transact = json['transact'] != null
        ? new Transact.fromJson(json['transact'])
        : null;
    inWishlist = json['in_wishlist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['image'] = this.image;
    data['link'] = this.link;
    data['min_price'] = this.minPrice;
    data['price'] = this.price;
    data['listing_id'] = this.listingId;
    data['created_since'] = this.createdSince;
    data['updated_since'] = this.updatedSince;
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    data['category_slug'] = this.categorySlug;
    data['slug'] = this.slug;
    if (this.attributes != null) {
      data['attributes'] = this.attributes.map((v) => v.toJson()).toList();
    }
    data['thumbnail'] = this.thumbnail;
    data['is_spam'] = this.isSpam;
    data['is_premium'] = this.isPremium;
    data['is_verified'] = this.isVerified;
    data['expiry_date'] = this.expiryDate;
    data['offer'] = this.offer;
    data['is_chat_allowed'] = this.isChatAllowed;
    data['is_offensive'] = this.isOffensive;
    data['is_auction'] = this.isAuction;
    data['out_kashmir'] = this.outKashmir;
    data['locality'] = this.locality;
    data['city'] = this.city;
    data['posted'] = this.posted;
    if (this.transact != null) {
      data['transact'] = this.transact.toJson();
    }
    data['in_wishlist'] = this.inWishlist;
    return data;
  }
}

class Category {
  String name;
  String slug;
  int id;
  String description;
  String icon;

  Category({this.name, this.slug, this.id, this.description, this.icon});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    id = json['id'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['id'] = this.id;
    data['description'] = this.description;
    data['icon'] = this.icon;
    return data;
  }
}

class Attributes {
  int id;
  String key;
  int keyId;
  String value;
  bool required;
  int ordering;
  String unit;

  Attributes(
      {this.id,
        this.key,
        this.keyId,
        this.value,
        this.required,
        this.ordering,
        this.unit});

  Attributes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    key = json['key'];
    keyId = json['key_id'];
    value = json['value'];
    required = json['required'];
    ordering = json['ordering'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['key'] = this.key;
    data['key_id'] = this.keyId;
    data['value'] = this.value;
    data['required'] = this.required;
    data['ordering'] = this.ordering;
    data['unit'] = this.unit;
    return data;
  }
}

class Transact {
  String name;
  int id;
  String slug;
  String labelSeller;
  String labelBuyer;
  String icon;
  String priceUnit;

  Transact(
      {this.name,
        this.id,
        this.slug,
        this.labelSeller,
        this.labelBuyer,
        this.icon,
        this.priceUnit});

  Transact.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    slug = json['slug'];
    labelSeller = json['label_seller'];
    labelBuyer = json['label_buyer'];
    icon = json['icon'];
    priceUnit = json['price_unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['label_seller'] = this.labelSeller;
    data['label_buyer'] = this.labelBuyer;
    data['icon'] = this.icon;
    data['price_unit'] = this.priceUnit;
    return data;
  }
}

class BackgroundImages {
  String title;
  String image;
  int id;

  BackgroundImages({this.title, this.image, this.id});

  BackgroundImages.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['image'] = this.image;
    data['id'] = this.id;
    return data;
  }
}