import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mivro/models/message.dart'; // Corrected import to models/message.dart
import 'package:mivro/presentation/chat/model/message.dart';

import 'package:mivro/presentation/chat/provider/chat_history_provider.dart';// Corrected import to providers/chat_history_provider.dart

void main() {
  group('ChatHistoryNotifier', () {
    test('initial state contains default message', () {
      // arrange
      final container = ProviderContainer(); // New ProviderContainer instance
      final chatHistory = container.read(chatHistoryProvider.notifier);

      // assert
      expect(chatHistory, [
        const Message(text: 'Hello! How can I help you?', isUser: false),
      ]);
    });

    test('addMessage adds a new message to the state', () {
      // arrange
      final container = ProviderContainer(); // New ProviderContainer instance
      final notifier = container.read(chatHistoryProvider.notifier);
      const newMessage = Message(text: 'Hi there!', isUser: true);

      // act
      notifier.addMessage(newMessage);
      final chatHistory = container.read(chatHistoryProvider);

      // assert
      expect(chatHistory, [
        const Message(text: 'Hello! How can I help you?', isUser: false),
        newMessage,
      ]);
    });
  });
}
