#NoEnv
#SingleInstance force

global AdminPassword
AdminPassword = UNDEFINED_PASSWORD

; INI Loading
LoadingConfigs()

; Work only in GTA5
#IfWinActive ahk_exe GTA5.exe

CoordMode, Mouse, Screen
CoordMode, Pixel, Screen

; ========================= ����������� ===================================
!1::
    ClickComponent("input")
    Random, variant, 1, 3

    ; Getting time
    FormatTime, nowHours,, HH

    TimesOfDay := ������ ����

    if ( nowHours >= 0 and nowHours <= 4 ) 
    {
        TimesOfDay = ������ ����
    }

    if ( nowHours >= 5 and nowHours <= 11 ) 
    {
        TimesOfDay = ������ ����
    }

    if ( nowHours >= 12 and nowHours <= 17 ) 
    {
        TimesOfDay = ������ ����
    }

    if ( nowHours >= 18 and nowHours <= 23 ) 
    {
        TimesOfDay = ������ �����
    }

    switch variant
    {
        case 1: SendInput, %TimesOfDay%, ��������� �����, ��� ����{!}
        case 2: SendInput, %TimesOfDay%, ��������� �����, ��������{!}
        case 3: SendInput, %TimesOfDay%, ��������� �����, ��� ����� �����{!}
    }

    SendInput, {ENTER}
    
    if (State4)
    {
        CountReport("first", "Y")
    } else {
        CountReport()
    }
return

; ��������� �� RP
!2::
    ClickComponent("input")
    SendInput, ��������� �����, ��������� �� ��������� ���������, �� ��������� �������� �� �������{!} ����������, ���� � ��� ���� ������������� ���������, �� ���������� �� ����� � ������ ������ �� �������{!}
return

; ������� ������ �� �����
!3::
    ClickComponent("input")
    SendInput, ��������� �����, ���� � ��� ���� ������������� ���������, �� ���������� ���������� �� ����� � ������ ������ �� �������{!}
return

; �� ������������� �/�
!4::
    ClickComponent("input")
    SendInput, ��������� �����{!} ������������� �� �������������/��������������/�����/����������� ������������ �������� �������. ���������� �������� ������� � �������� �������� ����� ��� � ������ ���������. ���� ��� ��� ������ ���������, �� �� ������ ��� ������������ �� �������� �����/�������� � ������� ��� � ������� ��������� ������.
return

; �� ������������� �������
!5::
    ClickComponent("input")
    SendInput, ��������� �����{!} ������������� �� ������������� ��� ���������� �������{!}
return

; SPAM
!6::
    ClickComponent("input")
    SendInput, ��������� �����, �� ��������� ������� ��������� � ������. ����������� ���������, �� ����������� � �����������/�������� �������� ����� �������� �� ������ � �� ������ ������� � �������{!}
return

; ��������
!7::
    ClickComponent("input")
    SendInput, ������: ��������� �������� �� ��� �������� ��� ������������� � �� (�������� �� �� � ������ �����������?). ���� �� �������� - ���������� �������������� ������� ��� ��������� �������� �� ������ ����������, ���� ������� ������� (��� ����� �� ��������? - �������� � ��� ������������ ����������� ���������, ��������� �������� � ������ ������ ��������� �� ������� ����������� - ��� �����{!}). ������ (��� ������������� Windows): ��������� ��������� ��������� � ������� ����������� ������ ��� �������� � �� ��������� (���� � ��� ������ �� (������������ �������), �� ���������� ������ �����). ��� �������� ������ ������� � ��������� Windows (������ ���� - ���������� (��� Win10)) - ��������� ����� - ��������������� ��������� - ������ ���������� ������ - ������ - ����� ���� �������� � ��������� ������ ������� ���� �� �������� � ��� - ������������ �� ��������� & ������������ ���������� ����� �� ���������. ���� ���� ��������: �������� � ������� ��������� ��� ������� F3 ��� ������������ ���������� ����, ����� - ��������� ��� ��������. ������: ��� ������� ���� ����� RAGE Multiplayer Launcher ��������� � ������ ��������� (���������� � ���� ������ ������ ��� �����������, �������� �� ������������ ��������) � ��������� ������� �� ��� �������� � ������� ���������� ����, � ��� �� ������ �� ������ �� ���� ��������� ��������� ����������������� ��������� � ������� ����������� ������. �����: �� ���� �� ������� �� �����? - ���������� ���������� � ��� ������ �� ������ ������� ��� ����� ��������� ���������� (forum.gta5rp.com - ����������� ������ - Downtown |����������� ������); ���������? - ������ ��� ����{!}
