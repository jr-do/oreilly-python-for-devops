import wikipedia


def wiki(name="Monza", lenght=1):
    """This is a Wikipedia fetcher"""

    my_wiki = wikipedia.summary(name, lenght)
    return my_wiki

def search_wiki(name):
    """Search Wikipedia for Names"""

    results = wikipedia.search(name)
    return results