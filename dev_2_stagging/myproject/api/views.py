from django.shortcuts import render

# Create your views here.
from django.http import JsonResponse

def api_one(request):
    return JsonResponse({"message": "API One response"})

def api_two(request):
    return JsonResponse({"message": "API Two response"})
