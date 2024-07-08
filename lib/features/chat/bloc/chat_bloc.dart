import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatInitial()) {
    on<InitializeChatEvent>(_iniaializeChat);
  }

  FutureOr<void> _iniaializeChat(
      InitializeChatEvent event, Emitter<ChatState> emit) {
    emit(ChatLoading());

    final model = FirebaseVertexAI.instance.generativeModel(model:"gemini-1.5-flash" );
  }
}
