# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.shortcuts import render
from django.http import JsonResponse
from .models import Restroom, Review, User
from .serializers import RestroomSerializer, ReviewSerializer, UserSerializer
from django.views.decorators.csrf import csrf_exempt


def index(request):
    rest_list = Restroom.objects.order_by('-pub_date')
    context = {'rest_list': rest_list}
    return render(request, 'restroom/index.html', context)


# Create your views here.
