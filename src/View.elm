module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)
import Update exposing (..)
import Html.Keyed as Keyed


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Todo App" ]
        , viewInput model.newTask
        , viewTasks "To Do" (todoTasks model.tasks)
        , viewTasks "Done" (doneTasks model.tasks)
        , viewClear (List.length (doneTasks model.tasks) > 0)
        ]


todoTasks : List Task -> List Task
todoTasks tasks =
    List.filter (\t -> not t.complete) tasks


doneTasks : List Task -> List Task
doneTasks tasks =
    List.filter .complete tasks


viewInput : String -> Html Msg
viewInput newTask =
    Html.form [ onSubmit AddTask ]
        [ input [ type_ "text", value newTask, onInput UpdateTaskText ] []
        , input [ type_ "submit", value "Add Item" ] []
        ]


viewTasks : String -> List Task -> Html Msg
viewTasks name tasks =
    div []
        [ h2 [] [ text name ]
        , Keyed.ul [] (List.map viewTask tasks)
        ]


viewTask : Task -> ( String, Html Msg )
viewTask task =
    ( toString task.id
    , li [ classList [ ( "done", task.complete ) ] ]
        [ input [ checked task.complete, id (toString task.id), type_ "checkbox", onCheck (ToggleTask task) ] []
        , label [ for (toString task.id) ]
            [ span [] [ text task.text ] ]
        ]
    )


viewClear : Bool -> Html Msg
viewClear display =
    if display then
        button [ onClick ClearTasks ] [ text "Clear Done Tasks" ]
    else
        div [] []
