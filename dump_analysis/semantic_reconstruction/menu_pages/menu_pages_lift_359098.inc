// [C] Static lift from0x359098..0x35a474.
MenuPageTextPool text_pool{wide_buffer(a)};
[[maybe_unused]] MenuPageTextRef label_1{};
[[maybe_unused]] MenuPageTextRef literal_2{};
[[maybe_unused]] std::string owned_text_3{};
[[maybe_unused]] MenuPageTextRef label_4{};
[[maybe_unused]] MenuPageTextRef label_5{};
[[maybe_unused]] bool pressed_7{};
[[maybe_unused]] MenuPageTextRef label_8{};
[[maybe_unused]] MenuPageTextRef label_9{};
[[maybe_unused]] bool pressed_11{};
[[maybe_unused]] std::uint32_t value_12{};
[[maybe_unused]] MenuPageTextRef label_13{};
[[maybe_unused]] MenuPageTextRef label_14{};
[[maybe_unused]] bool pressed_16{};
[[maybe_unused]] MenuPageTextRef label_17{};
[[maybe_unused]] MenuPageTextRef label_18{};
[[maybe_unused]] bool pressed_20{};
[[maybe_unused]] MenuPageTextRef label_21{};
[[maybe_unused]] MenuPageTextRef label_22{};
[[maybe_unused]] bool pressed_24{};
[[maybe_unused]] std::uint32_t value_25{};
[[maybe_unused]] std::uint32_t value_26{};
[[maybe_unused]] MenuPageTextRef label_27{};
[[maybe_unused]] MenuPageTextRef label_28{};
[[maybe_unused]] bool pressed_30{};
[[maybe_unused]] std::uint32_t value_31{};
[[maybe_unused]] std::uint32_t value_32{};
[[maybe_unused]] std::uint32_t value_33{};
[[maybe_unused]] MenuPageTextRef label_34{};
[[maybe_unused]] MenuPageTextRef label_35{};
[[maybe_unused]] bool pressed_37{};
[[maybe_unused]] MenuPageTextRef label_38{};
[[maybe_unused]] MenuPageTextRef label_39{};
[[maybe_unused]] bool pressed_41{};
[[maybe_unused]] MenuPageTextRef label_42{};
[[maybe_unused]] MenuPageTextRef literal_43{};
[[maybe_unused]] std::string owned_text_44{};
[[maybe_unused]] MenuPageTextRef label_45{};
[[maybe_unused]] MenuPageTextRef label_46{};
[[maybe_unused]] bool pressed_48{};
[[maybe_unused]] std::uint32_t value_49{};
[[maybe_unused]] MenuPageTextRef label_50{};
[[maybe_unused]] MenuPageTextRef label_51{};
[[maybe_unused]] bool pressed_53{};
[[maybe_unused]] MenuPageTextRef literal_54{};
[[maybe_unused]] MenuPageTextRef label_55{};
[[maybe_unused]] bool pressed_57{};
[[maybe_unused]] MenuPageTextRef label_58{};
[[maybe_unused]] MenuPageTextRef label_59{};
[[maybe_unused]] bool pressed_61{};
[[maybe_unused]] MenuPageTextRef literal_62{};
[[maybe_unused]] MenuPageTextRef label_63{};
[[maybe_unused]] bool pressed_65{};
[[maybe_unused]] MenuPageTextRef label_66{};
[[maybe_unused]] std::string owned_text_67{};
[[maybe_unused]] MenuPageTextRef label_68{};
[[maybe_unused]] std::string owned_text_69{};
[[maybe_unused]] MenuPageTextRef label_70{};
[[maybe_unused]] std::string owned_text_71{};
[[maybe_unused]] MenuPageTextRef label_72{};
[[maybe_unused]] std::string owned_text_73{};
[[maybe_unused]] MenuPageTextRef label_74{};
[[maybe_unused]] std::string owned_text_75{};
[[maybe_unused]] MenuPageTextRef label_76{};
[[maybe_unused]] std::string owned_text_77{};
[[maybe_unused]] MenuPageTextRef label_78{};
[[maybe_unused]] bool pressed_80{};
[[maybe_unused]] std::uint32_t value_81{};
[[maybe_unused]] MenuPageTextRef label_82{};
[[maybe_unused]] std::string owned_text_83{};
[[maybe_unused]] MenuPageTextRef label_84{};
[[maybe_unused]] std::string owned_text_85{};
[[maybe_unused]] MenuPageTextRef label_86{};
[[maybe_unused]] std::string owned_text_87{};
[[maybe_unused]] MenuPageTextRef label_88{};
[[maybe_unused]] std::string owned_text_89{};
[[maybe_unused]] MenuPageTextRef label_90{};
[[maybe_unused]] std::string owned_text_91{};
[[maybe_unused]] MenuPageTextRef label_92{};
[[maybe_unused]] bool pressed_94{};
[[maybe_unused]] MenuPageTextRef label_95{};
[[maybe_unused]] MenuPageTextRef literal_96{};
[[maybe_unused]] std::string owned_text_97{};
[[maybe_unused]] MenuPageTextRef literal_98{};
[[maybe_unused]] MenuPageTextRef literal_99{};
[[maybe_unused]] MenuPageTextRef label_100{};
[[maybe_unused]] std::string owned_text_101{};
[[maybe_unused]] MenuPageTextRef label_102{};
[[maybe_unused]] std::string owned_text_103{};
[[maybe_unused]] MenuPageTextRef label_104{};
[[maybe_unused]] std::string owned_text_105{};
[[maybe_unused]] MenuPageTextRef label_106{};
[[maybe_unused]] std::string owned_text_107{};
[[maybe_unused]] MenuPageTextRef label_108{};
[[maybe_unused]] std::string owned_text_109{};
[[maybe_unused]] MenuPageTextRef label_110{};
[[maybe_unused]] std::string owned_text_111{};
[[maybe_unused]] MenuPageTextRef label_112{};
[[maybe_unused]] bool pressed_114{};
[[maybe_unused]] std::uint32_t value_115{};
[[maybe_unused]] MenuPageTextRef label_116{};
[[maybe_unused]] std::string owned_text_117{};
[[maybe_unused]] MenuPageTextRef label_118{};
[[maybe_unused]] std::string owned_text_119{};
[[maybe_unused]] MenuPageTextRef label_120{};
[[maybe_unused]] std::string owned_text_121{};
[[maybe_unused]] MenuPageTextRef label_122{};
[[maybe_unused]] std::string owned_text_123{};
[[maybe_unused]] MenuPageTextRef label_124{};
[[maybe_unused]] std::string owned_text_125{};
[[maybe_unused]] MenuPageTextRef label_126{};
[[maybe_unused]] bool pressed_128{};
label_1=page_label(s,text_pool,32,menu_literal_1,{"Aim","Прицел","瞄准"});
literal_2=page_literal(text_pool,24,menu_literal_2);
owned_text_3=std::string(literal_2);
child(s,m,a,owned_text_3,std::string(label_1),Vec2{0.0f,-1.0f},(1!=0));
label_4=page_label(s,text_pool,-376,menu_literal_3,{"Snaps onto your target","Прилипает к цели","自动锁定目标"});
label_5=page_label(s,text_pool,24,menu_literal_4,{"Aimbot","Прицел","自瞄机器人"});
{ MenuControlRequest control_6;
control_6.role=MenuControlRole::checkbox;
control_6.site=0x3591f0;control_6.primitive=0x3bd114;
control_6.label=std::string(label_5);
control_6.value=0x3e7928;
control_6.key=0x3f4438;
control_6.color=0;
control_6.description=std::string(label_4);
control_6.register_search=(1!=0);
pressed_7=control(a,control_6).pressed;
}
call(a,0x398bec,{std::int32_t(1),std::int32_t(4278190335)});
label_8=page_label(s,text_pool,-296,menu_literal_5,{"Curves your projectiles towards the target","Сгибает снаряды к цели","子弹击向连线目标"});
label_9=page_label(s,text_pool,24,menu_literal_6,{"PSilent","П-сайленс","静默子弹追踪"});
{ MenuControlRequest control_10;
control_10.role=MenuControlRole::checkbox;
control_10.site=0x35929e;control_10.primitive=0x3bd114;
control_10.label=std::string(label_9);
control_10.value=0x3d7e78;
control_10.key=0;
control_10.color=0;
control_10.description=std::string(label_8);
control_10.register_search=(0!=0);
pressed_11=control(a,control_10).pressed;
}
call(a,0x39890c,{std::int32_t(1)});
value_12=raw(s,0x3d7e78)&255u;
if((value_12==0)) {
} else {
    label_13=page_label(s,text_pool,-296,menu_literal_7,{"Finds valid higher-angle trajectory","Находит траекторию с высокого угла","寻找更高角度的有效轨迹"});
    label_14=page_label(s,text_pool,-376,menu_literal_8,{"High Grenade Prediction","Высокая предикция гранаты","高抛物线预测"});
    { MenuControlRequest control_15;
    control_15.role=MenuControlRole::checkbox;
    control_15.site=0x35934f;control_15.primitive=0x3bd114;
    control_15.label=std::string(label_14);
    control_15.value=0x3e7018;
    control_15.key=0;
    control_15.color=0;
    control_15.description=std::string(label_13);
    control_15.register_search=(0!=0);
    pressed_16=control(a,control_15).pressed;
    }
    label_17=page_label(s,text_pool,-296,menu_literal_9,{"Targets saved map position","Цель — сохранённая позиция","锁定已保存位置"});
    label_18=page_label(s,text_pool,-376,menu_literal_10,{"Target Saved Position","Цель: сохранённая позиция","目标保存位置"});
    { MenuControlRequest control_19;
    control_19.role=MenuControlRole::checkbox;
    control_19.site=0x3593ec;control_19.primitive=0x3bd114;
    control_19.label=std::string(label_18);
    control_19.value=0x3e72e8;
    control_19.key=0;
    control_19.color=0;
    control_19.description=std::string(label_17);
    control_19.register_search=(0!=0);
    pressed_20=control(a,control_19).pressed;
    }
}
label_21=page_label(s,text_pool,-296,menu_literal_11,{"Shoots automatically when target is hittable","Стреляет при доступной цели","目标可命中时自动开火"});
label_22=page_label(s,text_pool,-416,menu_literal_12,{"Autofire","Автострельба","自动开火"});
{ MenuControlRequest control_23;
control_23.role=MenuControlRole::checkbox;
control_23.site=0x359489;control_23.primitive=0x3bd114;
control_23.label=std::string(label_22);
control_23.value=0x3e5098;
control_23.key=0;
control_23.color=0;
control_23.description=std::string(label_21);
control_23.register_search=(0!=0);
pressed_24=control(a,control_23).pressed;
}
call(a,0x398bec,{std::int32_t(1),std::int32_t(4278190335)});
value_25=raw(s,0x3e5098)&255u;
if((value_25==0)) {
    value_33=raw(s,0x3d7fb8)&255u;
    if((value_33==0)) {
        s.values[0x3e4ff8]=std::uint32_t(0);
    } else {
        if((value_25!=0)) {
        } else {
            s.values[0x3e4ff8]=std::uint32_t(0);
        }
    }
} else {
    value_26=raw(s,0x3d7fb8)&255u;
    if((value_26==0)) {
        s.values[0x3e4ff8]=std::uint32_t(0);
    } else {
        label_27=page_label(s,text_pool,-296,menu_literal_13,{"Waits until instant hit is possible","Ждёт возможности инстант хита","等待可瞬时命中状态"});
        label_28=page_label(s,text_pool,-376,menu_literal_14,{"Wait For InstantHit","Ждать инстант хит","等待瞬时命中"});
        { MenuControlRequest control_29;
        control_29.role=MenuControlRole::checkbox;
        control_29.site=0x35954d;control_29.primitive=0x3bd114;
        control_29.label=std::string(label_28);
        control_29.value=0x3e4ff8;
        control_29.key=0;
        control_29.color=0;
        control_29.description=std::string(label_27);
        control_29.register_search=(0!=0);
        pressed_30=control(a,control_29).pressed;
        }
        value_31=raw(s,0x3e5098)&255u;
        value_32=raw(s,0x3d7fb8)&255u;
        if((value_32==0)) {
            s.values[0x3e4ff8]=std::uint32_t(0);
        } else {
            if((value_31!=0)) {
            } else {
                s.values[0x3e4ff8]=std::uint32_t(0);
            }
        }
    }
}
call(a,0x39890c,{std::int32_t(1)});
label_34=page_label(s,text_pool,-376,menu_literal_15,{"Humanizes your aim","Смягчает аим","让瞄准更自然"});
label_35=page_label(s,text_pool,-352,menu_literal_16,{"Use Smoothing","Сглаживание","平滑"});
{ MenuControlRequest control_36;
control_36.role=MenuControlRole::checkbox;
control_36.site=0x35960b;control_36.primitive=0x3bd114;
control_36.label=std::string(label_35);
control_36.value=0x3e9b38;
control_36.key=0;
control_36.color=0;
control_36.description=std::string(label_34);
control_36.register_search=(0!=0);
pressed_37=control(a,control_36).pressed;
}
label_38=page_label(s,text_pool,-296,menu_literal_17,{"Only targets visible players","Только видимые цели","只锁定可见目标"});
label_39=page_label(s,text_pool,-352,menu_literal_18,{"Use Vischeck","Проверка видимости","可见性检测"});
{ MenuControlRequest control_40;
control_40.role=MenuControlRole::checkbox;
control_40.site=0x3596a7;control_40.primitive=0x3bd114;
control_40.label=std::string(label_39);
control_40.value=0x3d7d88;
control_40.key=0;
control_40.color=0;
control_40.description=std::string(label_38);
control_40.register_search=(0!=0);
pressed_41=control(a,control_40).pressed;
}
cleanup(a);
call(a,0x39ac04,{0.0f,-1.0f});
label_42=page_label(s,text_pool,-338,menu_literal_19,{"Aim Modifications","Модификации аима","瞄准调整"});
literal_43=page_literal(text_pool,24,menu_literal_20);
owned_text_44=std::string(literal_43);
child(s,m,a,owned_text_44,std::string(label_42),Vec2{0.0f,-1.0f},(1!=0));
label_45=page_label(s,text_pool,-376,menu_literal_21,{"Target helicopters","Целится в вертолёты","锁定直升机"});
label_46=page_label(s,text_pool,-338,menu_literal_22,{"Target Helicopter","Цель вертолёт","锁定直升机"});
{ MenuControlRequest control_47;
control_47.role=MenuControlRole::checkbox;
control_47.site=0x3597ee;control_47.primitive=0x3bd114;
control_47.label=std::string(label_46);
control_47.value=0x3e9d68;
control_47.key=0;
control_47.color=0;
control_47.description=std::string(label_45);
control_47.register_search=(0!=0);
pressed_48=control(a,control_47).pressed;
}
value_49=raw(s,0x3d7e78)&255u;
if((value_49==0)) {
} else {
    label_50=page_label(s,text_pool,-320,menu_literal_23,{"Adds miss chance","Добавляет шанс промахов","增加失误概率"});
    label_51=page_label(s,text_pool,-416,menu_literal_24,{"Hit chance","Шанс попадания","命中率"});
    { MenuControlRequest control_52;
    control_52.role=MenuControlRole::checkbox;
    control_52.site=0x359898;control_52.primitive=0x3bd114;
    control_52.label=std::string(label_51);
    control_52.value=0x3f7d58;
    control_52.key=0;
    control_52.color=0;
    control_52.description=std::string(label_50);
    control_52.register_search=(0!=0);
    pressed_53=control(a,control_52).pressed;
    }
    literal_54=page_literal(text_pool,24,menu_literal_25);
    label_55=page_label(s,text_pool,-416,menu_literal_26,{"Hit percent","Процент попадания","命中百分比"});
    { MenuControlRequest control_56;
    control_56.role=MenuControlRole::slider_float;
    control_56.site=0x359918;control_56.primitive=0x3c43f4;
    control_56.label=std::string(label_55);
    control_56.value=0x3f7ee8;
    control_56.minimum_float=0.0f;
    control_56.maximum_float=100.0f;
    control_56.format=std::string(literal_54);
    control_56.flags=std::uint32_t(0);
    pressed_57=control(a,control_56).pressed;
    }
}
label_58=page_label(s,text_pool,-376,menu_literal_27,{"Keeps current target","Фиксирует цель","保持当前目标"});
label_59=page_label(s,text_pool,-416,menu_literal_28,{"Keep target","Фиксация цели","保持目标"});
{ MenuControlRequest control_60;
control_60.role=MenuControlRole::checkbox;
control_60.site=0x3599b6;control_60.primitive=0x3bd114;
control_60.label=std::string(label_59);
control_60.value=0x3d8008;
control_60.key=0;
control_60.color=0;
control_60.description=std::string(label_58);
control_60.register_search=(0!=0);
pressed_61=control(a,control_60).pressed;
}
literal_62=page_literal(text_pool,24,menu_literal_29);
label_63=page_label(s,text_pool,32,menu_literal_30,{"Smooth","Сглаживание","平滑"});
{ MenuControlRequest control_64;
control_64.role=MenuControlRole::slider_float;
control_64.site=0x359a3d;control_64.primitive=0x3c43f4;
control_64.label=std::string(label_63);
control_64.value=0x3edd48;
control_64.minimum_float=0.009999999776482582f;
control_64.maximum_float=1.0f;
control_64.format=std::string(literal_62);
control_64.flags=std::uint32_t(0);
pressed_65=control(a,control_64).pressed;
}
label_66=page_label(s,text_pool,32,menu_literal_31,{"Head","Голова","头"});
owned_text_67=std::string(label_66);
label_68=page_label(s,text_pool,-440,menu_literal_32,{"Neck","Шея","颈"});
owned_text_69=std::string(label_68);
label_70=page_label(s,text_pool,-435,menu_literal_33,{"Spine","Позвоночник","脊"});
owned_text_71=std::string(label_70);
label_72=page_label(s,text_pool,-352,menu_literal_34,{"Lower Spine","Нижняя часть позвоночника","下脊"});
owned_text_73=std::string(label_72);
label_74=page_label(s,text_pool,-424,menu_literal_35,{"Hitscan","Трассировка","即时命中检测"});
owned_text_75=std::string(label_74);
label_76=page_label(s,text_pool,-338,menu_literal_36,{"Hitscan Priority","Приоритет трассировки","即时命中判定优先级"});
owned_text_77=std::string(label_76);
label_78=page_label(s,text_pool,-416,menu_literal_37,{"Aimbone","Кость","瞄准骨骼"});
{ MenuControlRequest control_79;
control_79.role=MenuControlRole::combo_strings;
control_79.site=0x359c90;control_79.primitive=0x3bf008;
control_79.label=std::string(label_78);
control_79.value=0x3fccd8;
control_79.choices={owned_text_67,owned_text_69,owned_text_71,owned_text_73,owned_text_75,owned_text_77};
pressed_80=control(a,control_79).pressed;
}
value_81=raw(s,0x3fccd8);
if((value_81!=5)) {
} else {
    label_82=page_label(s,text_pool,32,menu_literal_31,{"Head","Голова","头部"});
    owned_text_83=std::string(label_82);
    label_84=page_label(s,text_pool,-440,menu_literal_32,{"Neck","Шея","颈部"});
    owned_text_85=std::string(label_84);
    label_86=page_label(s,text_pool,-435,menu_literal_33,{"Spine","Позвоночник","脊柱"});
    owned_text_87=std::string(label_86);
    label_88=page_label(s,text_pool,-352,menu_literal_34,{"Lower Spine","Нижний отдел позвоночника","下脊柱"});
    owned_text_89=std::string(label_88);
    label_90=page_label(s,text_pool,-424,menu_literal_38,{"Pelvis","Таз","骨盆"});
    owned_text_91=std::string(label_90);
    label_92=page_label(s,text_pool,-338,menu_literal_36,{"Hitscan Priority","Приоритет","射擊 优先级"});
    { MenuControlRequest control_93;
    control_93.role=MenuControlRole::combo_strings;
    control_93.site=0x359ebd;control_93.primitive=0x3bf008;
    control_93.label=std::string(label_92);
    control_93.value=0x3fceb8;
    control_93.choices={owned_text_83,owned_text_85,owned_text_87,owned_text_89,owned_text_91};
    pressed_94=control(a,control_93).pressed;
    }
}
label_95=page_label(s,text_pool,-338,menu_literal_39,{"Secondary Aim Key","Вторичный ключ","副瞄准键"});
call(a,0x3c4e90,{std::string(label_95)});
call(a,0x39ac04,{0.0f,-1.0f});
literal_96=page_literal(text_pool,24,menu_literal_40);
owned_text_97=std::string(literal_96);
literal_98=page_literal(text_pool,-338,menu_literal_39);
literal_99=page_literal(text_pool,32,menu_literal_41);
keybind(a,(std::string((std::string(owned_text_97)+std::string(literal_98)))+std::string(literal_99)),0x3f4498,(1!=0),0x359fbb);
label_100=page_label(s,text_pool,32,menu_literal_31,{"Head","Голова","头"});
owned_text_101=std::string(label_100);
label_102=page_label(s,text_pool,-440,menu_literal_32,{"Neck","Шея","颈"});
owned_text_103=std::string(label_102);
label_104=page_label(s,text_pool,-435,menu_literal_33,{"Spine","Позвоночник","脊"});
owned_text_105=std::string(label_104);
label_106=page_label(s,text_pool,-352,menu_literal_34,{"Lower Spine","Нижняя часть позвоночника","下脊"});
owned_text_107=std::string(label_106);
label_108=page_label(s,text_pool,-416,menu_literal_35,{"Hitscan","Трассировка","即时命中检测"});
owned_text_109=std::string(label_108);
label_110=page_label(s,text_pool,-338,menu_literal_36,{"Hitscan Priority","Приоритет трассировки","即时命中判定优先级"});
owned_text_111=std::string(label_110);
label_112=page_label(s,text_pool,-376,menu_literal_42,{"Secondary Aimbone","Вторичная кость","副瞄准骨骼"});
{ MenuControlRequest control_113;
control_113.role=MenuControlRole::combo_strings;
control_113.site=0x35a20f;control_113.primitive=0x3bf008;
control_113.label=std::string(label_112);
control_113.value=0x3fcd28;
control_113.choices={owned_text_101,owned_text_103,owned_text_105,owned_text_107,owned_text_109,owned_text_111};
pressed_114=control(a,control_113).pressed;
}
value_115=raw(s,0x3fcd28);
if((value_115!=5)) {
} else {
    label_116=page_label(s,text_pool,32,menu_literal_31,{"Head","Голова","头部"});
    owned_text_117=std::string(label_116);
    label_118=page_label(s,text_pool,-440,menu_literal_32,{"Neck","Шея","颈部"});
    owned_text_119=std::string(label_118);
    label_120=page_label(s,text_pool,-435,menu_literal_33,{"Spine","Позвоночник","脊柱"});
    owned_text_121=std::string(label_120);
    label_122=page_label(s,text_pool,-352,menu_literal_34,{"Lower Spine","Нижний отдел позвоночника","下脊柱"});
    owned_text_123=std::string(label_122);
    label_124=page_label(s,text_pool,-424,menu_literal_38,{"Pelvis","Таз","骨盆"});
    owned_text_125=std::string(label_124);
    label_126=page_label(s,text_pool,-376,menu_literal_43,{"Secondary Priority","Вторичный приоритет","副优先级"});
    { MenuControlRequest control_127;
    control_127.role=MenuControlRole::combo_strings;
    control_127.site=0x35a43c;control_127.primitive=0x3bf008;
    control_127.label=std::string(label_126);
    control_127.value=0x3fcf08;
    control_127.choices={owned_text_117,owned_text_119,owned_text_121,owned_text_123,owned_text_125};
    pressed_128=control(a,control_127).pressed;
    }
}
cleanup(a);
