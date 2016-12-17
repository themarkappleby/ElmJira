module Model exposing (..)


type alias Model =
    { tasks : List Task
    , newTask : String
    , newId : Int
    }


type alias Task =
    { id : Int, text : String, complete : Bool }


model : Model
model =
    { tasks =
        [ { id = 1, text = "Clean the bathroom", complete = False } ]
    , newId = 3
    , newTask = ""
    }
