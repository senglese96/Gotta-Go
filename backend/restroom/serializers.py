from rest_framework import serializers
from .models import Restroom, Review
from django.contrib.auth.models import User

class RestroomSerializer(serializers.ModelSerializer):
    snippets = serializers.PrimaryKeyRelatedField(many=True, queryset=Snippet.objects.all())

    class Meta:
        model = Restroom
        fields = ('id', 'name', 'address', 'lat', 'lon', 'created')

class ReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = Review
        fields = ('id', 'created', 'access', 'quality', 'directions', 'details', 'author', 'restroom')

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'email')
