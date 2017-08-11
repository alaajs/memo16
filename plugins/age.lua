local function th3boss(msg,matches)
local kyear = tonumber(os.date("%Y"))
local kmonth = tonumber(os.date("%m"))
local kday = tonumber(os.date("%d"))
local dyear = matches[1]
local dmonth = matches[2]
local dday = matches[3]
--
local agee = kyear - dyear
local ageee = kmonth - dmonth
local ageeee = kday - dday
--
local th3boss1 = agee * 360 + ageee * 30 + ageeee
local th3boss2 = th3boss1 / 7
local th3boss3 = th3boss1 / 30
local th3boss4 = th3boss1 / 360
local th3boss5 = th3boss1 * 24
local th3boss6 = th3boss5 * 60
local th3boss7 = th3boss6 * 60
local th3boss8 = " 👮🏼 مرحبا عزيزي"
.."\n 👮🏼 "..msg.from.first_name.."\n"
.."\n 👮🏼 لقد قمت بحسب عمرك👇🏻  \n\n"

.."🌟|سنه "..agee.."\n"
.."🌟|شهر "..ageee.."\n"
.."🌟|يوم "..ageeee.."\n"
.."🌟|من الايام "..th3boss2.."\n"
.."🌟|من الاسابيع "..th3boss3.."\n"
.."🌟|من الاشهر "..th3boss4.."\n"
.."🌟|من السنين "..th3boss5.."\n"
.."🌟|من الساعات "..th3boss6.."\n"
.."🌟|من الدقائق "..th3boss7.."من الثواني ".."\n"
return th3boss8
end
return {
    patterns = {
        "^مواليدي (.+)/(.+)/(.+)"
    },
    run = th3boss
}
