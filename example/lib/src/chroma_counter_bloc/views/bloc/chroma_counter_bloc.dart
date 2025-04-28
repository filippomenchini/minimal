import 'dart:math' as math;
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'chroma_counter_event.dart';
import 'chroma_counter_state.dart';

class ChromaCounterBloc extends Bloc<ChromaCounterEvent, ChromaCounterState> {
  ChromaCounterBloc() : super(const ChromaCounterState()) {
    on<ChromaCounterEvent>(_onNextButtonPressed);
  }

  static final _random = math.Random();

  void _onNextButtonPressed(
    final ChromaCounterEvent event,
    final Emitter<ChromaCounterState> emit,
  ) =>
      emit(
        state.copyWith(
          count: state.count + 1,
          backgroundColor: _randomColor(),
          borderRadius: _randomRadius(),
        ),
      );

  Color _randomColor() => Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1,
      );

  BorderRadius _randomRadius() => BorderRadius.only(
        topLeft: Radius.circular(_random.nextDouble() * 100),
        topRight: Radius.circular(_random.nextDouble() * 100),
        bottomLeft: Radius.circular(_random.nextDouble() * 100),
        bottomRight: Radius.circular(_random.nextDouble() * 100),
      );
}
