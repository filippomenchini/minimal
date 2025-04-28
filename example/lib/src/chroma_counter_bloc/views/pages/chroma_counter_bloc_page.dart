import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../bloc/chroma_counter_bloc.dart';
import '../bloc/chroma_counter_event.dart';
import '../bloc/chroma_counter_state.dart';
import '../widgets/chroma_counter.dart';

class ChromaCounterBlocPage extends StatelessWidget {
  const ChromaCounterBlocPage({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider(
      create: (final _) => ChromaCounterBloc(),
      child: const _ChromaCounterBlocPage(),
    );
  }
}

class _ChromaCounterBlocPage extends StatelessWidget {
  const _ChromaCounterBlocPage();

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chroma Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 32,
          children: [
            const _SelectedCount(),
            const ChromaCounter(),
            ElevatedButton(
              onPressed: () {
                unawaited(
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (final bottomSheetContext) => BlocProvider.value(
                      value: BlocProvider.of<ChromaCounterBloc>(context),
                      child: const _BottomSheetContent(),
                    ),
                    isScrollControlled: true,
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.9,
                    ),
                    useSafeArea: true,
                  ),
                );
              },
              child: const Text('Reveal'),
            ),
          ],
        ),
      ),
      floatingActionButton: const _Button(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class _SelectedCount extends StatelessWidget {
  const _SelectedCount();
  static final _formatter = DateFormat('mm:ss');

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<ChromaCounterBloc, ChromaCounterState>(
      builder: (final context, final state) {
        final now = _formatter.format(DateTime.now());
        return Text(
          'Selected: ${state.milestone} at $now',
          style: Theme.of(context).textTheme.titleMedium,
        );
      },
    );
  }
}

class _BottomSheetContent extends StatelessWidget {
  const _BottomSheetContent();

  @override
  Widget build(final BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 400,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: ChromaCounter(),
          ),
          Positioned(
            right: 16,
            bottom: 32,
            child: _Button(),
          ),
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button();

  @override
  Widget build(final BuildContext context) {
    return FloatingActionButton(
      onPressed: () =>
          context.read<ChromaCounterBloc>().add(const ChromaCounterNextButtonPressed()),
      child: const Icon(Icons.refresh),
    );
  }
}
