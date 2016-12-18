module Component.Header exposing (view)

import Html exposing (Html)
import Model exposing (Model)
import Update exposing (Msg)
import Css exposing (..)
import Css.Namespace exposing (namespace)
import Html.CssHelpers exposing (withNamespace)


type CssClass
    = Header


{ id, class, classList } =
    withNamespace "header"


css =
    (Css.stylesheet << namespace "header")
        [ (.) Header
            [ Css.color (Css.hex "CCFFFF")
            ]
        ]


view : Model -> Html Msg
view model =
    Html.header []
        [ viewLeft model
        , viewCenter model
        , viewRight model
        ]


viewLeft : Model -> Html Msg
viewLeft model =
    Html.div [ class [ Header ] ] []


viewCenter : Model -> Html Msg
viewCenter model =
    Html.div [] [ Html.text "Jira Lite" ]


viewRight : Model -> Html Msg
viewRight model =
    Html.div [] []
