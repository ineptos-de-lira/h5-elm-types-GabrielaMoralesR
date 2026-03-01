module Helper exposing (..)

-- Calificaciones


type GradeStatus
    = Approved
    | Failed
    | Pending


gradetoCategory : Float -> GradeStatus
gradetoCategory grade =
    if grade >= 7.0 then
        Approved

    else if grade < 0.0 then
        Pending

    else
        Failed


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map gradetoCategory grades



--Aeropuerto


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction accion =
    case accion of
        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Delayed ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"


airportAction : List AirplaneStatus -> List String
airportAction accion =
    List.map airplaneScheduleAction accion
