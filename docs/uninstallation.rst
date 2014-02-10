Uninstallation
==============
1. remove source code from your environment::

    $ pip uninstall django-phonebook

   if you install the `django-phonebook` with copying the `django-phonebook/phonebook` directory into your django project, just delete `phonebook` directory to finish uninstallation.

2. remove "phonebook" from your INSTALLED_APPS setting like this::

    INSTALLED_APPS = (
        ...
        #'phonebook',
    )

2. remove the URLconf from your project urls.py like this::

    #url(r'^phonebook/', include('phonebook.urls')),

3. delete the phonebook models table from your database::

    mysql> drop table phonebook_category;
    mysql> drop table phonebook_phonebook;

Now, your world is clean again.
