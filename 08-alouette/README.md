# Alouette

Write a program that prints out all of the lyrics to the traditional [French-Canadian children's song _Alouette_](https://en.wikipedia.org/wiki/Alouette_(song).

## The Song
Alouette is a [cumulative song](https://en.wikipedia.org/wiki/Cumulative_song), meaning the verse grows, adding a new part every time it is sung. For example, the first verse:

```
Je te plumerai la tête.
Je te plumerai la tête.
Et la tête!
Et la tête!
Alouette!
Alouette!
A-a-a-ah
```

And the second verse:

```
Je te plumerai le bec.
Je te plumerai le bec.
Et le bec!
Et le bec!
Et la tête!
Et la tête!
Alouette!
Alouette!
A-a-a-ah
```

Note that the first two lines changed from `la tête` to `le bec`, and followed by two new lines of `Et le bec!`. There are 8 verses, each introducing a new piece.

Between each verse and at the beginning and end of the song is the refrain:

```
Alouette, gentille alouette,
Alouette, je te plumerai.
```

The complete lyrics can be found in [`alouette_lyrics.txt`](alouette_lyrics.txt).

## Program Structure
You will write a class, `Alouette`, with three methods.

### `lines_for_verse`
`Alouette#lines_for_verse` will do the work of generating all those `Et <part>!` lines for a given verse. It should return an array of strings, without repeats. For example, if you were to call `lines_for_verse(2)`, it would return

```ruby
["Et les yeux!", "Et le bec!", "Et la tête!"]
```

Note that verses are 0-indexed. The components can be found in the constant array `ALOUETTE_PARTS` in the skeleton code.

### `verse`
`Alouette#verse` will build the requested verse. It should return a string. For example, if you were to call `verse(2)`, it would return

```
Je te plumerai les yeux.
Je te plumerai les yeux.
Et les yeux!
Et les yeux!
Et le bec!
Et le bec!
Et la tête!
Et la tête!
Alouette!
Alouette!
A-a-a-ah
```

### `sing`
`Alouette#sing` will build the entire song, formatted as in [`alouette_lyrics.txt`](alouette_lyrics.txt). There should be a blank line between verses and refrains. The value returned should return a string.

## Source
[Adapted from Craig Godden-Payne's JavaScript code challenge](http://craig.goddenpayne.co.uk/2015/12/12-days-of-christmas-code-kata.html)
