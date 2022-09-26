class Planets {
  late final int id;
  late final String name;
  late final int age;
  late final int distancefromsun;

  Planets({
    required this.id,
    required this.name,
    required this.age,
    required this.distancefromsun,
  });
 
  Planets.fromMap(Map<String, dynamic> result)
      : id = result["id"],
        name = result["name"],
        age = result["age"],
        distancefromsun = result["distancefromsun"];
  Map<String, Object> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'distancefromsun': distancefromsun
    };
  }
}
