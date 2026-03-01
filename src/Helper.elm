module Helper exposing (..)

-- Calificaciones


type GradeStatus
    = Approved
    | Failed
    | Pending


gradetoCategory : Float -> GradeStatus
gradetoCategory grade =
    if grade > 7.0 then
        Approved

    else if grade < 0.0 then
        Pending

    else
        Failed


categoricalGrade : (Float -> GradeStatus) -> List Float -> List GradeStatus
categoricalGrade gradetoCategory1 grades =
    List.map gradetoCategory1 grades



--Aeropuerto


type AireplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AireplaneStatus -> String
airplaneScheduleAction accion =
    case accion of
        OnTime ->
            "Pedir reembolso"

        Boarding ->
            "Esperar"

        Delayed ->
            "Esperar"

        Cancelled ->
            "Buscar boleto"


airportAction : (AireplaneStatus -> String) -> List AireplaneStatus -> List String
airportAction accion estado =
    List.map accion estado
