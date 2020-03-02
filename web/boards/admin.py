from django.contrib import admin
from .models import Board

class BoardAdmin(admin.ModelAdmin):
    # fields = ['name']

    #list of fields to display in django admin
    list_display = ['name','description']

    #filters
    list_filter = ['name', 'description']

    #if you want django admin to show the search bar, just add this line
    search_fields = ['name', 'description']

    #to define model data list ordering
    ordering = ('id','name')

    def __unicode__(self):
        return self.name


admin.site.register(Board, BoardAdmin)