return

; ����� ������� ������
!8::
    ClickComponent("input")
    SendInput, ������ ����� �� �� ������ �������� �� 10 �����/��� ������ (����� ���) ��� �� ��������� �� ������. �������� ������� ����� � NPC �� ������.
return

; ��������� ������ �����
!0::
    ClickComponent("input")
    SendInput, ��������� �����, �� �������� ��������� �� ������������� �� ��������� ������ �������{!} ���� �� ��������, ��� ��������� ���� ������ �� ���������, �������� ����������� �� ������ � ��������������� �������{!}
return

; ����� �� �����
!q::
    ClickComponent("input")
    SendInput, ��������� �����, �������� ��� ������{!}
return

; ������ �����������
!w::
    ClickComponent("input")
    SendInput, ��������� �����, ��� ������� ����� ��������, ��� ����� ��������� � ��� � ����� ��� ������� � ����������� � �������������� ��������� �� ������, � ����� � ������� ������/�������{!}
return

; �������
!e::
    ClickComponent("input")
    SendInput, ��������� �����, ������������� �� �������� � ����� ���������, ���� ��� ��������� ������, �� ������ ������� �������{!}
return

; EMS
!r::
    ClickComponent("input")
    SendInput, ��������� �����, �������� ���������� EMS, ��� ������ ������{!}
return

; ������� ��
!a::
    ClickComponent("input")
    SendInput, ��������� �����, �� ���� ��������
return

; ��� ������
!t::
    ClickComponent("input")
    SendInput, ��������� �����, ���������� ���������� �� ����� �������� �� �����, � ������ � ����������� ������{!}
return

; �� ����������
!d::
    ClickComponent("input")
    SendInput, ��������� �����, �� �� ���������� �������� ����������{!}
return

; �� ���������
!f::
    ClickComponent("input")
    SendInput, ��������� �����, ��� �� ���������{!}
return

; ����� ��������
!g::
    ClickComponent("input")
    SendInput, ��������� �����, ������� ���������� ����� ��������{!}
return

; �������� � �������
!c::
    ClickComponent("input")
    SendInput, ��������� �����, ������������ �������� �������� ���������� � �������{!}
return

; ���������� �� SUPPORT
!b::
    ClickComponent("input")
    SendInput, ��������� �����, ���������� ���������� � ���� ��������� �� ������: https://gta5rp.com/support{!}
return

; ========================== ���� ��������� ===========================

::pg+::
    SendInput,prison  20 PG{left 6}
return

::nrd+::
    SendInput,prison  10 NonRP Drive{left 15}
return

::nsp+::
    SendInput,mute  30 Non RP SoundPad{left 19}
return

::zap+::
    SendInput,mute  15 ��������� �����{left 21}
return

::ooc+::
    SendInput,mute  20 OOC in IC{left 13}
return

::dm+::
    SendInput,prison  30 DM{left 6}
return

::dmzz+::
    SendInput,prison  60 DM in ZZ{left 12}
return

::db+::
    SendInput,prison  40 DB{left 6}
return

::dob+::
    SendInput,prison  40 �����{left 9}
return

::dobu+::
    SendInput,prison  90 ����� �������� �� RP{left 24}
return

::amo+::
    SendInput,prison  40 ���������� �������� � ��������� ������ �������{left 48}
return

::lut+::
    SendInput,prison  40 ���������{left 13}
return

::cbm+::
    SendInput,prison  40 Crime ��� �����{left 17}
return

::bg+::
    SendInput,prison  30 ���� ���. ���������{left 23}
return

::bc+::
    SendInput,prison  40 ���� �����{left 14}
return

::ngs+::
    SendInput, prison  40 NonRP ���{left 13}
return

::nst+::
    SendInput, prison  40 NonRP ������{left 16}
return

::npp+::
    SendInput, prison  50 ��������� ������ ��������{left 29}
return

::rk+::
    SendInput, prison  40 RK{left 6}
return

; ======================== Other ========================

; Counter first reports
!s::
    if (State4)
    {
        CountReport("first", "Y")
    } else {
        CountReport()
    }
return

