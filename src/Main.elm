module Main exposing (main)

import Html exposing (..)
import View exposing (view)
import Update exposing (..)
import Model exposing (..)


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { view = view
        , update = update
        , model = model
        }
