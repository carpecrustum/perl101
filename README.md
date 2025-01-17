# perl101.org


This project is the source code for the perl101.org static website.

Perl101.org code has several components:

* The (source) POD files under the "s" folder:

    The POD files are the core content of perl101.org. It's written in
    POD form. You can read the documentation of how to write POD on perldoc,
    using either the command `perldoc perlpod` or googling for "perlpod".
    These POD files are rendered to HTML by the generator script documented
    below.

* The static JS, images and design under the "static" folder:

    Some things are static, such as images, the CSS layout, javascript
    functions and the sorts. You can find those in the "static" folder.
    There is basic CSS for handheld, print and web.
    Currently the only image is the Perl101 logo.
    The Javascript files are the Jemplate engine (Jemplate can be found on
    CPAN) and a compiled Template Toolkit template file to Javascript.

* The Template::Toolkit templates under the "tt" folder:

    The generation engine uses the HTMLified POD content in templates in order
    to render the complete website. These are the templates in the "tt" folder.
    There is one single template called "show.tt" which is not directly used.
    It is compiled to javascript using "jemplate" command line tool and then
    put in the JS folder in "static".

    Each section in Perl101.org is rendered independently using the
    "section.tt" template. If you want to control each section, that's the
    template you want to check out.

    It's simple HTML with Template::Toolkit tags. Template::Toolkit can be
    found on CPAN.

* All the generated files under the "build" folder:

    Once the generation script generated the files, it saves them in the
    "build" folder. The folder doesn't exist by default (Perl101.org is on
    Github.com and Git cannot monitor empty folders so you'll need to create
    this folder yourself). The generation script will alert you if it is
    missing.

    This folder can be seen as the "htdocs" or "httpdocs" people are used
    to.

* The generator script in the main folder:

    The generator script goes over all the POD files in "s", renders them using
    the templates in folder "tt" and then puts them as static files in the
    "build" folder. You can specify a different "build" folder or it will
    by default look for a folder named "build".
