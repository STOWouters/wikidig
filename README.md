# Wikidig
Wikidig is a simple bash script to fetch a short summary about anything from
Wikipedia.

## Install
To install wikidig, you can use `make`, wich is by default already provided on
most Linux systems. There's no build target, so you can immediately install it
by passing:

    $ [sudo] make install

Optionally, you can override several variables:

    ===========================================================================
    | EXE    | The name of the installed executable, useful if you have       |
    |        | already an executable called snippy and want to rename this    |
    |        | executable to something different (such as snippet or so).     |
    +--------+----------------------------------------------------------------+
    | PREFIX | The prefix for installation, this defaults to /usr/local/, so  |
    |        | the content of the bin/ directory will be then copied to       |
    |        | /usr/local/bin/ and so on. This is useful if you want to       |
    |        | install it under virtual environment.                          |
    ===========================================================================

For example, if you want to install it under prefix /usr/, just pass:

    $ [sudo] make install PREFIX=/usr/

### Debugging
You can also install it under 'development mode', this is mainly useful if you
want to debug the program:

    $ [sudo] make develop

> After debugging, you might want to re-install the program. To do so, you'll
> have to uninstall it first (even if it was installed under development mode),
> this can be done with the uninstall target:
>
>     $ [sudo] make uninstall

## License - The Boring Legal Stuff
This software is licensed under [WTFPL](www.wtfpl.net), so do whatever the fuck
you want with it.
