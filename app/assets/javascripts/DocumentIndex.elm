module DocumentIndex exposing (..)

import Html exposing (..)

main =
    Html.beginnerProgram
    { model = initialModel
    , view = view
    , update = update
    }


type alias Model =
  { documents: List String }

initialModel =
  Model ["snoop_dogg.mp3", "world_war_z.avi"]

-- View

view model =
  text "hovno"

-- Update

type Msg = NoOp

update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp ->
      model

