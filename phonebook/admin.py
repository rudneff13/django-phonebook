# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib import admin
from phonebook.models import Category, Phonebook

class CategoryAdmin(admin.ModelAdmin):
    list_display = ('id', 'parent_category', 'name', 'status', 'order_time')  
    list_filter = ('parent_category', 'status', 'order_time')

class PhonebookAdmin(admin.ModelAdmin):
    list_display = ('id', 'category', 'name', 'status', 'order_time')  
    list_filter = ('category', 'status', 'order_time')

admin.site.register(Category, CategoryAdmin)
admin.site.register(Phonebook, PhonebookAdmin)
