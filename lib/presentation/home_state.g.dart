// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeState on HomeStateBase, Store {
  late final _$solarActivitiesAtom =
      Atom(name: 'HomeStateBase.solarActivities', context: context);

  @override
  SolarActivities? get solarActivities {
    _$solarActivitiesAtom.reportRead();
    return super.solarActivities;
  }

  @override
  set solarActivities(SolarActivities? value) {
    _$solarActivitiesAtom.reportWrite(value, super.solarActivities, () {
      super.solarActivities = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'HomeStateBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$pageAtom = Atom(name: 'HomeStateBase.page', context: context);

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$getSolarActivitiesAsyncAction =
      AsyncAction('HomeStateBase.getSolarActivities', context: context);

  @override
  Future<void> getSolarActivities() {
    return _$getSolarActivitiesAsyncAction
        .run(() => super.getSolarActivities());
  }

  late final _$HomeStateBaseActionController =
      ActionController(name: 'HomeStateBase', context: context);

  @override
  void setPage(int page) {
    final _$actionInfo = _$HomeStateBaseActionController.startAction(
        name: 'HomeStateBase.setPage');
    try {
      return super.setPage(page);
    } finally {
      _$HomeStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
solarActivities: ${solarActivities},
isLoading: ${isLoading},
page: ${page}
    ''';
  }
}
