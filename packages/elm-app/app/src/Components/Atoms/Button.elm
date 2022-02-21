module Components.Atoms.Button exposing (ButtonType(..), default, view, withDisabled, withOnClick, withType)

import Html.Styled as Html exposing (Html, text)
import Html.Styled.Attributes exposing (class, classList, disabled, type_)
import Html.Styled.Events exposing (onClick)


type ButtonType
    = Submit
    | Button


type alias Args msg =
    { label : String
    , type_ : ButtonType
    , disabled : Bool
    , onClick : Maybe msg
    }


buttonTypeAsString : ButtonType -> String
buttonTypeAsString inputType =
    case inputType of
        Submit ->
            "submit"

        Button ->
            "button"


default : String -> Args msg
default label =
    { label = label
    , type_ = Button
    , disabled = False
    , onClick = Nothing
    }


withType : ButtonType -> Args msg -> Args msg
withType buttonType args =
    { args | type_ = buttonType }


withDisabled : Bool -> Args msg -> Args msg
withDisabled isDisabled args =
    { args | disabled = isDisabled }


withOnClick : msg -> Args msg -> Args msg
withOnClick msg args =
    { args | onClick = Just msg }


view : Args msg -> Html msg
view args =
    Html.button
        [ type_ (buttonTypeAsString args.type_)
        , disabled args.disabled
        , class "w-full flex justify-center py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-primary-600 hover:bg-primary-700 disabled:bg-primary-300 disabled:cursor-not-allowed focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary-500"
        , Maybe.map onClick args.onClick |> Maybe.withDefault (class "")
        ]
        [ text args.label ]
