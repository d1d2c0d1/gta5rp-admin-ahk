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

; ========================= Приветствие ===================================
!1::
    ClickComponent("input")
    Random, variant, 1, 3

    ; Getting time
    FormatTime, nowHours,, HH

    TimesOfDay := Добрый день

    if ( nowHours >= 0 and nowHours <= 4 ) 
    {
        TimesOfDay = Доброй ночи
    }

    if ( nowHours >= 5 and nowHours <= 11 ) 
    {
        TimesOfDay = Доброе утро
    }

    if ( nowHours >= 12 and nowHours <= 17 ) 
    {
        TimesOfDay = Добрый день
    }

    if ( nowHours >= 18 and nowHours <= 23 ) 
    {
        TimesOfDay = Добрый вечер
    }

    switch variant
    {
        case 1: SendInput, %TimesOfDay%, уважаемый игрок, уже лечу{!}
        case 2: SendInput, %TimesOfDay%, уважаемый игрок, подлетаю{!}
        case 3: SendInput, %TimesOfDay%, уважаемый игрок, уже почти рядом{!}
    }

    SendInput, {ENTER}
    
    if (State4)
    {
        CountReport("first", "Y")
    } else {
        CountReport()
    }
return

; Проследил за RP
!2::
    ClickComponent("input")
    SendInput, Уважаемый игрок, проследил за указанной ситуацией, но нарушений заметить не удалось{!} Пожалуйста, если у Вас есть видеофиксация нарушения, то обратитесь на Форум в раздел Жалобы на игроков{!}
return

; Залейте жалобу на форум
!3::
    ClickComponent("input")
    SendInput, Уважаемый игрок, если у Вас есть видеофиксация нарушения, то обратитесь пожалуйста на Форум в раздел Жалобы на игроков{!}
return

; Не телепортируем Т/С
!4::
    ClickComponent("input")
    SendInput, Уважаемый игрок{!} Администрация не телепортирует/переворачивает/чинит/вытаскивает транспортные средства игроков. Пожалуйста откройте телефон и вызовите Механика найдя его в списке контактов. Если это Ваш личный транспорт, то вы можете его эвакуировать на гаражное место/парковку и забрать его в рабочем состоянии оттуда.
return

; Не телепортируем Игроков
!5::
    ClickComponent("input")
    SendInput, Уважаемый игрок{!} Администрация не телепортирует или возраждает игроков{!}
return

; SPAM
!6::
    ClickComponent("input")
    SendInput, Уважаемый игрок, Вы нарушаете правила обращения в репорт. Последующие сообщения, не относящиеся к функционалу/игровому процессу будут считатся за оффтоп и Вы будете кикнуты с сервера{!}
return

; Микрофон
!7::
    ClickComponent("input")
    SendInput, ПЕРВОЕ: Проверьте настроен ли Ваш микрофон для использования с ПК (работает ли он в других приложениях?). Если не работает - попробуйте переустановить драйвер или поставить микрофон на другое устройство, если таковое имеется (все равно не работает? - возможно у Вас механическое повреждение микрофона, проверьте стыковки и провод Вашего микрофона на наличие повреждений - это важно{!}). ВТОРОЕ (для пользователей Windows): проверьте настройку микрофона в ‘Панели управлением звуков’ как основное и по умолчанию (если у Вас другая ОС (операционная система), то пропустите данный пункт). Для открытия панели зайдите в настройки Windows (кнопка ПУСК - шестеренка (для Win10)) - Параметры звука - Соответствующие параметры - Панель управления звуком - Запись - Ищите свой микрофон и нажимаете правой кнопкой мыши на панельку с ним - Использовать по умолчанию & Использовать устройство связи по умолчанию. Если игра запущена: отбегите и нажмите несколько раз клавишу F3 для перезагрузки голосового чата, после - проверьте Ваш микрофон. ТРЕТЬЕ: При запуске игры через RAGE Multiplayer Launcher перейдите в раздел настройки (помечается в окне справа вверху как ‘эквалайзер’, ползунки на вертикальных полосках) и проверьте включен ли Ваш микрофон в разделе голосового чата, а так же выбрал ли верный из всех возможных доступных звукозаписывающих устройств в разделе ‘Устройство ввода’. ВЫВОД: Не один из пунктов не помог? - попробуйте обратиться в тех раздел на форуме проекта для более подробной инструкции (forum.gta5rp.com - Технический раздел - Downtown |Технический раздел); Сработало? - доброй Вам игры{!}
