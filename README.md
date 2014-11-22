TelephoneDirectory
==================

A simple Telephone Directory.
The application handles a set of entries, that contain a first name, last name, and a telephone number. 

##App structure

The application consists of the following pages:

#####Home page

Contains a text field that allows to search through all the entries by name or number. When text is typed in the field, the page is reloaded with a table containing all the entries that match the text.
The page contains a link to the "add entry" page.
By selecting the First Name field of an entry, a "show entry" page is loaded.

#####Create entry page

Contains a form for entering a new entry.
It's not possible to enter an empty first or last name. The phone number should be of the form:
"+", nonempty group of digits, space, nonempty group of digits, space and a group of digits with at least 6 digits e.g.: +39 02 1234567.

#####Show entry page
Contains entry informatation and two buttons for deleting or editing the entry. 

#####Edit entry page

Contains a form for modifying or deleting an existing entry.

##Setup
- install [Grails] version [2.4.4]
- clone the project into a directory of your choice
- move into the choosen directory

###Test environment
- start webapp with ```grails run-app```

###Production environment
- generate war file with ```grails war```
- deploy the war in your application server (e.g. Tomcat or Jetty)



[Grails]:https://grails.org/
[2.4.4]:http://dist.springframework.org.s3.amazonaws.com/release/GRAILS/grails-2.4.4.zip
