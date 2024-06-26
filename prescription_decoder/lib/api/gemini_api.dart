import 'package:google_generative_ai/google_generative_ai.dart';

void main() async{
  final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
  final prompt = 'Write a story about a magic backpack.';
  final content = [Content.text(prompt)];
  final response = await model.generateContent(content);
  print(response.text);
}