; -------------
; ��������������� ������ ������� [VERSION 2.0]
; -------------
!v::
    WinGetPos, X, Y, W, H, A

    StopFindNewReports := false

    ; Start Window coords
    X_Start := X
    Y_Start := Y
    
    ; End Window coords
    X_End := X + W
    Y_End := Y + 400

    ; Find collor
    FindColor := 0x4D467D

    Loop
    {
        If StopFindNewReports
        {
            Break
        }

        ClickComponent("update")

        ; Wait for update list
        Sleep, 150

        ; Find red pixel
        PositionReport := FindNotAnsweredReport()

        If PositionReport[1] >= 1
        {    

            pX := PositionReport[1]
            pY := PositionReport[2]

            MouseMove, pX, pY, 1

            ; Click to new report
            Click, pX, pY, 1

            ; Wait for opening
            Sleep, 300

            ClickComponent("input")
            ClickComponent("closeReport", 0)

            Break
        }

        Sleep, 250
    }
return

; ���������� �������� ��������
F8::
    ClickComponent("update")
return

; ----------
; ������� �����������
; ----------
!F12::
    SendInput, t
    Sleep, 300

    SendInput, /alogin13{Enter}
    Sleep, 300

    SendInput, {~}
    Sleep, 300

    ClickComponent("consoleLogin")
    Sleep, 300

    global AdminPassword

    SendInput, %AdminPassword%
    Sleep 100

    SendInput, {Enter}
    Sleep, 300

    SendInput, {~}
    Sleep, 300

    SendInput, {F4}
    Sleep, 300

    SendInput, {~}
    Sleep, 300

    ClickComponent("input")
    Sleep, 300
    
    SendInput, hp
    Sleep, 300

    SendInput, {Enter}
return

; REOF
!y::
    SendInput, ~
    Sleep, 300
    ClickComponent("consoleBtn")
    Sleep, 300
    SendInput, reof {ENTER}
    SendInput, ~
return

;; All windows use
#IfWinActive

; Stop find new reports (BUG FIX)
F7::
    StopFindNewReports := true
return

; GUI Helper
!F9::

    State2:=!State2

    Gui Destroy

    If State2
    {

        CustomColor3 = EEAA99

        Gui +LastFound +AlwaysOnTop -Caption +ToolWindow +E0x20

        Gui, Color, black
        Gui, Font, s10
        Gui, Font, cWhite
        Gui, Font, w1000

        GUI, ADD,TEXT, cRed, ����� ������:
        GUI, ADD, TEXT, cYellow, Alt+1 - ����
        GUI, ADD, TEXT, cYellow, Alt+2 - ����������, �� ������ ���
        GUI, ADD, TEXT, cYellow, Alt+3 - ���������� �� ����� | �� ������
        GUI, ADD, TEXT, cYellow, Alt+4 - �� ������������� ���������
        GUI, ADD, TEXT, cYellow, Alt+5 - �� �������������/�������� �������
        GUI, ADD, TEXT, cYellow, Alt+6 - ��������� ������ ������ �������
        GUI, ADD, TEXT, cYellow, Alt+7 - �� �������� ��������
        GUI, ADD, TEXT, cYellow, Alt+8 - �� ������� �������
        GUI, ADD, TEXT, cYellow, Alt+0 - �� �������� ��������� �� �������������
        GUI, ADD, TEXT, cYellow, Alt+Q - �������� ������
        GUI, ADD, TEXT, cYellow, Alt+W - ������ ����� ��� ��� ������
        GUI, ADD, TEXT, cYellow, Alt+E - �������� �������
        GUI, ADD, TEXT, cYellow, Alt+R - �������� EMS
        GUI, ADD, TEXT, cYellow, Alt+T - ���������� �� ����������� ������
        GUI, ADD, TEXT, cYellow, Alt+A - �� ���� �������� �� [������� �������]
        GUI, ADD, TEXT, cYellow, Alt+D - �� ����������
        GUI, ADD, TEXT, cYellow, Alt+F - �� ���������
        GUI, ADD, TEXT, cYellow, Alt+G - �������� ������
        GUI, ADD, TEXT, cYellow, Alt+C - ������� � �������
        GUI, ADD, TEXT, cYellow, Alt+B - SUPPORT (��� �����)

        GUI, ADD, TEXT, cYellow,
        GUI, ADD, TEXT, cBlue, �������:

        GUI, ADD, TEXT, cYellow, Alt+S - ��������� ��������� �����
        GUI, ADD, TEXT, cYellow, Alt+F12 - �������������
        GUI, ADD, TEXT, cYellow, Alt+Y - REOF
        GUI, ADD, TEXT, cYellow, Alt+V - ����� ����� ��������
        GUI, ADD, TEXT, cYellow, F7 - ��������� ����� (���� ������)
        GUI, ADD, TEXT, cYellow, F8 - �������� ������ �������� (�������� ������� � ���������)
        
        WinSet, TransColor, %CustomColor3% 210

        Gui, Show, x0 y0 NoActivate, window. 

    }

