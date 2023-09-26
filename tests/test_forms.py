# myapp/tests/test_forms.py

from django.test import TestCase
from users.forms import LoginForm, RegisterForm

class TestRegisterForm(TestCase):
    # ... (existing test methods for RegisterForm)

class TestLoginForm(TestCase):
    def test_valid_data(self):
        # Create a test user with valid credentials
        username = 'johndoe'
        password = 'mysecurepassword'
        user = User.objects.create_user(username=username, password=password)

        form = LoginForm(data={
            'username': username,
            'password': password,
        })

        # Check if the form is valid
        if not form.is_valid():
            print(form.errors)
        self.assertTrue(form.is_valid())

    def test_invalid_data(self):
        form = LoginForm(data={
            'username': 'johndoe',
            'password': '',  # Missing password
        })
        if not form.is_valid():
            print(form.errors)
        self.assertFalse(form.is_valid())
