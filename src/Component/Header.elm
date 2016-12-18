module Component.Header exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (Model)
import Update exposing (Msg)


view : Model -> Html Msg
view model =
    header [ class "header" ]
        [ viewLeft model
        , viewCenter model
        , viewRight model
        ]


viewLeft : Model -> Html Msg
viewLeft model =
    div [ class "header-left" ] []


viewCenter : Model -> Html Msg
viewCenter model =
    div [ class "header-center" ] [ text "Jira Lite" ]


viewRight : Model -> Html Msg
viewRight model =
    div [ class "header-right" ] []
