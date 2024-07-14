import 'dart:convert';

RecipeModel recipeModelFromJson(String str) => RecipeModel.fromJson(json.decode(str));

String recipeModelToJson(RecipeModel data) => json.encode(data.toJson());

class RecipeModel {
    RecipeModel({
        required this.recipes,
        required this.total,
        required this.limit,
        required this.skip,
    });

    List<Recipe> recipes;
    int total;
    int limit;
    int skip;

    factory RecipeModel.fromJson(Map<dynamic, dynamic> json) => RecipeModel(
        recipes: List<Recipe>.from(json["recipes"].map((x) => Recipe.fromJson(x))),
        total: json["total"],
        limit: json["limit"],
        skip: json["skip"],
    );

    Map<dynamic, dynamic> toJson() => {
        "recipes": List<dynamic>.from(recipes.map((x) => x.toJson())),
        "total": total,
        "limit": limit,
        "skip": skip,
    };
}

class Recipe {
    Recipe({
        required this.cookTimeMinutes,
        required this.instructions,
        required this.image,
        required this.prepTimeMinutes,
        required this.caloriesPerServing,
        required this.rating,
        required this.mealType,
        required this.cuisine,
        required this.userId,
        required this.tags,
        required this.difficulty,
        required this.servings,
        required this.reviewCount,
        required this.name,
        required this.ingredients,
        required this.id,
    });

    int cookTimeMinutes;
    List<String> instructions;
    String image;
    int prepTimeMinutes;
    int caloriesPerServing;
    double rating;
    List<String> mealType;
    String cuisine;
    int userId;
    List<String> tags;
    String difficulty;
    int servings;
    int reviewCount;
    String name;
    List<String> ingredients;
    int id;

    factory Recipe.fromJson(Map<dynamic, dynamic> json) => Recipe(
        cookTimeMinutes: json["cookTimeMinutes"],
        instructions: List<String>.from(json["instructions"].map((x) => x)),
        image: json["image"],
        prepTimeMinutes: json["prepTimeMinutes"],
        caloriesPerServing: json["caloriesPerServing"],
        rating: json["rating"]?.toDouble(),
        mealType: List<String>.from(json["mealType"].map((x) => x)),
        cuisine: json["cuisine"],
        userId: json["userId"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        difficulty: json["difficulty"],
        servings: json["servings"],
        reviewCount: json["reviewCount"],
        name: json["name"],
        ingredients: List<String>.from(json["ingredients"].map((x) => x)),
        id: json["id"],
    );

    Map<dynamic, dynamic> toJson() => {
        "cookTimeMinutes": cookTimeMinutes,
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
        "image": image,
        "prepTimeMinutes": prepTimeMinutes,
        "caloriesPerServing": caloriesPerServing,
        "rating": rating,
        "mealType": List<dynamic>.from(mealType.map((x) => x)),
        "cuisine": cuisine,
        "userId": userId,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "difficulty": difficulty,
        "servings": servings,
        "reviewCount": reviewCount,
        "name": name,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
        "id": id,
    };
}
