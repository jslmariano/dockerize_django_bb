from rest_framework import serializers
from boards.models import Board, Topic, Post


class PostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = ('pk', 'message', 'topic', 'created_at',
                  'updated_at', 'created_by', 'updated_by',)

class TopicSerializer(serializers.ModelSerializer):
    class Meta:
        model = Topic
        fields = ('pk', 'subject', 'last_updated', 'board', 'starter', 'views')

class BoardSerializer(serializers.ModelSerializer):
    class Meta:
        model = Board
        fields = ("name", "description", "pk",)