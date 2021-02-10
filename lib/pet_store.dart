import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
part 'pet_store.g.dart';

class PetStore = _PetStoreBase with _$PetStore;

abstract class _PetStoreBase with Store {
  @observable
  ObservableList<Pet> pets = ObservableList<Pet>();

  @action
  addPet(Pet pet) {
    pets.add(pet);
  }

  @action
  removePet(Pet pet) {
    pets.remove(pet);
  }

  @action
  nameHimFrank(Pet pet) {
    pet.name = "Frank";
  }
}

class Pet {
  String name;

  Pet(this.name);
}
