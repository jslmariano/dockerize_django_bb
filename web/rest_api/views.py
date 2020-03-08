from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import permissions
from rest_framework import generics

from .decorators import validate_board_data

from rest_api import serializers
from boards.models import Board, Post, Topic


class ListBoardView(generics.ListAPIView):
    """
    Provides a get method handler.
    """
    queryset = Board.objects.all()
    serializer_class = serializers.BoardSerializer
    permission_classes = (permissions.IsAuthenticated,)


class BoardsDetailView(generics.RetrieveUpdateDestroyAPIView):
    """
    GET boards/:id/
    PUT boards/:id/
    DELETE boards/:id/
    """
    queryset = Board.objects.all()
    serializer_class = serializers.BoardSerializer

    def get(self, request, *args, **kwargs):
        try:
            a_board = self.queryset.get(pk=kwargs["pk"])
            return Response(serializers.BoardSerializer(a_board).data)
        except Board.DoesNotExist:
            return Response(
                data={
                    "message": "Board with id: {} does not exist".format(kwargs["pk"])
                },
                status=status.HTTP_404_NOT_FOUND
            )

    @validate_board_data
    def put(self, request, *args, **kwargs):
        try:
            a_board = self.queryset.get(pk=kwargs["pk"])
            serializer = serializers.BoardSerializer()
            updated_board = serializer.update(a_board, request.data)
            return Response(serializers.BoardSerializer(updated_board).data)
        except Board.DoesNotExist:
            return Response(
                data={
                    "message": "Board with id: {} does not exist".format(kwargs["pk"])
                },
                status=status.HTTP_404_NOT_FOUND
            )

    def delete(self, request, *args, **kwargs):
        try:
            a_board = self.queryset.get(pk=kwargs["pk"])
            a_board.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except Board.DoesNotExist:
            return Response(
                data={
                    "message": "Board with id: {} does not exist".format(kwargs["pk"])
                },
                status=status.HTTP_404_NOT_FOUND
            )

class TopicsByBoard(generics.ListAPIView):
    queryset = Topic.objects.all()
    serializer_class = serializers.TopicSerializer

    def get_queryset(self):
        board_pk = self.kwargs['board_pk']
        return self.queryset.filter(board__pk=board_pk)

    def pre_save(self, obj):
        obj.customer_id = self.kwargs['board_pk']


class TopicsDetailView(generics.RetrieveUpdateDestroyAPIView):
    """
    GET topics/:board_id/id/:id
    PUT topics/:board_id/id/:id
    DELETE topics/:board_id/id/:id
    """
    queryset = Topic.objects.all()
    serializer_class = serializers.TopicSerializer

    def get(self, request, *args, **kwargs):
        try:
            a_topic = self.queryset.get(pk=kwargs["pk"])
            return Response(serializers.TopicSerializer(a_topic).data)
        except Topic.DoesNotExist:
            return Response(
                data={
                    "message": "Topic with id: {} does not exist".format(kwargs["pk"])
                },
                status=status.HTTP_404_NOT_FOUND
            )

    # @validate_request_data
    def put(self, request, *args, **kwargs):
        try:
            a_topic = self.queryset.get(pk=kwargs["pk"])
            serializer = serializers.TopicSerializer()
            updated_board = serializer.update(a_topic, request.data)
            return Response(serializers.TopicSerializer(updated_board).data)
        except Topic.DoesNotExist:
            return Response(
                data={
                    "message": "Topic with id: {} does not exist".format(kwargs["pk"])
                },
                status=status.HTTP_404_NOT_FOUND
            )

    def delete(self, request, *args, **kwargs):
        try:
            a_topic = self.queryset.get(pk=kwargs["pk"])
            a_topic.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except Topic.DoesNotExist:
            return Response(
                data={
                    "message": "Topic with id: {} does not exist".format(kwargs["pk"])
                },
                status=status.HTTP_404_NOT_FOUND
            )