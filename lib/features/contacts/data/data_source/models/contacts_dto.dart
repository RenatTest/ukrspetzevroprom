class ContactsDto {
  const ContactsDto({
    required this.title,
    required this.description,
    required this.email,
    required this.phone,
    required this.telegram,
    required this.viber,
  });

  factory ContactsDto.fromMap(Map<String, dynamic> map) {
    return ContactsDto(
      title: map['title']?.toString() ?? '',
      description: map['description']?.toString() ?? '',
      email: map['email']?.toString() ?? '',
      phone: map['phone']?.toString() ?? '',
      telegram: map['telegram']?.toString() ?? '',
      viber: map['viber']?.toString() ?? '',
    );
  }

  final String title;
  final String description;
  final String email;
  final String phone;
  final String telegram;
  final String viber;
}
