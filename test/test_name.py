import example

import pytest


def test_pet_requires_name():
    """
    A Pet cannot be created without a name.
    """
    with pytest.raises(TypeError):
        example.Pet()


def test_pet_name_can_be_fetched():
    """
    A Pet's name can be fetched with the name attribute.
    """
    pet = example.Pet("Odie")
    assert pet.name == "Odie"


def test_pet_name_is_read_only():
    pet = example.Pet("Odie")
    with pytest.raises(AttributeError):
        pet.name = "Garfield"