return

; GUI Helper for console commands
!F10::

    State3:=!State3

    Gui Destroy

    If State3
    {

        CustomColor3 = EEAA99

        Gui +LastFound +AlwaysOnTop -Caption +ToolWindow 

        Gui, Color, black
        Gui, Font, s10
        Gui, Font, cWhite
        Gui, Font, w1000

        GUI, ADD,TEXT,cRed, ������� ���� ����� � ������� � ������� ������:
        GUI, ADD, TEXT,cYellow, "nrd+" - NonRP Drive
        GUI, ADD, TEXT,cYellow, "nsp+" - NonRP SoundPad
        GUI, ADD, TEXT,cYellow, "pg+" - PG
        GUI, ADD, TEXT,cYellow, "db+" - DB
        GUI, ADD, TEXT,cYellow, "ooc+" - OOC in IC
        GUI, ADD, TEXT,cYellow, "zap+" - ����������� ����� (�� ����� �/�/�)
        GUI, ADD, TEXT,cYellow, "dm+" - DM
        GUI, ADD, TEXT,cYellow, "dmzz+" - DM in ZZ
        GUI, ADD, TEXT,cYellow, "dob+" - �����
        GUI, ADD, TEXT,cYellow, "dobu+" - ����� �������� �� RP
        GUI, ADD, TEXT,cYellow, "amo+" - ���������� ��������
        GUI, ADD, TEXT,cYellow, "lut+" - ���������
        GUI, ADD, TEXT,cYellow, "cbm+" - Crime ��� �����
        GUI, ADD, TEXT,cYellow, "bg+" - ���� ��������������� ���������
        GUI, ADD, TEXT,cYellow, "bc+" - ���� �����
        GUI, ADD, TEXT,cYellow, "ngs+" - NonRP ���. ���������
        GUI, ADD, TEXT,cYellow, "nst+" - NonRP ������
        GUI, ADD, TEXT,cYellow, "npp+" - ��������� ������ ��������
        GUI, ADD, TEXT,cYellow, "rk+" - RK
        
        WinSet, TransColor, %CustomColor3% 210

        Gui, Show, x0 y0 NoActivate, window. 

    }

return

; GUI Counter reports
!F11::
    State4 := !State4
    
    Gui Destroy

    If State4
    {
        ShowCounters()
    }
return

; ----------------------
; FUNCTIONS ------------
; ----------------------

ShowCounters()
{

    Gui Destroy
    
    CustomColor3 = c333333
    FindSunday := "N"

    Gui +LastFound +AlwaysOnTop -Caption +ToolWindow 

    Gui, Color, %CustomColor3%
    Gui, Font, s14
    Gui, Font, cWhite
    Gui, Font, w1000

    GUI, ADD,TEXT, cWhite, ������� ��������:

    DaysLater := 6
    TotalCountReports := 0

    Gui, Font, s12

    while(DaysLater >= 0)
    {
        Y_Date := A_Now
        Y_Date += -DaysLater, d
        FormatTime, FormattedDate, %Y_Date%, dd.MM.yyyy
        FormatTime, DayOfWeek, %Y_Date%, dddd

        if( DayOfWeek = "�����������" )
        {
            FindSunday := "Y"
        }

        if( FindSunday = "Y" )
        {
            FileReadLine, LineData, %A_ScriptDir%\counters\%FormattedDate%-first.txt, 1
            
            if ( LineData * 1 >= 80 ) {
                GUI, ADD, TEXT, c00e36a, %DayOfWeek% (%FormattedDate%): %LineData%
            } else if ( LineData * 1 >= 50 ) {
                GUI, ADD, TEXT, cf7db23, %DayOfWeek% (%FormattedDate%): %LineData%
            } else if ( LineData * 1 >= 0 ) {
                GUI, ADD, TEXT, cf72f47, %DayOfWeek% (%FormattedDate%): %LineData%
            }

            TotalCountReports += LineData * 1

            LineData := 0
        }

        --DaysLater
    }

    Gui, Font, s14
    GUI, ADD, TEXT, cWhite, ����� �� ������: %TotalCountReports%

    Gui, Font, s8
    GUI, ADD, TEXT, cWhite, ������ �������� ����������

    WinSet, TransColor, c000000 250
    Gui, Show, x0 y0 NoActivate, window. 
}

