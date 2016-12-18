module View exposing (view)

import Html exposing (..)
import Model exposing (Model)
import Update


view : Model -> Html Update.Msg
view model =
    div []
        [ h1 [] [ text "Jira Lite" ]
        ]
