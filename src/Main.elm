module Main exposing (main)

import Html
import View exposing (view)
import Update exposing (Msg, update)
import Model exposing (Model, initialModel)


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { view = view
        , update = update
        , model = initialModel
        }
