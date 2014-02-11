# -*- coding: utf-8 -*-
from __future__ import unicode_literals
import simplejson
from django.http import HttpResponse
from django.views.decorators.gzip import gzip_page
from phonebook.models import Phonebook, Category
from django.views.decorators.cache import cache_page

@cache_page(60 * 15)
@gzip_page
def index(request):
    print 'cache disabled'
    G = request.GET
    category = int(G.get('category', 0))
    start = int(G.get('start', 0))
    rows = int(G.get('rows', 30))
    cats = Category.objects.filter(parent_category__id=category, status=Category.SHOW)
    cols = Phonebook.objects.filter(category__in=cats, status=Phonebook.SHOW).order_by('order_time')
    total = cols.count()
    data = []
    for item in cols[start:start+rows]:
        data.append({
            'name': item.name,
            'phone': item.phone,
            'small_category': item.category_id,
        })
    res = { 'ret': 0, 'count': len(data), 'total': total, 'data': data}
    return HttpResponse(simplejson.dumps(res), mimetype="application/json; charset=utf-8")
