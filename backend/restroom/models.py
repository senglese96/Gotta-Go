# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from pygments.lexers import get_all_lexers
from pygments.styles import get_all_styles
from django.core.validators import MaxValueValidator
from django.contrib.auth.models import User

LEXERS = [item for item in get_all_lexers() if item[1]]
LANGUAGE_CHOICES = sorted([(item[1][0], item[0]) for item in LEXERS])
STYLE_CHOICES = sorted((item, item) for item in get_all_styles())

class Restroom(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    name = models.CharField(max_length=100)
    lat = models.FloatField()
    lon = models.FloatField()

class Review(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    access = models.PositiveIntegerField(validators=[MaxValueValidator(5)])
    quality = models.PositiveIntegerField(validators=[MaxValueValidator(5)])
    directions = models.TextField()
    details = models.TextField()
    author = models.ForeignKey(
        User,
        on_delete=models.SET_NULL,
        null=True
    )
    restroom = models.ForeignKey(
        'Restroom',
        on_delete=models.CASCADE
    )
# Create your models here.
