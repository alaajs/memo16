do 
local function th3boss(msg, matches) 
local w = matches[1]
local ww = matches[2]
local r3 = matches[3]
local r4 = matches[4]

--------------------[Test Bot]----------------------------
  if w =="شغال" then
 return " البوت شـغــال 🚀"
      end
------------------[End Test Bot]---------------------
    
------------[lock and unlock reply  ]-----------   
local data = load_data(_config.moderation.data)
if data[tostring(msg.to.id)] then
if data[tostring(msg.to.id)]['settings'] then
if data[tostring(msg.to.id)]['settings']['replay'] then
 lock_reply = data[tostring(msg.to.id)]['settings']['replay']  
end end end

---------------[End Function data] -----------------------
 if w=="رد" then
 if not is_sudo(msg) then
     return"♨️ للمطورين فقط ! 💯"
     end
  if ww == 'مسح الكل' then
if next(data[tostring(msg.to.id)]['replay']) == nil then
return  " عذراً 🌝".. ":{" ..msg.from.first_name.. "}:".."\n".."\n".." 🗯قائمة الردود فارغة بالفعل 💯 "
else
for k,v in pairs(data[tostring(msg.to.id)]['replay']) do
data[tostring(msg.to.id)]['replay'][tostring(k)] = nil
save_data(_config.moderation.data, data)
end
    return "☑️ تم مسح كل الردود 🚀"
end
end

  if ww == 'اضف' then
 data[tostring(msg.to.id)]['replay'][r3] = r4
save_data(_config.moderation.data, data)
 return '('..r3..')\n  ☑️ تم اضافت الرد 🚀 '
 
elseif ww == 'مسح' then
if not data[tostring(msg.to.id)]['replay'][r3] then
return '🗯هذا الرد ليش مضاف في قائمه الردود 💯'
else
data[tostring(msg.to.id)]['replay'][r3] = nil
save_data(_config.moderation.data, data)
return '('..r3..')\n  ☑️ تم مسح الرد 🚀 '
end
end
end

  if w == 'الردود' then
if next(data[tostring(msg.to.id)]['replay']) ==nil then
return '♨️ لايوجد ردود مضافه حاليا ❗️'
else
local i = 1
local message = '🌟| ردود البوت في المجموعه  💯\n\n'
for k,v in pairs(data[tostring(msg.to.id)]['replay']) do
message = message ..i..' - '..k..' [<code>' ..v.. '</code>] \n'
i = i + 1
end
return tdcli.sendMessage(msg.to.id, 0, 1, message, 1, 'html')
end

  end
  
-- by @jgjgjgjgj


------------------------------------------------
if lock_reply =="☑️"  then

if ( msg.text ) and ( msg.to.type == "channel" ) or ( msg.to.type == "chat" ) then
local su = {
"نعم حبيبي المطور 🌝❤",
"يابعد روح الزعيم 😘❤️",
"هلا بمطوري العشق أمرني"
  }
