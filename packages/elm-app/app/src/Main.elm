module Main exposing (main)

import Browser
import Components.Atoms.Button as Button
import Html.Styled as Html exposing (Html, div, text)
import Html.Styled.Attributes exposing (class)


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view >> Html.toUnstyled
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    { title : String
    , counter : Int
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { title = "Elm with Meteor", counter = 0 }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div
        [ class "h-screen w-screen bg-gray-50 flex items-center justify-center"
        ]
        [ div [ class "flex flex-col space-y-2 text-gray-900 max-w-sm font-bold text-2xl text-center" ]
            [ div [] [ text model.title ]
            , div [ class "font-normal text-lg" ] [ text (String.fromInt model.counter) ]
            , Button.default "INCREMENT"
                |> Button.withOnClick Increment
                |> Button.view
            ]
        ]



-- UPDATE


type Msg
    = Increment


update : Msg -> Model -> ( Model, Cmd Msg )
update msg ({ counter } as model) =
    case msg of
        Increment ->
            ( { model | counter = counter + 1 }, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
