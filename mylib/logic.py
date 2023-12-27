import wikipedia


def wiki(name="Monza", lenght=1):
    """This is a Wikipedia fetcher"""

    my_wiki = wikipedia.summary(name, lenght)
    return my_wiki