return

; Взять бабочку заново
!8::
    ClickComponent("input")
    SendInput, Скорее всего Вы не успели приехать за 10 минут/она умерла (после ДТП) или Вы перезашли на сервер. Возьмите задание снова у NPC на титуле.
return

; Наказание выдано верно
!0::
    ClickComponent("input")
    SendInput, Уважаемый игрок, Вы получили наказание от Администрации за нарушение правил проекта{!} Если вы считаете, что наказание было выдано не корректно, напишите обжалование на форуме в соответствующем разделе{!}
return

; Метка на карту
!q::
    ClickComponent("input")
    SendInput, Уважаемый игрок, закрываю Ваш репорт{!}
return

; Жалоба прокуратуры
!w::
    ClickComponent("input")
    SendInput, Уважаемый игрок, для решения Вашей проблемы, Вам нужно обратится в Суд с иском или жалобой в Прокуратуру с видеофиксацией нарушения от игрока, а также с номером жетона/нашивки{!}
return

; Полиция
!e::
    ClickComponent("input")
    SendInput, Уважаемый игрок, Администрация не помогает в таких ситуациях, если Вам требуется помощь, Вы можете вызвать полицию{!}
return

; EMS
!r::
    ClickComponent("input")
    SendInput, Уважаемый игрок, вызовите пожалуйста EMS, они окажут помощь{!}
return

; Наказан за
!a::
    ClickComponent("input")
    SendInput, Уважаемый игрок, Вы были наказаны
return

; Тех раздел
!t::
    ClickComponent("input")
    SendInput, Уважаемый игрок, пожалуйста обратитесь по Вашей проблеме на форум, а именно в Технический раздел{!}
return

; Не разглашаем
!d::
    ClickComponent("input")
    SendInput, Уважаемый игрок, мы не разглашаем подобную информацию{!}
return

; Не запрещено
!f::
    ClickComponent("input")
    SendInput, Уважаемый игрок, это не запрещено{!}
return

; Более детально
!g::
    ClickComponent("input")
    SendInput, Уважаемый игрок, опишите пожалуйста более детально{!}
return

; Уточните у игроков
!c::
    ClickComponent("input")
    SendInput, Уважаемый игрок, постарайтесь уточнить подобную информацию у игроков{!}
return

; Обратитесь на SUPPORT
!b::
    ClickComponent("input")
    SendInput, Уважаемый игрок, обратитесь пожалуйста в нашу поддержку по ссылке: https://gta5rp.com/support{!}
return

; ========================== Блок наказаний ===========================

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
    SendInput,mute  15 Запретные слова{left 21}
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
    SendInput,prison  40 Добив{left 9}
return

::dobu+::
    SendInput,prison  90 Добив уводящий от RP{left 24}
return

::amo+::
    SendInput,prison  40 Аморальные действия в отношении других игроков{left 48}
return

::lut+::
    SendInput,prison  40 Лутерство{left 13}
return

::cbm+::
    SendInput,prison  40 Crime без маски{left 17}
return

::bg+::
    SendInput,prison  30 Байт Гос. структуры{left 23}
return

::bc+::
    SendInput,prison  40 Байт Мафии{left 14}
return

::ngs+::
    SendInput, prison  40 NonRP Гос{left 13}
return

::nst+::
    SendInput, prison  40 NonRP Стяжки{left 16}
return

::npp+::
    SendInput, prison  50 Нарушение правил поставок{left 29}
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
; Автоопределение нового репорта [VERSION 2.0]
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

; Обновление страницы репортов
F8::
    ClickComponent("update")
return

