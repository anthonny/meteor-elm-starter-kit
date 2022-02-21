module Components.Book exposing (main)

import Components.AtomsChapters as AtomsChapters
import Components.MoleculesChapters as MoleculesChapters
import Components.OrganismsChapters as OrganismsChapters
import ElmBook exposing (withChapterGroups, withComponentOptions, withThemeOptions)
import ElmBook.ComponentOptions exposing (..)
import ElmBook.ElmCSS exposing (Book, book)
import ElmBook.ThemeOptions exposing (..)


main : Book ()
main =
    book "Meteor Elm"
        |> withThemeOptions [ ElmBook.ThemeOptions.subtitle "v1.0.0" ]
        |> withComponentOptions [ ElmBook.ComponentOptions.fullWidth True ]
        |> withChapterGroups
            [ AtomsChapters.doc
            , MoleculesChapters.doc
            , OrganismsChapters.doc
            ]
