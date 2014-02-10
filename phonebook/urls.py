from django.conf.urls.defaults import patterns

urlpatterns = patterns('phonebook.views',
    (r'^$', 'index'),
)