; ----------
; Быстрая авторизация
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

        GUI, ADD,TEXT, cRed, Бинды клавиш:
        GUI, ADD, TEXT, cYellow, Alt+1 - Лечу
        GUI, ADD, TEXT, cYellow, Alt+2 - Преследили, но ничего нет
        GUI, ADD, TEXT, cYellow, Alt+3 - Отправляем на форум | не следил
        GUI, ADD, TEXT, cYellow, Alt+4 - Не телепортируем Транспорт
        GUI, ADD, TEXT, cYellow, Alt+5 - Не телепортируем/оживляем Игроков
        GUI, ADD, TEXT, cYellow, Alt+6 - Нарушение правил подачи Репорта
        GUI, ADD, TEXT, cYellow, Alt+7 - Не работает МИКРОФОН
        GUI, ADD, TEXT, cYellow, Alt+8 - Не сдается бабочка
        GUI, ADD, TEXT, cYellow, Alt+0 - Вы получили наказание от Администрации
        GUI, ADD, TEXT, cYellow, Alt+Q - Закрываю репорт
        GUI, ADD, TEXT, cYellow, Alt+W - Решите через СУД или ПРОКОВ
        GUI, ADD, TEXT, cYellow, Alt+E - Вызовите ПОЛИЦИЮ
        GUI, ADD, TEXT, cYellow, Alt+R - Вызовите EMS
        GUI, ADD, TEXT, cYellow, Alt+T - Обратитесь на технический раздел
        GUI, ADD, TEXT, cYellow, Alt+A - Вы были наказаны за [Указать причину]
        GUI, ADD, TEXT, cYellow, Alt+D - Не разглашаем
        GUI, ADD, TEXT, cYellow, Alt+F - Не запрещено
        GUI, ADD, TEXT, cYellow, Alt+G - Уточните ВОПРОС
        GUI, ADD, TEXT, cYellow, Alt+C - Узнайте у ИГРОКОВ
        GUI, ADD, TEXT, cYellow, Alt+B - SUPPORT (при блоке)

        GUI, ADD, TEXT, cYellow,
        GUI, ADD, TEXT, cBlue, ФУНКЦИИ:

        GUI, ADD, TEXT, cYellow, Alt+S - Посчитать первичный ответ
        GUI, ADD, TEXT, cYellow, Alt+F12 - Авиризоваться
        GUI, ADD, TEXT, cYellow, Alt+Y - REOF
        GUI, ADD, TEXT, cYellow, Alt+V - Поиск новых репортов
        GUI, ADD, TEXT, cYellow, F7 - Выключить поиск (Если багует)
        GUI, ADD, TEXT, cYellow, F8 - Обновить список репортов (открытая консоль с репортами)
        
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

        GUI, ADD,TEXT,cRed, Введите этот текст в консоль и нажмите пробел:
        GUI, ADD, TEXT,cYellow, "nrd+" - NonRP Drive
        GUI, ADD, TEXT,cYellow, "nsp+" - NonRP SoundPad
        GUI, ADD, TEXT,cYellow, "pg+" - PG
        GUI, ADD, TEXT,cYellow, "db+" - DB
        GUI, ADD, TEXT,cYellow, "ooc+" - OOC in IC
        GUI, ADD, TEXT,cYellow, "zap+" - Запрещенный слова (на букву П/Ш/Д)
        GUI, ADD, TEXT,cYellow, "dm+" - DM
        GUI, ADD, TEXT,cYellow, "dmzz+" - DM in ZZ
        GUI, ADD, TEXT,cYellow, "dob+" - Добив
        GUI, ADD, TEXT,cYellow, "dobu+" - Добив уводящий от RP
        GUI, ADD, TEXT,cYellow, "amo+" - Аморальные действия
        GUI, ADD, TEXT,cYellow, "lut+" - Лутерство
        GUI, ADD, TEXT,cYellow, "cbm+" - Crime без маски
        GUI, ADD, TEXT,cYellow, "bg+" - Байт Государственной структуры
        GUI, ADD, TEXT,cYellow, "bc+" - Байт Мафии
        GUI, ADD, TEXT,cYellow, "ngs+" - NonRP Гос. сотрудник
        GUI, ADD, TEXT,cYellow, "nst+" - NonRP Стяжки
        GUI, ADD, TEXT,cYellow, "npp+" - Нарушение правил поставок
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

    GUI, ADD,TEXT, cWhite, Счетчик репортов:

    DaysLater := 6
    TotalCountReports := 0

    Gui, Font, s12

    while(DaysLater >= 0)
    {
        Y_Date := A_Now
        Y_Date += -DaysLater, d
        FormatTime, FormattedDate, %Y_Date%, dd.MM.yyyy
        FormatTime, DayOfWeek, %Y_Date%, dddd

        if( DayOfWeek = "воскресенье" )
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
    GUI, ADD, TEXT, cWhite, Итого за неделю: %TotalCountReports%

    Gui, Font, s8
    GUI, ADD, TEXT, cWhite, Данные являются примерными

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