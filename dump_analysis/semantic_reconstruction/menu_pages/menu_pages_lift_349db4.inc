// [C] Static lift from0x349db4..0x34adf7.
MenuPageTextPool text_pool{wide_buffer(a)};
[[maybe_unused]] MenuPageTextRef label_1{};
[[maybe_unused]] MenuPageTextRef literal_2{};
[[maybe_unused]] std::string owned_text_3{};
[[maybe_unused]] MenuPageTextRef label_4{};
[[maybe_unused]] MenuPageTextRef label_5{};
[[maybe_unused]] bool pressed_7{};
[[maybe_unused]] std::uint32_t value_8{};
[[maybe_unused]] MenuPageTextRef literal_9{};
[[maybe_unused]] MenuPageTextRef label_10{};
[[maybe_unused]] bool pressed_12{};
[[maybe_unused]] MenuPageTextRef label_13{};
[[maybe_unused]] std::string owned_text_14{};
[[maybe_unused]] MenuPageTextRef label_15{};
[[maybe_unused]] std::string owned_text_16{};
[[maybe_unused]] MenuPageTextRef label_17{};
[[maybe_unused]] bool pressed_19{};
[[maybe_unused]] MenuPageTextRef label_20{};
[[maybe_unused]] MenuPageTextRef label_21{};
[[maybe_unused]] bool pressed_23{};
[[maybe_unused]] std::uint32_t value_24{};
[[maybe_unused]] MenuPageTextRef literal_25{};
[[maybe_unused]] MenuPageTextRef label_26{};
[[maybe_unused]] bool pressed_28{};
[[maybe_unused]] MenuPageTextRef label_29{};
[[maybe_unused]] MenuPageTextRef label_30{};
[[maybe_unused]] bool pressed_32{};
[[maybe_unused]] MenuPageTextRef label_33{};
[[maybe_unused]] MenuPageTextRef label_34{};
[[maybe_unused]] bool pressed_36{};
[[maybe_unused]] MenuPageTextRef label_37{};
[[maybe_unused]] MenuPageTextRef label_38{};
[[maybe_unused]] bool pressed_40{};
[[maybe_unused]] std::uint32_t value_41{};
[[maybe_unused]] MenuPageTextRef literal_42{};
[[maybe_unused]] MenuPageTextRef label_43{};
[[maybe_unused]] bool pressed_45{};
[[maybe_unused]] MenuPageTextRef label_46{};
[[maybe_unused]] MenuPageTextRef label_47{};
[[maybe_unused]] bool pressed_49{};
[[maybe_unused]] MenuPageTextRef label_50{};
[[maybe_unused]] bool pressed_52{};
[[maybe_unused]] std::uint32_t value_53{};
[[maybe_unused]] MenuPageTextRef literal_54{};
[[maybe_unused]] MenuPageTextRef label_55{};
[[maybe_unused]] bool pressed_57{};
[[maybe_unused]] MenuPageTextRef label_58{};
[[maybe_unused]] bool pressed_60{};
[[maybe_unused]] std::uint32_t value_61{};
[[maybe_unused]] MenuPageTextRef literal_62{};
[[maybe_unused]] MenuPageTextRef label_63{};
[[maybe_unused]] bool pressed_65{};
[[maybe_unused]] MenuPageTextRef label_66{};
[[maybe_unused]] MenuPageTextRef literal_67{};
[[maybe_unused]] std::string owned_text_68{};
[[maybe_unused]] MenuPageTextRef label_69{};
[[maybe_unused]] MenuPageTextRef label_70{};
[[maybe_unused]] bool pressed_72{};
[[maybe_unused]] std::uint32_t value_73{};
[[maybe_unused]] MenuPageTextRef label_74{};
[[maybe_unused]] std::string owned_text_75{};
[[maybe_unused]] MenuPageTextRef label_76{};
[[maybe_unused]] std::string owned_text_77{};
[[maybe_unused]] MenuPageTextRef label_78{};
[[maybe_unused]] std::string owned_text_79{};
[[maybe_unused]] MenuPageTextRef label_80{};
[[maybe_unused]] std::string owned_text_81{};
[[maybe_unused]] MenuPageTextRef label_82{};
[[maybe_unused]] std::string owned_text_83{};
[[maybe_unused]] MenuPageTextRef label_84{};
[[maybe_unused]] std::string owned_text_85{};
[[maybe_unused]] MenuPageTextRef label_86{};
[[maybe_unused]] bool pressed_88{};
[[maybe_unused]] MenuPageTextRef label_89{};
[[maybe_unused]] MenuPageTextRef label_90{};
[[maybe_unused]] bool pressed_92{};
[[maybe_unused]] MenuPageTextRef label_93{};
[[maybe_unused]] MenuPageTextRef label_94{};
[[maybe_unused]] bool pressed_96{};
[[maybe_unused]] MenuPageTextRef label_97{};
[[maybe_unused]] MenuPageTextRef label_98{};
[[maybe_unused]] bool pressed_100{};
[[maybe_unused]] MenuPageTextRef label_101{};
[[maybe_unused]] MenuPageTextRef label_102{};
[[maybe_unused]] bool pressed_104{};
[[maybe_unused]] MenuPageTextRef label_105{};
[[maybe_unused]] MenuPageTextRef label_106{};
[[maybe_unused]] bool pressed_108{};
label_1=page_label(s,text_pool,-408,menu_literal_99,{"Visuals","Визуалы","视觉效果"});
literal_2=page_literal(text_pool,24,menu_literal_100);
owned_text_3=std::string(literal_2);
child(s,m,a,owned_text_3,std::string(label_1),Vec2{0.0f,-1.0f},(1!=0));
label_4=page_label(s,text_pool,-472,menu_literal_711,{"Modify ambient, allowing you to see clearer in dark places","Изменяет окружающее освещение, позволяя лучше видеть в тёмных местах","修改环境光，让你在黑暗的地方看得更清楚"});
label_5=page_label(s,text_pool,24,menu_literal_712,{"Ambient","Окружающее освещение","环境光"});
{ MenuControlRequest control_6;
control_6.role=MenuControlRole::checkbox;
control_6.site=0x349f10;control_6.primitive=0x3bd114;
control_6.label=std::string(label_5);
control_6.value=0x3f8998;
control_6.key=0x3f8d28;
control_6.color=0x3f8b28;
control_6.description=std::string(label_4);
control_6.register_search=(1!=0);
pressed_7=control(a,control_6).pressed;
}
value_8=raw(s,0x3f8998)&255u;
if((value_8==0)) {
} else {
    literal_9=page_literal(text_pool,24,menu_literal_29);
    label_10=page_label(s,text_pool,-400,menu_literal_713,{"Ambient Multiplier","Множитель окружающего","环境光倍数"});
    { MenuControlRequest control_11;
    control_11.role=MenuControlRole::slider_float;
    control_11.site=0x349fa4;control_11.primitive=0x3c43f4;
    control_11.label=std::string(label_10);
    control_11.value=0x3f8c38;
    control_11.minimum_float=0.5f;
    control_11.maximum_float=4.0f;
    control_11.format=std::string(literal_9);
    control_11.flags=std::uint32_t(0);
    pressed_12=control(a,control_11).pressed;
    }
    label_13=page_label(s,text_pool,32,menu_literal_714,{"Flat","Плоский","平面"});
    owned_text_14=std::string(label_13);
    label_15=page_label(s,text_pool,-504,menu_literal_715,{"Trilight","Трехцветный","三色光"});
    owned_text_16=std::string(label_15);
    label_17=page_label(s,text_pool,-354,menu_literal_716,{"Ambient Mode","Режим окружения","环境光模式"});
    { MenuControlRequest control_18;
    control_18.role=MenuControlRole::combo_strings;
    control_18.site=0x34a0c7;control_18.primitive=0x3bf008;
    control_18.label=std::string(label_17);
    control_18.value=0x3f8cd8;
    control_18.choices={owned_text_14,owned_text_16};
    pressed_19=control(a,control_18).pressed;
    }
}
label_20=page_label(s,text_pool,-472,menu_literal_717,{"Lets you modify the current time of day","Позволяет изменять текущее время суток","让你修改当前一天中的时间"});
label_21=page_label(s,text_pool,24,menu_literal_718,{"Dayhack","Дэйхак","时间修改"});
{ MenuControlRequest control_22;
control_22.role=MenuControlRole::checkbox;
control_22.site=0x34a17f;control_22.primitive=0x3bd114;
control_22.label=std::string(label_21);
control_22.value=0x3f8a38;
control_22.key=0;
control_22.color=0;
control_22.description=std::string(label_20);
control_22.register_search=(0!=0);
pressed_23=control(a,control_22).pressed;
}
value_24=raw(s,0x3f8a38)&255u;
if((value_24==0)) {
} else {
    literal_25=page_literal(text_pool,24,menu_literal_60);
    label_26=page_label(s,text_pool,-504,menu_literal_719,{"Day Value","Значение дня","天数值"});
    { MenuControlRequest control_27;
    control_27.role=MenuControlRole::slider_integer;
    control_27.site=0x34a206;control_27.primitive=0x3c4438;
    control_27.label=std::string(label_26);
    control_27.value=0x3f8c88;
    control_27.minimum=1;
    control_27.maximum=23;
    control_27.format=std::string(literal_25);
    control_27.flags=std::uint32_t(0);
    pressed_28=control(a,control_27).pressed;
    }
}
label_29=page_label(s,text_pool,-472,menu_literal_720,{"Draws the current time of day on the top left of your screen","Отображает текущее время суток в верхнем левом углу экрана","在屏幕左上角显示当前一天中的时间"});
label_30=page_label(s,text_pool,-400,menu_literal_721,{"Show Current Time","Показывать текущее время","显示当前时间"});
{ MenuControlRequest control_31;
control_31.role=MenuControlRole::checkbox;
control_31.site=0x34a2a3;control_31.primitive=0x3bd114;
control_31.label=std::string(label_30);
control_31.value=0x3e9908;
control_31.key=0;
control_31.color=0;
control_31.description=std::string(label_29);
control_31.register_search=(0!=0);
pressed_32=control(a,control_31).pressed;
}
label_33=page_label(s,text_pool,-472,menu_literal_722,{"Lets you modify the sky color","Позволяет изменять цвет неба","让你修改天空颜色"});
label_34=page_label(s,text_pool,-504,menu_literal_723,{"Sky Changer","Изменение неба","天空修改"});
{ MenuControlRequest control_35;
control_35.role=MenuControlRole::checkbox;
control_35.site=0x34a345;control_35.primitive=0x3bd114;
control_35.label=std::string(label_34);
control_35.value=0x3f8a88;
control_35.key=0;
control_35.color=0x3f8b88;
control_35.description=std::string(label_33);
control_35.register_search=(0!=0);
pressed_36=control(a,control_35).pressed;
}
label_37=page_label(s,text_pool,-472,menu_literal_724,{"Lets you modify your screens aspect ratio","Позволяет изменять соотношение сторон экрана","让你修改屏幕的宽高比"});
label_38=page_label(s,text_pool,-504,menu_literal_725,{"Aspect Ratio","Соотношение сторон","宽高比"});
{ MenuControlRequest control_39;
control_39.role=MenuControlRole::checkbox;
control_39.site=0x34a3e3;control_39.primitive=0x3bd114;
control_39.label=std::string(label_38);
control_39.value=0x3f8ad8;
control_39.key=0;
control_39.color=0;
control_39.description=std::string(label_37);
control_39.register_search=(0!=0);
pressed_40=control(a,control_39).pressed;
}
value_41=raw(s,0x3f8ad8)&255u;
if((value_41==0)) {
} else {
    literal_42=page_literal(text_pool,24,menu_literal_29);
    label_43=page_label(s,text_pool,-504,menu_literal_726,{"Aspect value","Значение соотношения","宽高比值"});
    { MenuControlRequest control_44;
    control_44.role=MenuControlRole::slider_float;
    control_44.site=0x34a470;control_44.primitive=0x3c43f4;
    control_44.label=std::string(label_43);
    control_44.value=0x3f8be8;
    control_44.minimum_float=0.0f;
    control_44.maximum_float=5.0f;
    control_44.format=std::string(literal_42);
    control_44.flags=std::uint32_t(0);
    pressed_45=control(a,control_44).pressed;
    }
}
label_46=page_label(s,text_pool,-472,menu_literal_727,{"Makes the stars bright!(who would've guessed?)","Делает звёзды яркими! (кто бы мог подумать?)","让星星变得明亮！（谁能想到呢？）"});
label_47=page_label(s,text_pool,-504,menu_literal_728,{"Bright Stars","Яркие звёзды","明亮星星"});
{ MenuControlRequest control_48;
control_48.role=MenuControlRole::checkbox;
control_48.site=0x34a50e;control_48.primitive=0x3bd114;
control_48.label=std::string(label_47);
control_48.value=0x3f89e8;
control_48.key=0;
control_48.color=0;
control_48.description=std::string(label_46);
control_48.register_search=(0!=0);
pressed_49=control(a,control_48).pressed;
}
label_50=page_label(s,text_pool,-504,menu_literal_729,{"Fov Changer","Изменение FOV","视野修改"});
{ MenuControlRequest control_51;
control_51.role=MenuControlRole::checkbox;
control_51.site=0x34a572;control_51.primitive=0x3bd114;
control_51.label=std::string(label_50);
control_51.value=0x3e9a48;
control_51.key=0;
control_51.color=0;
control_51.description="";
control_51.register_search=(0!=0);
pressed_52=control(a,control_51).pressed;
}
value_53=raw(s,0x3e9a48)&255u;
if((value_53==0)) {
} else {
    literal_54=page_literal(text_pool,24,menu_literal_29);
    label_55=page_label(s,text_pool,-504,menu_literal_730,{"Fov value","Значение FOV","视野值"});
    { MenuControlRequest control_56;
    control_56.role=MenuControlRole::slider_float;
    control_56.site=0x34a5fe;control_56.primitive=0x3c43f4;
    control_56.label=std::string(label_55);
    control_56.value=0x3ed848;
    control_56.minimum_float=0.0f;
    control_56.maximum_float=150.0f;
    control_56.format=std::string(literal_54);
    control_56.flags=std::uint32_t(0);
    pressed_57=control(a,control_56).pressed;
    }
}
label_58=page_label(s,text_pool,16,menu_literal_731,{"Zoom","Зум","缩放"});
{ MenuControlRequest control_59;
control_59.role=MenuControlRole::checkbox;
control_59.site=0x34a661;control_59.primitive=0x3bd114;
control_59.label=std::string(label_58);
control_59.value=0x3e9a98;
control_59.key=0x3ef6b8;
control_59.color=0;
control_59.description="";
control_59.register_search=(1!=0);
pressed_60=control(a,control_59).pressed;
}
value_61=raw(s,0x3e9a98)&255u;
if((value_61==0)) {
} else {
    literal_62=page_literal(text_pool,24,menu_literal_29);
    label_63=page_label(s,text_pool,-504,menu_literal_732,{"zoom value","Значение зума","缩放值"});
    { MenuControlRequest control_64;
    control_64.role=MenuControlRole::slider_float;
    control_64.site=0x34a6e5;control_64.primitive=0x3c43f4;
    control_64.label=std::string(label_63);
    control_64.value=0x3ed898;
    control_64.minimum_float=0.0f;
    control_64.maximum_float=150.0f;
    control_64.format=std::string(literal_62);
    control_64.flags=std::uint32_t(0);
    pressed_65=control(a,control_64).pressed;
    }
}
cleanup(a);
call(a,0x39ac04,{0.0f,-1.0f});
label_66=page_label(s,text_pool,-504,menu_literal_596,{"Removals","Удаления","移除"});
literal_67=page_literal(text_pool,24,menu_literal_597);
owned_text_68=std::string(literal_67);
child(s,m,a,owned_text_68,std::string(label_66),Vec2{0.0f,-1.0f},(1!=0));
label_69=page_label(s,text_pool,-328,menu_literal_733,{"Allows you to remove specific layers so you can see through them","Позволяет удалять определённые слои, чтобы видеть сквозь них","允许你移除特定图层，以便看穿它们"});
label_70=page_label(s,text_pool,-488,menu_literal_734,{"Remove Layers","Удалить слои","移除图层"});
{ MenuControlRequest control_71;
control_71.role=MenuControlRole::checkbox;
control_71.site=0x34a832;control_71.primitive=0x3bd114;
control_71.label=std::string(label_70);
control_71.value=0x3f3d38;
control_71.key=0x3f4558;
control_71.color=0;
control_71.description=std::string(label_69);
control_71.register_search=(1!=0);
pressed_72=control(a,control_71).pressed;
}
value_73=raw(s,0x3f3d38)&255u;
if((value_73==0)) {
} else {
    label_74=page_label(s,text_pool,-354,menu_literal_735,{"Clutter","Хлам","杂物"});
    owned_text_75=std::string(label_74);
    label_76=page_label(s,text_pool,-360,menu_literal_327,{"World","Мир","世界"});
    owned_text_77=std::string(label_76);
    label_78=page_label(s,text_pool,-408,menu_literal_680,{"Water","Вода","水"});
    owned_text_79=std::string(label_78);
    label_80=page_label(s,text_pool,-504,menu_literal_609,{"Terrain","Террейн","地形"});
    owned_text_81=std::string(label_80);
    label_82=page_label(s,text_pool,-488,menu_literal_307,{"Construction","Постройки","建筑"});
    owned_text_83=std::string(label_82);
    label_84=page_label(s,text_pool,32,menu_literal_681,{"Tree","Деревья","树木"});
    owned_text_85=std::string(label_84);
    label_86=page_label(s,text_pool,-488,menu_literal_736,{"Current Layers","Текущие слои","当前图层"});
    { MenuControlRequest control_87;
    control_87.role=MenuControlRole::multiselect;
    control_87.site=0x34aab9;control_87.primitive=0x387d18;
    control_87.label=std::string(label_86);
    control_87.value=0x3f4728;
    control_87.choices={owned_text_75,owned_text_77,owned_text_79,owned_text_81,owned_text_83,owned_text_85};
    pressed_88=control(a,control_87).pressed;
    }
}
label_89=page_label(s,text_pool,-472,menu_literal_737,{"Removes flashbang flash effect","Убирает эффект вспышки светошумовой гранаты","移除闪光弹的闪光效果"});
label_90=page_label(s,text_pool,-488,menu_literal_738,{"Remove Flash","Убрать вспышку","移除闪光"});
{ MenuControlRequest control_91;
control_91.role=MenuControlRole::checkbox;
control_91.site=0x34ab61;control_91.primitive=0x3bd114;
control_91.label=std::string(label_90);
control_91.value=0x3f3ce8;
control_91.key=0;
control_91.color=0;
control_91.description=std::string(label_89);
control_91.register_search=(0!=0);
pressed_92=control(a,control_91).pressed;
}
label_93=page_label(s,text_pool,-472,menu_literal_739,{"Removes grass(FPS BOOST!!)","Убирает траву (ПРИРОСТ FPS!!)","移除草（FPS提升！！）"});
label_94=page_label(s,text_pool,-488,menu_literal_740,{"Remove Grass","Убрать траву","移除草"});
{ MenuControlRequest control_95;
control_95.role=MenuControlRole::checkbox;
control_95.site=0x34abff;control_95.primitive=0x3bd114;
control_95.label=std::string(label_94);
control_95.value=0x3f30b8;
control_95.key=0;
control_95.color=0;
control_95.description=std::string(label_93);
control_95.register_search=(0!=0);
pressed_96=control(a,control_95).pressed;
}
label_97=page_label(s,text_pool,-472,menu_literal_741,{"Removes the smoke effect, plus the overlay that is generated","Убирает эффект дыма и создаваемый им оверлей","移除烟雾效果以及其生成的覆盖层"});
label_98=page_label(s,text_pool,-504,menu_literal_742,{"No Smoke","Нет дыма","无烟雾"});
{ MenuControlRequest control_99;
control_99.role=MenuControlRole::checkbox;
control_99.site=0x34ac9d;control_99.primitive=0x3bd114;
control_99.label=std::string(label_98);
control_99.value=0x3f3bf8;
control_99.key=0;
control_99.color=0;
control_99.description=std::string(label_97);
control_99.register_search=(0!=0);
pressed_100=control(a,control_99).pressed;
}
label_101=page_label(s,text_pool,-472,menu_literal_743,{"Removes the underwater blur effect","Убирает эффект размытия под водой","移除水下模糊效果"});
label_102=page_label(s,text_pool,-488,menu_literal_744,{"No Water Blur","Нет размытия под водой","无水下模糊"});
{ MenuControlRequest control_103;
control_103.role=MenuControlRole::checkbox;
control_103.site=0x34ad3b;control_103.primitive=0x3bd114;
control_103.label=std::string(label_102);
control_103.value=0x3f9708;
control_103.key=0;
control_103.color=0;
control_103.description=std::string(label_101);
control_103.register_search=(0!=0);
pressed_104=control(a,control_103).pressed;
}
label_105=page_label(s,text_pool,-472,menu_literal_745,{"Removes the underwater scattering effect","Убирает эффект рассеивания под водой","移除水下散射效果"});
label_106=page_label(s,text_pool,-400,menu_literal_746,{"No Water Scattering","Нет рассеивания под водой","无水下散射"});
{ MenuControlRequest control_107;
control_107.role=MenuControlRole::checkbox;
control_107.site=0x34add8;control_107.primitive=0x3bd114;
control_107.label=std::string(label_106);
control_107.value=0x3f9758;
control_107.key=0;
control_107.color=0;
control_107.description=std::string(label_105);
control_107.register_search=(0!=0);
pressed_108=control(a,control_107).pressed;
}
cleanup(a);
