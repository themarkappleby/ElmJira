module View.Index exposing (view)

import Html exposing (..)
import Model exposing (Model)
import Update exposing (Msg)
import Component.Header as Header


view : Model -> Html Msg
view model =
    div []
        [ Header.view model
        ]
