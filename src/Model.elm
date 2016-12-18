module Model exposing (..)

import Date exposing (Date)


type alias Model =
    { projects : List Project
    , currentUser : User
    }


type alias Project =
    { id : Int
    , title : String
    , users : List User
    , sprints : List Sprint
    }


type alias User =
    { id : Int
    , username : String
    , avatar : String
    , email : String
    }


type alias Sprint =
    { id : Int
    , startDate : Date
    , endDate : Date
    , status : SprintStatus
    , tickets : List Ticket
    }


type alias Ticket =
    { id : Int
    , title : String
    , description : String
    , assignee : User
    , estimate : Int
    , priority : TicketPriority
    , kind : TicketKind
    , status : TicketStatus
    }


type SprintStatus
    = Upcoming
    | Active
    | Closed


type TicketKind
    = Task
    | Bug


type TicketStatus
    = Todo
    | InProgress
    | Done


type TicketPriority
    = Trivial
    | Minor
    | Major
    | Critical
    | Blocker


nullUser : User
nullUser =
    { id = 0, username = "", avatar = "", email = "" }


initialModel : Model
initialModel =
    { projects = []
    , currentUser = nullUser
    }
