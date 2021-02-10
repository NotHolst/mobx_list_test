// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PetStore on _PetStoreBase, Store {
  final _$petsAtom = Atom(name: '_PetStoreBase.pets');

  @override
  ObservableList<Pet> get pets {
    _$petsAtom.reportRead();
    return super.pets;
  }

  @override
  set pets(ObservableList<Pet> value) {
    _$petsAtom.reportWrite(value, super.pets, () {
      super.pets = value;
    });
  }

  final _$_PetStoreBaseActionController =
      ActionController(name: '_PetStoreBase');

  @override
  dynamic addPet(Pet pet) {
    final _$actionInfo = _$_PetStoreBaseActionController.startAction(
        name: '_PetStoreBase.addPet');
    try {
      return super.addPet(pet);
    } finally {
      _$_PetStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removePet(Pet pet) {
    final _$actionInfo = _$_PetStoreBaseActionController.startAction(
        name: '_PetStoreBase.removePet');
    try {
      return super.removePet(pet);
    } finally {
      _$_PetStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic nameHimFrank(Pet pet) {
    final _$actionInfo = _$_PetStoreBaseActionController.startAction(
        name: '_PetStoreBase.nameHimFrank');
    try {
      return super.nameHimFrank(pet);
    } finally {
      _$_PetStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pets: ${pets}
    ''';
  }
}
