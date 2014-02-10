# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models

class Category(models.Model):
    UNCHECK, SHOW, HIDE = range(3)
    STATUS_CHOICES = (
        (UNCHECK, '未审核'),
        (SHOW, '显示'),
        (HIDE, '隐藏'),
    )
    parent_category = models.ForeignKey('self', blank=True, null=True, related_name="child_category_set", verbose_name="父类别")
    name = models.CharField(verbose_name='分类名称',  max_length=20)
    status = models.IntegerField(verbose_name='状态', default=UNCHECK, choices=STATUS_CHOICES)
    order_time = models.DateTimeField(auto_now_add=True, db_index=True, verbose_name='时间排序')

    def __unicode__(self):
        return self.name

class Phonebook(models.Model):
    UNCHECK, SHOW, HIDE = range(3)
    STATUS_CHOICES = (
        (UNCHECK, '未审核'),
        (SHOW, '显示'),
        (HIDE, '隐藏'),
    )
    category = models.ForeignKey(Category)
    name = models.CharField(verbose_name='名称',  max_length=20)
    phone = models.CharField(verbose_name='电话号码',  max_length=20)
    status = models.IntegerField(verbose_name='状态', default=UNCHECK, choices=STATUS_CHOICES)
    order_time = models.DateTimeField(auto_now_add=True, db_index=True, verbose_name='时间排序')

    def __unicode__(self):
        return self.name