local  ss97 = {
"ها حياتي😻",
"عيونه 👀 وخشمه 👃🏻واذانه👂🏻",
"باقي ويتمدد 😎",
"ها حبي 😍",
"ها عمري 🌹",
"اجيت اجيت كافي لتصيح 🌚👌",
"هياتني اجيت 🌚❤️",
"نعم حبي 😎",
"هوه غير يسكت عاد ها شتريد 😷",
"احجي بسرعه شتريد 😤",
"ها يا كلبي ❤️",
"هم صاحو عليه راح ابدل اسمي من وراكم 😡",
"لك فداك الزعيم حبيبي انت اموووح 💋",
"دا اشرب جاي تعال غير وكت 😌",
"كول حبيبي أمرني 😍",
"احجي فضني شرايد ولا اصير ضريف ودكلي جرايد لو مجلات تره بايخه 😒😏",
"اشتعلو اهل الزعيم شتريد 😠",
"بووووووووو 👻 ها ها فزيت شفتك شفتك لا تحلف 😂",
"طالع مموجود 😒",
"هااا شنوو اكو حاته بالكروب وصحت عليه  😍💕",
"انت مو قبل يومين غلطت عليه؟  😒",
"راجع المكتب حبيبي عبالك الزعيم سهل تحجي ويا 😒",
"ياعيون الزعيم أمرني 😍",
"لك دبدل ملابسي اطلع برااااا 😵😡 ناس متستحي",
"سويت هواي شغلات سخيفه بحياتي بس عمري مصحت على واحد وكلتله انجب 😑",
"مشغول ويا ضلعتي  ☺️",

}
local bs = {
"مابوس 🌚💔",
"اآآآم͠ــ.❤️😍ــو͠و͠و͠آ͠آ͠ح͠❤️عسسـل❤️",
"الوجه ميساعد 😐✋",
"ممممح😘ححح😍😍💋",
}
local ns = {
"🌹 هــلــℌelℓoووات🌹عمـ°🌺°ــري🙊😋",
"هْـٌﮩٌﮧٌ﴿🙃﴾ﮩٌـ୭ٌ୭ـْلوُّات†😻☝️",
"هلاوو99وووات نورت/ي ❤️🙈",
"هلووات 😊🌹",
}
local sh = {
"اهلا عزيزي المطور 😽❤️",
"هلوات . نورت مطوري 😍",
}
local lovs =  "اموت عليك حياتي  😍❤️"
local  lovm = {
"اكرهك 😒👌🏿",
"دي 😑👊🏾",
"اعشكك/ج مح 😍💋",
"اي احبك/ج 😍❤️",
"ماحبك/ج 😌🖖",
"اذا كتلك/ج احبك/ج شراح تستفاد/ين 😕❤️",
"ولي ماحبك/ج 🙊💔",
}
local thb = {
"اموت عليه-ه 😻😻",
"فديته-ه 😍❤️",
"لا ماحبه-ه 🌚💔",
"اكرهه 💔🌚",
"يييع 😾👊🏿",
}
local fun = {
"دِوُؤؤم آلُِضحٍڪهـ😍 ڪبَدِي❤️",
"لتضحك 😂هواي يصير 😂فاول",
" •❤️•فٌدِيـ❤️ـِـْْت هلضحكه•❤️•",
"«يـ•ـஓـضحـ•ـﷻـ•ـك الـًَۥـ﴿😹﴾ـفطِـ❅ـيَرْ",
}
local song = {
"عمي يبو البار 🤓☝🏿️ \nصبلي لبلبي ترى اني سكران 😌 \n وصاير عصبي 😠 \nانه وياج يم شامه 😉 \nوانه ويــــاج يم شامه  شد شد  👏🏿👏🏿 \nعدكم سطح وعدنه سطح 😁 \n نتغازل لحد الصبح 😉 \n انه وياج يم شامه 😍 \n وانه وياج فخريه وانه وياج حمديه 😂🖖🏿\n ",
"ابشرك تايه بدونك 😔 \n\n واتعب من يذكرونك 😕 \n\n امفارك حتى عافيتي💔 \n\n وانه مفارك عيووونك😢",
"😁 ادك ولطم 🙅على العرفني💃 \n عليكم ادعي🙊 وكول😁 الله لاينطيكم🙊 \n احو احو💃 \n شعر🚶 لو قصيده اشاقه 👩‍👩‍👦‍👦لﻻتضحكون 😁😂"
}
----------------------------------------------