FindNotAnsweredReport()
{
    WinGetPos, X, Y, W, H, A

    Parts := GetPanelParts()
    
    ; Getting parts
    yParts := Parts[2]
    xParts := Parts[1]

    ; Find collor
    FindColor := 0x4D467D

    ResultArray := []

    Loop, % xIndex := xParts.Length()
    {
        xPart := xParts[xIndex]
        Loop, % yIndex := yParts.Length()
        {
            yPart := yParts[yIndex]

            yStart := Y + yPart[1]
            xStart := X + xPart[1]

            yEnd := Y + yPart[2]
            xEnd := X + xPart[2]

            PixelSearch, pX, pY, xStart, yStart, xEnd, yEnd, FindColor, 1, Fast

            If ErrorLevel = 0
            {    
                return [pX, pY]
            }

            --yIndex
        }
        --xIndex
    }

    return [pX, pY]
}

;; Create parts array
GetPanelParts()
{

    WinGetPos, X, Y, W, H, A

    ; Array parts
    xParts := []
    yParts := []

    ; Counted parts
    xPartSize := W / 4
    yPartSize := 410 / 10

    counter := 0
    Loop, 4 {
        counter := counter + xPartSize
        xParts[A_Index, 1] := counter - xPartSize
        xParts[A_Index, 2] := counter
    }

    ResultArray := []
    ResultArray[1] := xParts

    counter := 0
    Loop, 10 {
        counter := counter + yPartSize
        yParts[A_Index, 1] := counter - yPartSize
        yParts[A_Index, 2] := counter
    }

    ResultArray[2] := yParts

    return ResultArray
}

;; Click to INPUT
ClickComponent(NameComponent, WithClick = 1)
{
    WinGetPos, X, Y, W, H, A

    ; Start Window coords
    X_Start := X
    Y_Start := Y

    ; End Window coords
    X_End := X + W
    Y_End := Y + 400

    X_Point := 0
    Y_Point := 0

    ; Click to input
    if (NameComponent = "input")
    {
        ; Input coords
        X_Point := X_Start + 160
        Y_Point := Y_Start + 332
    }

    ; Click to update
    if (NameComponent = "update")
    {
        ; Update Button coords
        X_Point := X_End - 50
        Y_Point := Y_Start + 20
    }

    if (NameComponent = "console")
    {
        X_Point := X_Start + 160
        Y_Point := Y_Start + 335
    }

    if (NameComponent = "closeReport")
    {
        X_Point := X_Start + 600
        Y_Point := Y_Start + 335
    }

    if (NameComponent = "consoleLogin")
    {
        X_Point := X_Start + 160
        Y_Point := Y_Start + 380
    }

    if (NameComponent = "consoleBtn")
    {
        X_Point := X_Start + 30
        Y_Point := Y_Start + 380
    }

    MouseMove, X_Point, Y_Point, 1

    if (WithClick = 1)
    {
        Click, X_Point, Y_Point, 1
    }
}

;; Count First Report
CountReport(ReportType = "first", IsShowCounters = "N")
{
    FormatTime, fileDate,, dd.MM.yyyy

    IfNotExist, %A_ScriptDir%\counters
        FileCreateDir, %A_ScriptDir%\counters

    IfNotExist, %A_ScriptDir%\counters\%fileDate%-%ReportType%.txt
        FileAppend, 0, %A_ScriptDir%\counters\%fileDate%-%ReportType%.txt

    ; Read line from counter file
    FileReadLine, LineData, %A_ScriptDir%\counters\%fileDate%-%ReportType%.txt, 1

    Counter := LineData * 1 + 1

    FileDelete, %A_ScriptDir%\counters\%fileDate%-%ReportType%.txt
    FileAppend, %Counter%, %A_ScriptDir%\counters\%fileDate%-%ReportType%.txt
    if (IsShowCounters = "Y") 
    {
        ShowCounters()
    }
}

; Loading configs
LoadingConfigs()
{
    ; Read config
    configFileName = config.ini
    configFile = % Format("{1}\{2}", A_ScriptDir, configFileName)

    IfNotExist, %configFile%
        FileAppend, % Format("[Default]`nPassword=ENTER_YOUR_PASSWORD_HERE"), %configFile%
        

    global AdminPassword ; Getting global variable
    
    IniRead, AdminPassword, %configFileName%, Default, Password
}