// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'chroma_counter_state.dart';

class ChromaCounterStateMapper extends ClassMapperBase<ChromaCounterState> {
  ChromaCounterStateMapper._();

  static ChromaCounterStateMapper? _instance;
  static ChromaCounterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChromaCounterStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ChromaCounterState';

  static Color _$backgroundColor(ChromaCounterState v) => v.backgroundColor;
  static const Field<ChromaCounterState, Color> _f$backgroundColor =
      Field('backgroundColor', _$backgroundColor, opt: true, def: Colors.blue);
  static BorderRadius _$borderRadius(ChromaCounterState v) => v.borderRadius;
  static const Field<ChromaCounterState, BorderRadius> _f$borderRadius =
      Field('borderRadius', _$borderRadius, opt: true, def: BorderRadius.zero);
  static int _$count(ChromaCounterState v) => v.count;
  static const Field<ChromaCounterState, int> _f$count =
      Field('count', _$count, opt: true, def: 0);
  static int _$milestone(ChromaCounterState v) => v.milestone;
  static const Field<ChromaCounterState, int> _f$milestone =
      Field('milestone', _$milestone, mode: FieldMode.member);

  @override
  final MappableFields<ChromaCounterState> fields = const {
    #backgroundColor: _f$backgroundColor,
    #borderRadius: _f$borderRadius,
    #count: _f$count,
    #milestone: _f$milestone,
  };

  static ChromaCounterState _instantiate(DecodingData data) {
    return ChromaCounterState(
        backgroundColor: data.dec(_f$backgroundColor),
        borderRadius: data.dec(_f$borderRadius),
        count: data.dec(_f$count));
  }

  @override
  final Function instantiate = _instantiate;

  static ChromaCounterState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChromaCounterState>(map);
  }

  static ChromaCounterState fromJson(String json) {
    return ensureInitialized().decodeJson<ChromaCounterState>(json);
  }
}

mixin ChromaCounterStateMappable {
  String toJson() {
    return ChromaCounterStateMapper.ensureInitialized()
        .encodeJson<ChromaCounterState>(this as ChromaCounterState);
  }

  Map<String, dynamic> toMap() {
    return ChromaCounterStateMapper.ensureInitialized()
        .encodeMap<ChromaCounterState>(this as ChromaCounterState);
  }

  ChromaCounterStateCopyWith<ChromaCounterState, ChromaCounterState,
          ChromaCounterState>
      get copyWith => _ChromaCounterStateCopyWithImpl<ChromaCounterState,
          ChromaCounterState>(this as ChromaCounterState, $identity, $identity);
  @override
  String toString() {
    return ChromaCounterStateMapper.ensureInitialized()
        .stringifyValue(this as ChromaCounterState);
  }

  @override
  bool operator ==(Object other) {
    return ChromaCounterStateMapper.ensureInitialized()
        .equalsValue(this as ChromaCounterState, other);
  }

  @override
  int get hashCode {
    return ChromaCounterStateMapper.ensureInitialized()
        .hashValue(this as ChromaCounterState);
  }
}

extension ChromaCounterStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChromaCounterState, $Out> {
  ChromaCounterStateCopyWith<$R, ChromaCounterState, $Out>
      get $asChromaCounterState => $base.as(
          (v, t, t2) => _ChromaCounterStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChromaCounterStateCopyWith<$R, $In extends ChromaCounterState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({Color? backgroundColor, BorderRadius? borderRadius, int? count});
  ChromaCounterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ChromaCounterStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChromaCounterState, $Out>
    implements ChromaCounterStateCopyWith<$R, ChromaCounterState, $Out> {
  _ChromaCounterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChromaCounterState> $mapper =
      ChromaCounterStateMapper.ensureInitialized();
  @override
  $R call({Color? backgroundColor, BorderRadius? borderRadius, int? count}) =>
      $apply(FieldCopyWithData({
        if (backgroundColor != null) #backgroundColor: backgroundColor,
        if (borderRadius != null) #borderRadius: borderRadius,
        if (count != null) #count: count
      }));
  @override
  ChromaCounterState $make(CopyWithData data) => ChromaCounterState(
      backgroundColor: data.get(#backgroundColor, or: $value.backgroundColor),
      borderRadius: data.get(#borderRadius, or: $value.borderRadius),
      count: data.get(#count, or: $value.count));

  @override
  ChromaCounterStateCopyWith<$R2, ChromaCounterState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChromaCounterStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