----------------------------------------------
if is_sudo(msg) and w == "زعيم" then 
return su[math.random(#su)]
elseif not is_sudo(msg) and w == "زعيم" then 
return ss97[math.random(#ss97)]
elseif w == "كول " and (ww ~= 0) then
return tdcli.sendMessage(msg.to.id, 0, 1, '<code>'..ww..'</code>', 1, 'html')
elseif w == "بوس " and (ww ~= 0) then 
return bs[math.random(#bs)]
elseif is_sudo(msg) and w =="هلو" then
return sh[math.random(#sh)]
elseif not is_sudo(msg) and w =="هلو" then
return ns[math.random(#ns)]
elseif is_sudo(msg) and w == "احبك" then
return lovs
elseif is_sudo(msg) and w == "تحبني"  then
return lovs
elseif not is_sudo(msg) and w == "احبك"  then
return lovm[math.random(#lovm)]
elseif not is_sudo(msg) and w == "تحبني" then
return lovm[math.random(#lovm)]
elseif w== "ڤير"  then
return ss97[math.random(#ss97)]
elseif w== "غني"  then
return song[math.random(#song)]
elseif w == "تحب " and (matches[2] ~= 0) then
return thb[math.random(#thb)] 
elseif not is_sudo(msg) and  w == "هه" or w =="ههه" or w == "هههه" or w == "ههههه" or w == "هههههه" or w == "ههههههه" or w == "هههههههه"  or w == "😂"  or w == "😂😂"  or w == "😂😂😂"  or w == "😂😂😂😂"  or w == "😂😂😂😂😂"  or w == "😹"  or w == "😹😹"  or w == "😹😹😹"  or w == "😹😹😹😹"  or w == "😹😹😹😹😹" then
return fun[math.random(#fun)] 
elseif not is_sudo(msg) and w== "ها"  then
return "هاي اچون چقله هاي🌚"
elseif not is_sudo(msg) and w== "🌚"  then
return "منور صخام الجدر😹☝"
elseif w== "شلونكم" or w== "شلونك" or w== "شونك" or w== "شونكم"   then
return "بخير اذا انته بخير كبد حياتي 😻❤️"
elseif w== "صاكه"  then
return "اووويلي يابه 😍❤️ دزلي صورتهه 🐸💔"
elseif w== "وينك"  then
return  "دور بكلبك وتلكاني 😍😍❤️"
elseif w== "منورين"  then
return "من نورك عمري ❤️🌺"
elseif w== "هاي"  then
return "هايات عمري 😍🍷"
elseif w== "😐"  then
return "شبيك صافن 😒🔥"
elseif w== "🙊"  then
return "فديت الخجول 🙊 😍"
elseif w== "نوره"  then
return "هاي الضلعه مالتي لحد يتحارش بيهه 😎❤️"
elseif w== "😢"  then
return "لتبجي حياتي 😢"
elseif w== "😭"  then
return "لتبجي حياتي 😭😭"
elseif w== "منور"  then
return "نِْـِْـــِْ([💡])ِْــــًِـًًْـــِْـِْـِْـورِْكِْ"
elseif w== "😒" and not is_sudo then
return "شبيك-ج عمو 🤔"
elseif w== "مح"  then
return "محات حياتي🙈❤"
elseif w== "شكرا" or w== "ثكرا" then
return "{ •• الـّ~ـعـفو •• }"
elseif w== "انته وين"  then
return "بالــبــ🏠ــيــت"
elseif w== "😍"  then
return " يَمـه̷̐ إآلُحــ❤ــب يَمـه̷̐ ❤️😍"
elseif w== "اكرهك"  then
return "اني الأكثر 🌚"
elseif w== "اريد اكبل"  then
return "خخ اني هم اريد اكبل قابل ربي وحد😹🙌️"
elseif w== "باي" or w=="بااي" or w=="باااي" or w=="بااااي" then
return "بايات حياتي ❤️ " ..msg.from.first_name.."\n"
elseif w== "ضوجه"  then
return "شي اكيد الكبل ماكو 😂 لو بعدك/ج مازاحف/ة 🙊😋"
elseif w== "اروح اصلي"  then
return "انته حافظ سوره الفاتحة😍❤️️"
elseif w== "صاك"  then
return "زاحفه 😂 منو هذا دزيلي صورهه"
elseif w== "اجيت"  then
return "كْـٌﮩٌﮧٌ﴿😍﴾ـﮩٌول الـ୭ـهـٌ୭ـْلا❤️"
elseif w== "فديتج"  then
return "ها  زاحف كمشتك"
elseif w== "طفي السبلت"  then
return "تم اطفاء السبلت بنجاح 🌚🍃"
elseif w== "حفلش"  then
return "افلش راسك 🤓"
elseif w== "حبيبتي"  then
return "منو هاي 😱 تخوني 😔☹"
elseif w== "حروح اسبح"  then
return "واخيراً 😂"
elseif w== "😔"  then
return "ليش الحلو ضايج ❤️🍃"
elseif w== "☹️"  then
return "لضوج حبيبي 😢❤️🍃"
elseif w== "جوعان"  then
return "تعال اكلني 😐😂"
elseif w== "تعال خاص" or w== "خاصك" then
return "ها شسون 😉"
elseif w== "لتحجي"  then
return "وانت شعليك حاجي من حلگگ😒"
elseif w== "معليك" or w== "شعليك" then
return "عليه ونص 😡"
elseif w== "شدسون" or w== "شداتسوون" or w== "شدتسون" then
return "نطبخ 😐"
elseif w== "شلونك زعيم"  then
return "الحمد لله وانت😍😙"
elseif w== "يومه فدوه"  then
return "فدؤه الج حياتي 😍😙"
elseif w== "افلش"  then
return "باند عام من 30 بوت 😉"
elseif w== "احبج"  then
return "يخي احترم شعوري 😢"
elseif w== "شكو ماكو"  then
return "غيرك براسي ماكو 💨😽🚬️"
elseif w== "اغير جو"  then
return "😂 تغير جو لو تسحف 🐍 عل بنات"
elseif w== "😋"  then
return "طبب لسانك جوه عيب 😌"
elseif w== "🤔"  then
return "ليروح بالك بعيد 🌝🌹"
elseif w== "😡"  then 
return "ابرد  🚒"  
elseif w== "مرحبا"  then
return "مراحب 😍❤️ نورت-ي 🌹"
elseif w== "سلام" or w== "السلام عليكم" or w== "سلام عليكم" or w=="سلامن عليكم" or w=="السلامن عليكم" then
return "وعليكم السلام اغاتي🌝👋" 
elseif w== "واكف"  then
return "يخي مابيه شي ليش تتفاول😢" 
elseif w== "البوت واكف"  then
return "هياتني 😐"
elseif w == "ضايج"  then 
return "ليش ضايج حياتي"
elseif w== "ضايجه"  then
return "منو مضوجج كبدايتي"
elseif w== "😳"  then
return "❌لـŃØـ😌✋ـ✿ـا❌ تصدم ڪفشةة. ْْعمري. هية.  ✾ هٌـஆــٌُأإي  ٱٳلدنيه👻 "
elseif w== "صدك"  then
return "قابل اجذب عليك!؟ 🌚"
elseif w== "شغال"  then
return "نعم عزيزي باقي واتمدد 😎🌿"
elseif w== "تخليني"  then
return "اخليك بزاويه 380 درجه وانته تعرف الباقي 🐸"
elseif w== "فديتك" or w== "فديتنك"  then
return  "فداك الكون 🌍 وماي العيون 😍❤️"
elseif w== "بوت"  then
return "أسمي زعيم 🌚🌸"
elseif w== "مساعدة"  then
return "لعرض قائمة المساعدة اكتب الاوامر 🌚❤️"
elseif w== "زاحف"  then
return "زاحف عله خالتك الشكره 🌝"
elseif w== "حلو"  then
return "انت الاحلى 🌚❤️"
elseif w== "تبادل"  then
return "كافي ملينه تبادل 😕💔"
elseif w== "عاش"  then
return "الحلو 🌝🌷"
elseif w== "مات"  then
return "أبو الحمامات 🕊🕊"
elseif w== "ورده" or w== "وردة"  then
return "أنت/ي  عطرها 🌹🌸"
elseif w== "شسمك"  then
return "مكتوب فوك 🌚🌿"
elseif w== "فديت" or w=="فطيت" then
return "فداك/ج 💞🌸"
elseif w== "واو"  then
return "قميل 🌝🌿"
elseif w== "زاحفه" or w== "زاحفة"  then
return "لو زاحفتلك جان ماكلت زاحفه 🌝🌸"
elseif w== "حبيبي" or w=="حبي"  then
return "بعد روحي 😍❤️ تفضل"
elseif w== "حبيبتي"  then
return "تحبك وتحب عليك 🌝🌷"
elseif w== "حياتي"  then
return "ها حياتي 😍🌿"
elseif w== "عمري"  then
return "خلصته دياحه وزحف 🌝🌿 "
elseif w== "اسكت"  then
return "وك معلم 🌚💞"
elseif w== "بتحبني"  then
return "بحبك اد الكون 😍🌷"
elseif w== "المعزوفه" or w=="المعزوفة" or w=="معزوفه" then
return "طرطاا طرطاا طرطاا 😂👌"
elseif w== "موجود"  then
return "تفضل عزيزي 🌝🌸"
elseif w== "اكلك"  then
return ".كول حياتي 😚🌿"
elseif w== "فدوه" or w=="فدوة" or w=="فطوه" or w=="فطوة" then
return "لكلبك/ج 😍❤️"
elseif w== "دي"  then
return "دييييات 🌝"
elseif w== "اشكرك"  then
return "بخدمتك/ج حبي ❤"
elseif w== "😉"  then
return "😻🙈"

---------------------------------------------
elseif w == "انجب" or w == "نجب" or w=="جب" then
if is_sudo(msg) then 
return  "حاضر تاج راسي انجبيت 😇 "
elseif is_admin(msg) then
return  " لخاطرك راح اسكت لان ادمن واحترمك 😌"
elseif is_owner(msg) then
return  "لخاطرك راح اسكت لان مدير وع راسي  😌"
elseif is_mod(msg) then
return  "فوك مامصعدك ادمن ؟؟ انته انجب 😏"
else
return  "انجب انته لاتندفر 😏"
end 
elseif  data[tostring(msg.to.id)]['replay'] and data[tostring(msg.to.id)]['replay'][w] then
return  data[tostring(msg.to.id)]['replay'][w] 
end end  end  
---------------------------------------------
    
---------------------------------------------

end
return {
patterns = {
"^(تحب )",
"^(كول )(.*)$",
"^(بوس )", 
"^(الردود)$",
"^(رد) (اضف) ([^%s]+) (.+)$",
"^(رد) (مسح الكل)$",
"^(رد) (مسح) (.*)$",
"(.*)" 
},
run = th3boss,
}
end
-- BY @jgjgjgjgj
