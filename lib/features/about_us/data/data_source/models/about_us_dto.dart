class AboutUsDto {
  const AboutUsDto({required this.title, required this.description});

  factory AboutUsDto.fromMap(Map<String, dynamic> map) {
    return AboutUsDto(
      title: map['title']?.toString() ?? '',
      description: map['description']?.toString() ?? '',
    );
  }

  final String title;
  final String description;
}
