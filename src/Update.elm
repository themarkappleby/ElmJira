module Update exposing (..)

import Model exposing (Model)


type Msg
    = Noop


update : Msg -> Model -> Model
update msg model =
    case msg of
        Noop ->
            model
