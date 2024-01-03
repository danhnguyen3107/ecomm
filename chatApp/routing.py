from django.urls import path
from . import consumers

websocket_urlpatterns = [
    path(r"ws/chat/public_room/<str:room_name>", consumers.ChatConsumer.as_asgi()),
]