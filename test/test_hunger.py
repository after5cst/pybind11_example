import example

import pytest


def test_hunger_is_a_read_only_attribute():
    """
    A Pet() object should have an attribute called hunger, and
    it should be read only.
    """
    pet = example.Pet("Odie")
    assert hasattr(pet, "hunger")
    with pytest.raises(AttributeError):
        pet.hunger = 5


def test_hunger_defaults_to_zero():
    """
    When a Pet() is created, it's hunger should be zero by default.
    """
    pet = example.Pet("Odie")
    assert pet.hunger == 0


def test_hunger_can_be_initialized_to_int():
    """
    When a Pet() is created, the hunger value may be initialized.
    """
    pet = example.Pet("Odie", hunger=3)
    assert pet.hunger == 3


@pytest.mark.parametrize("bad_type", [str(3), dict(), list(), float(3), None])
def test_hunger_can_not_be_initialized_to_non_int(bad_type):
    """
    When a Pet() is created, the hunger value must be an integer.
    This is an infinite search space, so just settle for a few
    basic types for bad data type checking.
    """
    if isinstance(bad_type, (str, float)):
        # These types *could* be cast by the user as I do here.  This
        # is not an error, and so this should not throw/assert.
        pet = example.Pet("Odie", hunger=int(bad_type))

    # But for all bad_types, using it directly should be an error.
    with pytest.raises(TypeError):
        pet = example.Pet("Odie", hunger=bad_type)


def test_pet_gets_hungry_after_walk():
    """
    When a Pet() goes for a walk, it's hunger should increment by one.
    """
    pet = example.Pet("Odie")
    pet.walk()
    assert pet.hunger == 1
    pet.walk()
    assert pet.hunger == 2


def test_pet_gets_full_after_feeding():
    """
    When a Pet() is fed, then the hunger should be reset to zero.
    """
    pet = example.Pet("Odie")
    pet.walk()
    assert pet.hunger == 1
    pet.walk()
    assert pet.hunger == 2
    pet.feed()
    assert pet.hunger == 0
