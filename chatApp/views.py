from django.shortcuts import render

# Create your views here.



def chatRoom(request):
    return render(request, 'chat/chatRoom.html')