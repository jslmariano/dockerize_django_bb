from django.urls import path
# from .views import ListSongsView
from rest_api import views as api_views
from rest_framework.authtoken.views import obtain_auth_token  # <-- Here


urlpatterns = [
    # APIs
    path('api-token-auth/', obtain_auth_token, name='api_token_auth'),  # <-- And here
    path('boards/', api_views.ListBoardView.as_view(), name="boards-all"),
    path('boards/<int:pk>/', api_views.BoardsDetailView.as_view(), name="boards-detail"),
    path('topics/<int:board_pk>/', api_views.TopicsByBoard.as_view(), name="topics-all"),
    path('topics/<int:board_pk>/id/<int:pk>/', api_views.TopicsDetailView.as_view(), name="topics-detail"),
]