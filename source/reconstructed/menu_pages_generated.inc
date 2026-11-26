// [I] Generated readable C++ from audited static constants/control data flow.
static FrameDependencyResult page_359098(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x359098..0x35a474.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef label_4{};
        [[maybe_unused]] MenuPageTextRef label_5{};
        [[maybe_unused]] bool pressed_7{};
        [[maybe_unused]] MenuPageTextRef label_8{};
        [[maybe_unused]] MenuPageTextRef label_9{};
        [[maybe_unused]] bool pressed_11{};
        [[maybe_unused]] ReU32 value_12{};
        [[maybe_unused]] MenuPageTextRef label_13{};
        [[maybe_unused]] MenuPageTextRef label_14{};
        [[maybe_unused]] bool pressed_16{};
        [[maybe_unused]] MenuPageTextRef label_17{};
        [[maybe_unused]] MenuPageTextRef label_18{};
        [[maybe_unused]] bool pressed_20{};
        [[maybe_unused]] MenuPageTextRef label_21{};
        [[maybe_unused]] MenuPageTextRef label_22{};
        [[maybe_unused]] bool pressed_24{};
        [[maybe_unused]] ReU32 value_25{};
        [[maybe_unused]] ReU32 value_26{};
        [[maybe_unused]] MenuPageTextRef label_27{};
        [[maybe_unused]] MenuPageTextRef label_28{};
        [[maybe_unused]] bool pressed_30{};
        [[maybe_unused]] ReU32 value_31{};
        [[maybe_unused]] ReU32 value_32{};
        [[maybe_unused]] ReU32 value_33{};
        [[maybe_unused]] MenuPageTextRef label_34{};
        [[maybe_unused]] MenuPageTextRef label_35{};
        [[maybe_unused]] bool pressed_37{};
        [[maybe_unused]] MenuPageTextRef label_38{};
        [[maybe_unused]] MenuPageTextRef label_39{};
        [[maybe_unused]] bool pressed_41{};
        [[maybe_unused]] MenuPageTextRef label_42{};
        [[maybe_unused]] MenuPageTextRef literal_43{};
        [[maybe_unused]] re::ReString owned_text_44{};
        [[maybe_unused]] MenuPageTextRef label_45{};
        [[maybe_unused]] MenuPageTextRef label_46{};
        [[maybe_unused]] bool pressed_48{};
        [[maybe_unused]] ReU32 value_49{};
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
        [[maybe_unused]] re::ReString owned_text_67{};
        [[maybe_unused]] MenuPageTextRef label_68{};
        [[maybe_unused]] re::ReString owned_text_69{};
        [[maybe_unused]] MenuPageTextRef label_70{};
        [[maybe_unused]] re::ReString owned_text_71{};
        [[maybe_unused]] MenuPageTextRef label_72{};
        [[maybe_unused]] re::ReString owned_text_73{};
        [[maybe_unused]] MenuPageTextRef label_74{};
        [[maybe_unused]] re::ReString owned_text_75{};
        [[maybe_unused]] MenuPageTextRef label_76{};
        [[maybe_unused]] re::ReString owned_text_77{};
        [[maybe_unused]] MenuPageTextRef label_78{};
        [[maybe_unused]] bool pressed_80{};
        [[maybe_unused]] ReU32 value_81{};
        [[maybe_unused]] MenuPageTextRef label_82{};
        [[maybe_unused]] re::ReString owned_text_83{};
        [[maybe_unused]] MenuPageTextRef label_84{};
        [[maybe_unused]] re::ReString owned_text_85{};
        [[maybe_unused]] MenuPageTextRef label_86{};
        [[maybe_unused]] re::ReString owned_text_87{};
        [[maybe_unused]] MenuPageTextRef label_88{};
        [[maybe_unused]] re::ReString owned_text_89{};
        [[maybe_unused]] MenuPageTextRef label_90{};
        [[maybe_unused]] re::ReString owned_text_91{};
        [[maybe_unused]] MenuPageTextRef label_92{};
        [[maybe_unused]] bool pressed_94{};
        [[maybe_unused]] MenuPageTextRef label_95{};
        [[maybe_unused]] MenuPageTextRef literal_96{};
        [[maybe_unused]] re::ReString owned_text_97{};
        [[maybe_unused]] MenuPageTextRef literal_98{};
        [[maybe_unused]] MenuPageTextRef literal_99{};
        [[maybe_unused]] MenuPageTextRef label_100{};
        [[maybe_unused]] re::ReString owned_text_101{};
        [[maybe_unused]] MenuPageTextRef label_102{};
        [[maybe_unused]] re::ReString owned_text_103{};
        [[maybe_unused]] MenuPageTextRef label_104{};
        [[maybe_unused]] re::ReString owned_text_105{};
        [[maybe_unused]] MenuPageTextRef label_106{};
        [[maybe_unused]] re::ReString owned_text_107{};
        [[maybe_unused]] MenuPageTextRef label_108{};
        [[maybe_unused]] re::ReString owned_text_109{};
        [[maybe_unused]] MenuPageTextRef label_110{};
        [[maybe_unused]] re::ReString owned_text_111{};
        [[maybe_unused]] MenuPageTextRef label_112{};
        [[maybe_unused]] bool pressed_114{};
        [[maybe_unused]] ReU32 value_115{};
        [[maybe_unused]] MenuPageTextRef label_116{};
        [[maybe_unused]] re::ReString owned_text_117{};
        [[maybe_unused]] MenuPageTextRef label_118{};
        [[maybe_unused]] re::ReString owned_text_119{};
        [[maybe_unused]] MenuPageTextRef label_120{};
        [[maybe_unused]] re::ReString owned_text_121{};
        [[maybe_unused]] MenuPageTextRef label_122{};
        [[maybe_unused]] re::ReString owned_text_123{};
        [[maybe_unused]] MenuPageTextRef label_124{};
        [[maybe_unused]] re::ReString owned_text_125{};
        [[maybe_unused]] MenuPageTextRef label_126{};
        [[maybe_unused]] bool pressed_128{};
        label_1 = page_label(s, text_pool, 32, menu_literal_1, {"Aim", "Прицел", "瞄准"});
        literal_2 = page_literal(text_pool, 24, menu_literal_2);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        label_4 = page_label(s, text_pool, -376, menu_literal_3,
                             {"Snaps onto your target", "Прилипает к цели", "自动锁定目标"});
        label_5 = page_label(s, text_pool, 24, menu_literal_4, {"Aimbot", "Прицел", "自瞄机器人"});
        {
            MenuControlRequest control_6;
            control_6.role = MenuControlRole::checkbox;
            control_6.site = 0x3591f0;
            control_6.primitive = 0x3bd114;
            control_6.label = re::ReString(label_5);
            control_6.value = 0x3e7928;
            control_6.key = 0x3f4438;
            control_6.color = 0;
            control_6.description = re::ReString(label_4);
            control_6.register_search = (1 != 0);
            pressed_7 = control(a, control_6).pressed;
        }
        call(a, 0x398bec, {ReI32(1), ReI32(4278190335)});
        label_8 = page_label(s, text_pool, -296, menu_literal_5,
                             {"Curves your projectiles towards the target",
                              "Сгибает снаряды к цели", "子弹击向连线目标"});
        label_9 =
            page_label(s, text_pool, 24, menu_literal_6, {"PSilent", "П-сайленс", "静默子弹追踪"});
        {
            MenuControlRequest control_10;
            control_10.role = MenuControlRole::checkbox;
            control_10.site = 0x35929e;
            control_10.primitive = 0x3bd114;
            control_10.label = re::ReString(label_9);
            control_10.value = 0x3d7e78;
            control_10.key = 0;
            control_10.color = 0;
            control_10.description = re::ReString(label_8);
            control_10.register_search = (0 != 0);
            pressed_11 = control(a, control_10).pressed;
        }
        call(a, 0x39890c, {ReI32(1)});
        value_12 = raw(s, 0x3d7e78) & 255u;
        if ((value_12 == 0)) {
        } else {
            label_13 = page_label(s, text_pool, -296, menu_literal_7,
                                  {"Finds valid higher-angle trajectory",
                                   "Находит траекторию с высокого угла", "寻找更高角度的有效轨迹"});
            label_14 = page_label(
                s, text_pool, -376, menu_literal_8,
                {"High Grenade Prediction", "Высокая предикция гранаты", "高抛物线预测"});
            {
                MenuControlRequest control_15;
                control_15.role = MenuControlRole::checkbox;
                control_15.site = 0x35934f;
                control_15.primitive = 0x3bd114;
                control_15.label = re::ReString(label_14);
                control_15.value = 0x3e7018;
                control_15.key = 0;
                control_15.color = 0;
                control_15.description = re::ReString(label_13);
                control_15.register_search = (0 != 0);
                pressed_16 = control(a, control_15).pressed;
            }
            label_17 = page_label(
                s, text_pool, -296, menu_literal_9,
                {"Targets saved map position", "Цель — сохранённая позиция", "锁定已保存位置"});
            label_18 =
                page_label(s, text_pool, -376, menu_literal_10,
                           {"Target Saved Position", "Цель: сохранённая позиция", "目标保存位置"});
            {
                MenuControlRequest control_19;
                control_19.role = MenuControlRole::checkbox;
                control_19.site = 0x3593ec;
                control_19.primitive = 0x3bd114;
                control_19.label = re::ReString(label_18);
                control_19.value = 0x3e72e8;
                control_19.key = 0;
                control_19.color = 0;
                control_19.description = re::ReString(label_17);
                control_19.register_search = (0 != 0);
                pressed_20 = control(a, control_19).pressed;
            }
        }
        label_21 = page_label(s, text_pool, -296, menu_literal_11,
                              {"Shoots automatically when target is hittable",
                               "Стреляет при доступной цели", "目标可命中时自动开火"});
        label_22 = page_label(s, text_pool, -416, menu_literal_12,
                              {"Autofire", "Автострельба", "自动开火"});
        {
            MenuControlRequest control_23;
            control_23.role = MenuControlRole::checkbox;
            control_23.site = 0x359489;
            control_23.primitive = 0x3bd114;
            control_23.label = re::ReString(label_22);
            control_23.value = 0x3e5098;
            control_23.key = 0;
            control_23.color = 0;
            control_23.description = re::ReString(label_21);
            control_23.register_search = (0 != 0);
            pressed_24 = control(a, control_23).pressed;
        }
        call(a, 0x398bec, {ReI32(1), ReI32(4278190335)});
        value_25 = raw(s, 0x3e5098) & 255u;
        if ((value_25 == 0)) {
            value_33 = raw(s, 0x3d7fb8) & 255u;
            if ((value_33 == 0)) {
                s.values[0x3e4ff8] = ReU32(0);
            } else {
                if ((value_25 != 0)) {
                } else {
                    s.values[0x3e4ff8] = ReU32(0);
                }
            }
        } else {
            value_26 = raw(s, 0x3d7fb8) & 255u;
            if ((value_26 == 0)) {
                s.values[0x3e4ff8] = ReU32(0);
            } else {
                label_27 = page_label(s, text_pool, -296, menu_literal_13,
                                      {"Waits until instant hit is possible",
                                       "Ждёт возможности инстант хита", "等待可瞬时命中状态"});
                label_28 = page_label(s, text_pool, -376, menu_literal_14,
                                      {"Wait For InstantHit", "Ждать инстант хит", "等待瞬时命中"});
                {
                    MenuControlRequest control_29;
                    control_29.role = MenuControlRole::checkbox;
                    control_29.site = 0x35954d;
                    control_29.primitive = 0x3bd114;
                    control_29.label = re::ReString(label_28);
                    control_29.value = 0x3e4ff8;
                    control_29.key = 0;
                    control_29.color = 0;
                    control_29.description = re::ReString(label_27);
                    control_29.register_search = (0 != 0);
                    pressed_30 = control(a, control_29).pressed;
                }
                value_31 = raw(s, 0x3e5098) & 255u;
                value_32 = raw(s, 0x3d7fb8) & 255u;
                if ((value_32 == 0)) {
                    s.values[0x3e4ff8] = ReU32(0);
                } else {
                    if ((value_31 != 0)) {
                    } else {
                        s.values[0x3e4ff8] = ReU32(0);
                    }
                }
            }
        }
        call(a, 0x39890c, {ReI32(1)});
        label_34 = page_label(s, text_pool, -376, menu_literal_15,
                              {"Humanizes your aim", "Смягчает аим", "让瞄准更自然"});
        label_35 = page_label(s, text_pool, -352, menu_literal_16,
                              {"Use Smoothing", "Сглаживание", "平滑"});
        {
            MenuControlRequest control_36;
            control_36.role = MenuControlRole::checkbox;
            control_36.site = 0x35960b;
            control_36.primitive = 0x3bd114;
            control_36.label = re::ReString(label_35);
            control_36.value = 0x3e9b38;
            control_36.key = 0;
            control_36.color = 0;
            control_36.description = re::ReString(label_34);
            control_36.register_search = (0 != 0);
            pressed_37 = control(a, control_36).pressed;
        }
        label_38 =
            page_label(s, text_pool, -296, menu_literal_17,
                       {"Only targets visible players", "Только видимые цели", "只锁定可见目标"});
        label_39 = page_label(s, text_pool, -352, menu_literal_18,
                              {"Use Vischeck", "Проверка видимости", "可见性检测"});
        {
            MenuControlRequest control_40;
            control_40.role = MenuControlRole::checkbox;
            control_40.site = 0x3596a7;
            control_40.primitive = 0x3bd114;
            control_40.label = re::ReString(label_39);
            control_40.value = 0x3d7d88;
            control_40.key = 0;
            control_40.color = 0;
            control_40.description = re::ReString(label_38);
            control_40.register_search = (0 != 0);
            pressed_41 = control(a, control_40).pressed;
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_42 = page_label(s, text_pool, -338, menu_literal_19,
                              {"Aim Modifications", "Модификации аима", "瞄准调整"});
        literal_43 = page_literal(text_pool, 24, menu_literal_20);
        owned_text_44 = re::ReString(literal_43);
        child(s, m, a, owned_text_44, re::ReString(label_42), Vec2{0.0f, -1.0f}, (1 != 0));
        label_45 = page_label(s, text_pool, -376, menu_literal_21,
                              {"Target helicopters", "Целится в вертолёты", "锁定直升机"});
        label_46 = page_label(s, text_pool, -338, menu_literal_22,
                              {"Target Helicopter", "Цель вертолёт", "锁定直升机"});
        {
            MenuControlRequest control_47;
            control_47.role = MenuControlRole::checkbox;
            control_47.site = 0x3597ee;
            control_47.primitive = 0x3bd114;
            control_47.label = re::ReString(label_46);
            control_47.value = 0x3e9d68;
            control_47.key = 0;
            control_47.color = 0;
            control_47.description = re::ReString(label_45);
            control_47.register_search = (0 != 0);
            pressed_48 = control(a, control_47).pressed;
        }
        value_49 = raw(s, 0x3d7e78) & 255u;
        if ((value_49 == 0)) {
        } else {
            label_50 = page_label(s, text_pool, -320, menu_literal_23,
                                  {"Adds miss chance", "Добавляет шанс промахов", "增加失误概率"});
            label_51 = page_label(s, text_pool, -416, menu_literal_24,
                                  {"Hit chance", "Шанс попадания", "命中率"});
            {
                MenuControlRequest control_52;
                control_52.role = MenuControlRole::checkbox;
                control_52.site = 0x359898;
                control_52.primitive = 0x3bd114;
                control_52.label = re::ReString(label_51);
                control_52.value = 0x3f7d58;
                control_52.key = 0;
                control_52.color = 0;
                control_52.description = re::ReString(label_50);
                control_52.register_search = (0 != 0);
                pressed_53 = control(a, control_52).pressed;
            }
            literal_54 = page_literal(text_pool, 24, menu_literal_25);
            label_55 = page_label(s, text_pool, -416, menu_literal_26,
                                  {"Hit percent", "Процент попадания", "命中百分比"});
            {
                MenuControlRequest control_56;
                control_56.role = MenuControlRole::slider_float;
                control_56.site = 0x359918;
                control_56.primitive = 0x3c43f4;
                control_56.label = re::ReString(label_55);
                control_56.value = 0x3f7ee8;
                control_56.minimum_float = 0.0f;
                control_56.maximum_float = 100.0f;
                control_56.format = re::ReString(literal_54);
                control_56.flags = ReU32(0);
                pressed_57 = control(a, control_56).pressed;
            }
        }
        label_58 = page_label(s, text_pool, -376, menu_literal_27,
                              {"Keeps current target", "Фиксирует цель", "保持当前目标"});
        label_59 = page_label(s, text_pool, -416, menu_literal_28,
                              {"Keep target", "Фиксация цели", "保持目标"});
        {
            MenuControlRequest control_60;
            control_60.role = MenuControlRole::checkbox;
            control_60.site = 0x3599b6;
            control_60.primitive = 0x3bd114;
            control_60.label = re::ReString(label_59);
            control_60.value = 0x3d8008;
            control_60.key = 0;
            control_60.color = 0;
            control_60.description = re::ReString(label_58);
            control_60.register_search = (0 != 0);
            pressed_61 = control(a, control_60).pressed;
        }
        literal_62 = page_literal(text_pool, 24, menu_literal_29);
        label_63 = page_label(s, text_pool, 32, menu_literal_30, {"Smooth", "Сглаживание", "平滑"});
        {
            MenuControlRequest control_64;
            control_64.role = MenuControlRole::slider_float;
            control_64.site = 0x359a3d;
            control_64.primitive = 0x3c43f4;
            control_64.label = re::ReString(label_63);
            control_64.value = 0x3edd48;
            control_64.minimum_float = 0.009999999776482582f;
            control_64.maximum_float = 1.0f;
            control_64.format = re::ReString(literal_62);
            control_64.flags = ReU32(0);
            pressed_65 = control(a, control_64).pressed;
        }
        label_66 = page_label(s, text_pool, 32, menu_literal_31, {"Head", "Голова", "头"});
        owned_text_67 = re::ReString(label_66);
        label_68 = page_label(s, text_pool, -440, menu_literal_32, {"Neck", "Шея", "颈"});
        owned_text_69 = re::ReString(label_68);
        label_70 = page_label(s, text_pool, -435, menu_literal_33, {"Spine", "Позвоночник", "脊"});
        owned_text_71 = re::ReString(label_70);
        label_72 = page_label(s, text_pool, -352, menu_literal_34,
                              {"Lower Spine", "Нижняя часть позвоночника", "下脊"});
        owned_text_73 = re::ReString(label_72);
        label_74 = page_label(s, text_pool, -424, menu_literal_35,
                              {"Hitscan", "Трассировка", "即时命中检测"});
        owned_text_75 = re::ReString(label_74);
        label_76 = page_label(s, text_pool, -338, menu_literal_36,
                              {"Hitscan Priority", "Приоритет трассировки", "即时命中判定优先级"});
        owned_text_77 = re::ReString(label_76);
        label_78 =
            page_label(s, text_pool, -416, menu_literal_37, {"Aimbone", "Кость", "瞄准骨骼"});
        {
            MenuControlRequest control_79;
            control_79.role = MenuControlRole::combo_strings;
            control_79.site = 0x359c90;
            control_79.primitive = 0x3bf008;
            control_79.label = re::ReString(label_78);
            control_79.value = 0x3fccd8;
            control_79.choices = {owned_text_67, owned_text_69, owned_text_71,
                                  owned_text_73, owned_text_75, owned_text_77};
            pressed_80 = control(a, control_79).pressed;
        }
        value_81 = raw(s, 0x3fccd8);
        if ((value_81 != 5)) {
        } else {
            label_82 = page_label(s, text_pool, 32, menu_literal_31, {"Head", "Голова", "头部"});
            owned_text_83 = re::ReString(label_82);
            label_84 = page_label(s, text_pool, -440, menu_literal_32, {"Neck", "Шея", "颈部"});
            owned_text_85 = re::ReString(label_84);
            label_86 =
                page_label(s, text_pool, -435, menu_literal_33, {"Spine", "Позвоночник", "脊柱"});
            owned_text_87 = re::ReString(label_86);
            label_88 = page_label(s, text_pool, -352, menu_literal_34,
                                  {"Lower Spine", "Нижний отдел позвоночника", "下脊柱"});
            owned_text_89 = re::ReString(label_88);
            label_90 = page_label(s, text_pool, -424, menu_literal_38, {"Pelvis", "Таз", "骨盆"});
            owned_text_91 = re::ReString(label_90);
            label_92 = page_label(s, text_pool, -338, menu_literal_36,
                                  {"Hitscan Priority", "Приоритет", "射擊 优先级"});
            {
                MenuControlRequest control_93;
                control_93.role = MenuControlRole::combo_strings;
                control_93.site = 0x359ebd;
                control_93.primitive = 0x3bf008;
                control_93.label = re::ReString(label_92);
                control_93.value = 0x3fceb8;
                control_93.choices = {owned_text_83, owned_text_85, owned_text_87, owned_text_89,
                                      owned_text_91};
                pressed_94 = control(a, control_93).pressed;
            }
        }
        label_95 = page_label(s, text_pool, -338, menu_literal_39,
                              {"Secondary Aim Key", "Вторичный ключ", "副瞄准键"});
        call(a, 0x3c4e90, {re::ReString(label_95)});
        call(a, 0x39ac04, {0.0f, -1.0f});
        literal_96 = page_literal(text_pool, 24, menu_literal_40);
        owned_text_97 = re::ReString(literal_96);
        literal_98 = page_literal(text_pool, -338, menu_literal_39);
        literal_99 = page_literal(text_pool, 32, menu_literal_41);
        keybind(a,
                (re::ReString((re::ReString(owned_text_97) + re::ReString(literal_98))) +
                 re::ReString(literal_99)),
                0x3f4498, (1 != 0), 0x359fbb);
        label_100 = page_label(s, text_pool, 32, menu_literal_31, {"Head", "Голова", "头"});
        owned_text_101 = re::ReString(label_100);
        label_102 = page_label(s, text_pool, -440, menu_literal_32, {"Neck", "Шея", "颈"});
        owned_text_103 = re::ReString(label_102);
        label_104 = page_label(s, text_pool, -435, menu_literal_33, {"Spine", "Позвоночник", "脊"});
        owned_text_105 = re::ReString(label_104);
        label_106 = page_label(s, text_pool, -352, menu_literal_34,
                               {"Lower Spine", "Нижняя часть позвоночника", "下脊"});
        owned_text_107 = re::ReString(label_106);
        label_108 = page_label(s, text_pool, -416, menu_literal_35,
                               {"Hitscan", "Трассировка", "即时命中检测"});
        owned_text_109 = re::ReString(label_108);
        label_110 = page_label(s, text_pool, -338, menu_literal_36,
                               {"Hitscan Priority", "Приоритет трассировки", "即时命中判定优先级"});
        owned_text_111 = re::ReString(label_110);
        label_112 = page_label(s, text_pool, -376, menu_literal_42,
                               {"Secondary Aimbone", "Вторичная кость", "副瞄准骨骼"});
        {
            MenuControlRequest control_113;
            control_113.role = MenuControlRole::combo_strings;
            control_113.site = 0x35a20f;
            control_113.primitive = 0x3bf008;
            control_113.label = re::ReString(label_112);
            control_113.value = 0x3fcd28;
            control_113.choices = {owned_text_101, owned_text_103, owned_text_105,
                                   owned_text_107, owned_text_109, owned_text_111};
            pressed_114 = control(a, control_113).pressed;
        }
        value_115 = raw(s, 0x3fcd28);
        if ((value_115 != 5)) {
        } else {
            label_116 = page_label(s, text_pool, 32, menu_literal_31, {"Head", "Голова", "头部"});
            owned_text_117 = re::ReString(label_116);
            label_118 = page_label(s, text_pool, -440, menu_literal_32, {"Neck", "Шея", "颈部"});
            owned_text_119 = re::ReString(label_118);
            label_120 =
                page_label(s, text_pool, -435, menu_literal_33, {"Spine", "Позвоночник", "脊柱"});
            owned_text_121 = re::ReString(label_120);
            label_122 = page_label(s, text_pool, -352, menu_literal_34,
                                   {"Lower Spine", "Нижний отдел позвоночника", "下脊柱"});
            owned_text_123 = re::ReString(label_122);
            label_124 = page_label(s, text_pool, -424, menu_literal_38, {"Pelvis", "Таз", "骨盆"});
            owned_text_125 = re::ReString(label_124);
            label_126 = page_label(s, text_pool, -376, menu_literal_43,
                                   {"Secondary Priority", "Вторичный приоритет", "副优先级"});
            {
                MenuControlRequest control_127;
                control_127.role = MenuControlRole::combo_strings;
                control_127.site = 0x35a43c;
                control_127.primitive = 0x3bf008;
                control_127.label = re::ReString(label_126);
                control_127.value = 0x3fcf08;
                control_127.choices = {owned_text_117, owned_text_119, owned_text_121,
                                       owned_text_123, owned_text_125};
                pressed_128 = control(a, control_127).pressed;
            }
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_336868(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x336868..0x337e5f.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef label_4{};
        [[maybe_unused]] MenuPageTextRef label_5{};
        [[maybe_unused]] bool pressed_7{};
        [[maybe_unused]] MenuPageTextRef label_8{};
        [[maybe_unused]] MenuPageTextRef label_9{};
        [[maybe_unused]] bool pressed_11{};
        [[maybe_unused]] MenuPageTextRef label_12{};
        [[maybe_unused]] bool pressed_14{};
        [[maybe_unused]] MenuPageTextRef label_15{};
        [[maybe_unused]] MenuPageTextRef label_16{};
        [[maybe_unused]] bool pressed_18{};
        [[maybe_unused]] ReU32 value_19{};
        [[maybe_unused]] MenuPageTextRef label_20{};
        [[maybe_unused]] MenuPageTextRef label_21{};
        [[maybe_unused]] bool pressed_23{};
        [[maybe_unused]] MenuPageTextRef label_24{};
        [[maybe_unused]] bool pressed_26{};
        [[maybe_unused]] ReU32 value_27{};
        [[maybe_unused]] MenuPageTextRef literal_28{};
        [[maybe_unused]] MenuPageTextRef label_29{};
        [[maybe_unused]] MenuPageTextRef literal_30{};
        [[maybe_unused]] MenuPageTextRef label_31{};
        [[maybe_unused]] bool pressed_33{};
        [[maybe_unused]] MenuPageTextRef label_34{};
        [[maybe_unused]] MenuPageTextRef label_35{};
        [[maybe_unused]] bool pressed_37{};
        [[maybe_unused]] ReU32 value_38{};
        [[maybe_unused]] MenuPageTextRef literal_39{};
        [[maybe_unused]] MenuPageTextRef label_40{};
        [[maybe_unused]] bool pressed_42{};
        [[maybe_unused]] MenuPageTextRef literal_43{};
        [[maybe_unused]] MenuPageTextRef label_44{};
        [[maybe_unused]] bool pressed_46{};
        [[maybe_unused]] MenuPageTextRef label_47{};
        [[maybe_unused]] MenuPageTextRef label_48{};
        [[maybe_unused]] bool pressed_50{};
        [[maybe_unused]] ReU32 value_51{};
        [[maybe_unused]] MenuPageTextRef literal_52{};
        [[maybe_unused]] MenuPageTextRef label_53{};
        [[maybe_unused]] bool pressed_55{};
        [[maybe_unused]] MenuPageTextRef label_56{};
        [[maybe_unused]] MenuPageTextRef label_57{};
        [[maybe_unused]] bool pressed_59{};
        [[maybe_unused]] ReU32 value_60{};
        [[maybe_unused]] MenuPageTextRef label_61{};
        [[maybe_unused]] re::ReString owned_text_62{};
        [[maybe_unused]] MenuPageTextRef label_63{};
        [[maybe_unused]] re::ReString owned_text_64{};
        [[maybe_unused]] MenuPageTextRef label_65{};
        [[maybe_unused]] re::ReString owned_text_66{};
        [[maybe_unused]] MenuPageTextRef label_67{};
        [[maybe_unused]] re::ReString owned_text_68{};
        [[maybe_unused]] MenuPageTextRef label_69{};
        [[maybe_unused]] bool pressed_71{};
        [[maybe_unused]] MenuPageTextRef literal_72{};
        [[maybe_unused]] MenuPageTextRef label_73{};
        [[maybe_unused]] bool pressed_75{};
        [[maybe_unused]] MenuPageTextRef label_76{};
        [[maybe_unused]] MenuPageTextRef label_77{};
        [[maybe_unused]] bool pressed_79{};
        [[maybe_unused]] MenuPageTextRef label_80{};
        [[maybe_unused]] MenuPageTextRef label_81{};
        [[maybe_unused]] bool pressed_83{};
        [[maybe_unused]] MenuPageTextRef label_84{};
        [[maybe_unused]] MenuPageTextRef label_85{};
        [[maybe_unused]] bool pressed_87{};
        [[maybe_unused]] MenuPageTextRef label_88{};
        [[maybe_unused]] MenuPageTextRef label_89{};
        [[maybe_unused]] bool pressed_91{};
        [[maybe_unused]] MenuPageTextRef label_92{};
        [[maybe_unused]] MenuPageTextRef label_93{};
        [[maybe_unused]] bool pressed_95{};
        [[maybe_unused]] MenuPageTextRef label_96{};
        [[maybe_unused]] MenuPageTextRef literal_97{};
        [[maybe_unused]] re::ReString owned_text_98{};
        [[maybe_unused]] ReU32 value_99{};
        [[maybe_unused]] MenuPageTextRef label_100{};
        [[maybe_unused]] re::ReString owned_text_101{};
        [[maybe_unused]] MenuPageTextRef label_102{};
        [[maybe_unused]] re::ReString owned_text_103{};
        [[maybe_unused]] MenuPageTextRef label_104{};
        [[maybe_unused]] re::ReString owned_text_105{};
        [[maybe_unused]] MenuPageTextRef label_106{};
        [[maybe_unused]] re::ReString owned_text_107{};
        [[maybe_unused]] MenuPageTextRef label_108{};
        [[maybe_unused]] re::ReString owned_text_109{};
        [[maybe_unused]] MenuPageTextRef label_110{};
        [[maybe_unused]] re::ReString owned_text_111{};
        [[maybe_unused]] MenuPageTextRef label_112{};
        [[maybe_unused]] bool pressed_114{};
        [[maybe_unused]] MenuPageTextRef label_115{};
        [[maybe_unused]] re::ReString owned_text_116{};
        [[maybe_unused]] MenuPageTextRef label_117{};
        [[maybe_unused]] re::ReString owned_text_118{};
        [[maybe_unused]] MenuPageTextRef label_119{};
        [[maybe_unused]] re::ReString owned_text_120{};
        [[maybe_unused]] MenuPageTextRef label_121{};
        [[maybe_unused]] re::ReString owned_text_122{};
        [[maybe_unused]] MenuPageTextRef label_123{};
        [[maybe_unused]] re::ReString owned_text_124{};
        [[maybe_unused]] MenuPageTextRef label_125{};
        [[maybe_unused]] re::ReString owned_text_126{};
        [[maybe_unused]] MenuPageTextRef label_127{};
        [[maybe_unused]] bool pressed_129{};
        [[maybe_unused]] MenuPageTextRef label_130{};
        [[maybe_unused]] re::ReString owned_text_131{};
        [[maybe_unused]] MenuPageTextRef label_132{};
        [[maybe_unused]] re::ReString owned_text_133{};
        [[maybe_unused]] MenuPageTextRef label_134{};
        [[maybe_unused]] re::ReString owned_text_135{};
        [[maybe_unused]] MenuPageTextRef label_136{};
        [[maybe_unused]] re::ReString owned_text_137{};
        [[maybe_unused]] MenuPageTextRef label_138{};
        [[maybe_unused]] re::ReString owned_text_139{};
        [[maybe_unused]] MenuPageTextRef label_140{};
        [[maybe_unused]] re::ReString owned_text_141{};
        [[maybe_unused]] MenuPageTextRef label_142{};
        [[maybe_unused]] bool pressed_144{};
        label_1 =
            page_label(s, text_pool, -424, menu_literal_44, {"Exploits", "Эксплойты", "漏洞功能"});
        literal_2 = page_literal(text_pool, 24, menu_literal_45);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        call(a, 0x398bec, {ReI32(1), ReI32(4278190335)});
        label_4 = page_label(s, text_pool, -312, menu_literal_46,
                             {"Teleports you upwards instantly",
                              "Мгновенно телепортирует тебя вверх", "将你瞬间向上传送"});
        label_5 = page_label(s, text_pool, -411, menu_literal_47,
                             {"Auto Teleport", "Авто телепорт", "自动传送"});
        {
            MenuControlRequest control_6;
            control_6.role = MenuControlRole::checkbox;
            control_6.site = 0x3369cc;
            control_6.primitive = 0x3bd114;
            control_6.label = re::ReString(label_5);
            control_6.value = 0x3f7e48;
            control_6.key = 0;
            control_6.color = 0;
            control_6.description = re::ReString(label_4);
            control_6.register_search = (0 != 0);
            pressed_7 = control(a, control_6).pressed;
        }
        label_8 = page_label(s, text_pool, -360, menu_literal_48,
                             {"Pierce through objects", "Проникать сквозь предметы", "穿透物体"});
        label_9 = page_label(s, text_pool, 24, menu_literal_49, {"Pierce", "Пирс", "刺穿"});
        {
            MenuControlRequest control_10;
            control_10.role = MenuControlRole::checkbox;
            control_10.site = 0x336a6c;
            control_10.primitive = 0x3bd114;
            control_10.label = re::ReString(label_9);
            control_10.value = 0x3e5228;
            control_10.key = 0;
            control_10.color = 0;
            control_10.description = re::ReString(label_8);
            control_10.register_search = (0 != 0);
            pressed_11 = control(a, control_10).pressed;
        }
        label_12 = page_label(s, text_pool, -360, menu_literal_50,
                              {"Shoot Through Friends", "Стреляй сквозь друзей", "通过朋友拍摄"});
        {
            MenuControlRequest control_13;
            control_13.role = MenuControlRole::checkbox;
            control_13.site = 0x336ad0;
            control_13.primitive = 0x3bd114;
            control_13.label = re::ReString(label_12);
            control_13.value = 0x3f1d58;
            control_13.key = 0;
            control_13.color = 0;
            control_13.description = "";
            control_13.register_search = (0 != 0);
            pressed_14 = control(a, control_13).pressed;
        }
        label_15 = page_label(
            s, text_pool, -312, menu_literal_51,
            {"Makes projectile hit near target", "Попадание рядом с целью", "扩大命中范围"});
        label_16 = page_label(s, text_pool, -360, menu_literal_52,
                              {"Custom Projectiles", "Кастомные снаряды", "大子弹"});
        {
            MenuControlRequest control_17;
            control_17.role = MenuControlRole::checkbox;
            control_17.site = 0x336b6d;
            control_17.primitive = 0x3bd114;
            control_17.label = re::ReString(label_16);
            control_17.value = 0x3d7ec8;
            control_17.key = 0;
            control_17.color = 0;
            control_17.description = re::ReString(label_15);
            control_17.register_search = (0 != 0);
            pressed_18 = control(a, control_17).pressed;
        }
        value_19 = raw(s, 0x3d7ec8) & 255u;
        if ((value_19 == 0)) {
            s.values[0x3d8058] = ReU32(0);
        } else {
            label_20 =
                page_label(s, text_pool, -312, menu_literal_53,
                           {"Extends bullet size on mounted players",
                            "Увеличивает размер пули у игроков верхом.", "增大骑乘玩家的子弹尺寸"});
            label_21 = page_label(s, text_pool, -411, menu_literal_54,
                                  {"ExtendMounted", "РасширениеМаунтед", "扩展安装"});
            {
                MenuControlRequest control_22;
                control_22.role = MenuControlRole::checkbox;
                control_22.site = 0x336c1f;
                control_22.primitive = 0x3bd114;
                control_22.label = re::ReString(label_21);
                control_22.value = 0x3f94d8;
                control_22.key = 0;
                control_22.color = 0;
                control_22.description = re::ReString(label_20);
                control_22.register_search = (0 != 0);
                pressed_23 = control(a, control_22).pressed;
            }
            label_24 = page_label(s, text_pool, -424, menu_literal_55,
                                  {"Legit Mode", "Легальный режим", "合法模式"});
            {
                MenuControlRequest control_25;
                control_25.role = MenuControlRole::checkbox;
                control_25.site = 0x336c7c;
                control_25.primitive = 0x3bd114;
                control_25.label = re::ReString(label_24);
                control_25.value = 0x3f9488;
                control_25.key = 0;
                control_25.color = 0;
                control_25.description = "";
                control_25.register_search = (0 != 0);
                pressed_26 = control(a, control_25).pressed;
            }
            value_27 = raw(s, 0x3f9488) & 255u;
            if ((value_27 == 0)) {
                literal_30 = page_literal(text_pool, 24, menu_literal_29);
                label_31 = page_label(s, text_pool, -376, menu_literal_57,
                                      {"Projectile Size", "Размер снаряда", "弹道大小"});
            } else {
                literal_28 = page_literal(text_pool, 24, menu_literal_29);
                label_29 = page_label(s, text_pool, -360, menu_literal_56,
                                      {"Legit Projectile Size", "Размер снаряда", "弹道大小"});
            }
            {
                MenuControlRequest control_32;
                control_32.role = MenuControlRole::slider_float;
                control_32.site = 0x336d5c;
                control_32.primitive = 0x3c43f4;
                control_32.label = re::ReString(((value_27 == 0) ? label_31 : label_29));
                control_32.value = ((value_27 == 0) ? 0x3f3dd8 : 0x3f9528);
                control_32.minimum_float = 0.0f;
                control_32.maximum_float =
                    ((value_27 == 0) ? 2.3949999809265137f : 1.9470000267028809f);
                control_32.format = re::ReString(((value_27 == 0) ? literal_30 : literal_28));
                control_32.flags = ReU32(0);
                pressed_33 = control(a, control_32).pressed;
            }
            label_34 = page_label(
                s, text_pool, -360, menu_literal_58,
                {"Hit targets behind objects", "Попадание за объектами", "穿墙命中计算"});
            label_35 = page_label(s, text_pool, -312, menu_literal_59,
                                  {"Behind Wall Calculations", "Расчёт за стеной", "穿墙计算"});
            {
                MenuControlRequest control_36;
                control_36.role = MenuControlRole::checkbox;
                control_36.site = 0x336df9;
                control_36.primitive = 0x3bd114;
                control_36.label = re::ReString(label_35);
                control_36.value = 0x3d8058;
                control_36.key = 0;
                control_36.color = 0;
                control_36.description = re::ReString(label_34);
                control_36.register_search = (0 != 0);
                pressed_37 = control(a, control_36).pressed;
            }
            value_38 = raw(s, 0x3d8058) & 255u;
            if ((value_38 == 0)) {
            } else {
                literal_39 = page_literal(text_pool, 24, menu_literal_60);
                label_40 =
                    page_label(s, text_pool, -312, menu_literal_61,
                               {"Angle Generation Strength", "Сила генерации угла", "角度强度"});
                {
                    MenuControlRequest control_41;
                    control_41.role = MenuControlRole::slider_integer;
                    control_41.site = 0x336e86;
                    control_41.primitive = 0x3c4438;
                    control_41.label = re::ReString(label_40);
                    control_41.value = 0x3f40f8;
                    control_41.minimum = 50;
                    control_41.maximum = 500;
                    control_41.format = re::ReString(literal_39);
                    control_41.flags = ReU32(0);
                    pressed_42 = control(a, control_41).pressed;
                }
                literal_43 = page_literal(text_pool, 24, menu_literal_29);
                label_44 = page_label(s, text_pool, -424, menu_literal_62,
                                      {"Cache(FPS!!)", "Кэш(FPS)", "缓存(FPS)"});
                {
                    MenuControlRequest control_45;
                    control_45.role = MenuControlRole::slider_float;
                    control_45.site = 0x336f01;
                    control_45.primitive = 0x3c43f4;
                    control_45.label = re::ReString(label_44);
                    control_45.value = 0x3f4008;
                    control_45.minimum_float = 0.0f;
                    control_45.maximum_float = 10.0f;
                    control_45.format = re::ReString(literal_43);
                    control_45.flags = ReU32(0);
                    pressed_46 = control(a, control_45).pressed;
                }
            }
        }
        label_47 = page_label(s, text_pool, -312, menu_literal_63,
                              {"Shoots multiple projectiles", "Несколько снарядов", "多重弹道"});
        label_48 = page_label(s, text_pool, -424, menu_literal_64,
                              {"Instant kill", "Мгновенное убийство", "即时击杀"});
        {
            MenuControlRequest control_49;
            control_49.role = MenuControlRole::checkbox;
            control_49.site = 0x336fa7;
            control_49.primitive = 0x3bd114;
            control_49.label = re::ReString(label_48);
            control_49.value = 0x3e50e8;
            control_49.key = 0;
            control_49.color = 0;
            control_49.description = re::ReString(label_47);
            control_49.register_search = (0 != 0);
            pressed_50 = control(a, control_49).pressed;
        }
        value_51 = raw(s, 0x3e50e8) & 255u;
        if ((value_51 == 0)) {
        } else {
            literal_52 = page_literal(text_pool, 24, menu_literal_29);
            label_53 = page_label(s, text_pool, -411, menu_literal_65,
                                  {"Minimum Desync", "Мин. десинк", "最小延迟"});
            {
                MenuControlRequest control_54;
                control_54.role = MenuControlRole::slider_float;
                control_54.site = 0x337034;
                control_54.primitive = 0x3c43f4;
                control_54.label = re::ReString(label_53);
                control_54.value = 0x3e5318;
                control_54.minimum_float = 0.0f;
                control_54.maximum_float = 0.699999988079071f;
                control_54.format = re::ReString(literal_52);
                control_54.flags = ReU32(0);
                pressed_55 = control(a, control_54).pressed;
            }
        }
        label_56 = page_label(s, text_pool, -360, menu_literal_66,
                              {"Slows projectiles", "Замедляет снаряды", "降低弹道速度"});
        label_57 = page_label(s, text_pool, -424, menu_literal_67,
                              {"Low Velocity", "Низкая скорость", "低速弹道"});
        {
            MenuControlRequest control_58;
            control_58.role = MenuControlRole::checkbox;
            control_58.site = 0x3370d6;
            control_58.primitive = 0x3bd114;
            control_58.label = re::ReString(label_57);
            control_58.value = 0x3f3108;
            control_58.key = 0x3d82f8;
            control_58.color = 0;
            control_58.description = re::ReString(label_56);
            control_58.register_search = (0 != 0);
            pressed_59 = control(a, control_58).pressed;
        }
        value_60 = raw(s, 0x3f3108) & 255u;
        if ((value_60 == 0)) {
        } else {
            label_61 = page_label(s, text_pool, 32, menu_literal_68, {"Weak", "Слабый", "弱"});
            owned_text_62 = re::ReString(label_61);
            label_63 =
                page_label(s, text_pool, -389, menu_literal_69, {"Normal", "Обычный", "普通"});
            owned_text_64 = re::ReString(label_63);
            label_65 = page_label(s, text_pool, -396, menu_literal_70, {"Strong", "Сильный", "强"});
            owned_text_66 = re::ReString(label_65);
            label_67 = page_label(s, text_pool, -424, menu_literal_71,
                                  {"Strongest", "Сильнейший", "最强"});
            owned_text_68 = re::ReString(label_67);
            label_69 = page_label(s, text_pool, -411, menu_literal_72,
                                  {"LV Iterations", "Итерации LV", "可击中扫描"});
            {
                MenuControlRequest control_70;
                control_70.role = MenuControlRole::combo_strings;
                control_70.site = 0x3372a1;
                control_70.primitive = 0x3bf008;
                control_70.label = re::ReString(label_69);
                control_70.value = 0x3f4148;
                control_70.choices = {owned_text_62, owned_text_64, owned_text_66, owned_text_68};
                pressed_71 = control(a, control_70).pressed;
            }
            literal_72 = page_literal(text_pool, 24, menu_literal_29);
            label_73 =
                page_label(s, text_pool, -424, menu_literal_73, {"LV Speed", "Скорость", "速度"});
            {
                MenuControlRequest control_74;
                control_74.role = MenuControlRole::slider_float;
                control_74.site = 0x33733a;
                control_74.primitive = 0x3c43f4;
                control_74.label = re::ReString(label_73);
                control_74.value = 0x3f4058;
                control_74.minimum_float = 0.10000000149011612f;
                control_74.maximum_float = 10.0f;
                control_74.format = re::ReString(literal_72);
                control_74.flags = ReU32(0);
                pressed_75 = control(a, control_74).pressed;
            }
        }
        label_76 = page_label(s, text_pool, -360, menu_literal_74,
                              {"Instant projectile hit", "Мгновенное попадание", "瞬时命中"});
        label_77 = page_label(s, text_pool, -424, menu_literal_75,
                              {"Instant Hit", "Мгновенный хит", "瞬时命中"});
        {
            MenuControlRequest control_78;
            control_78.role = MenuControlRole::checkbox;
            control_78.site = 0x3373d8;
            control_78.primitive = 0x3bd114;
            control_78.label = re::ReString(label_77);
            control_78.value = 0x3d7fb8;
            control_78.key = 0;
            control_78.color = 0;
            control_78.description = re::ReString(label_76);
            control_78.register_search = (0 != 0);
            pressed_79 = control(a, control_78).pressed;
        }
        label_80 = page_label(s, text_pool, -312, menu_literal_76,
                              {"Expands helicopter hitbox", "Расширяет хитбокс", "扩大直升机判定"});
        label_81 = page_label(s, text_pool, -424, menu_literal_77,
                              {"Heli Magic", "Магия вертолёта", "直升机魔法"});
        {
            MenuControlRequest control_82;
            control_82.role = MenuControlRole::checkbox;
            control_82.site = 0x337475;
            control_82.primitive = 0x3bd114;
            control_82.label = re::ReString(label_81);
            control_82.value = 0x3f3ba8;
            control_82.key = 0;
            control_82.color = 0;
            control_82.description = re::ReString(label_80);
            control_82.register_search = (0 != 0);
            pressed_83 = control(a, control_82).pressed;
        }
        call(a, 0x39890c, {ReI32(1)});
        label_84 =
            page_label(s, text_pool, -312, menu_literal_78,
                       {"Freeze player during desync", "Замораживает игрока", "防止异常同步"});
        label_85 = page_label(s, text_pool, -360, menu_literal_79,
                              {"Desync On Keypress", "Десинк по клавише", "按键反同步"});
        {
            MenuControlRequest control_86;
            control_86.role = MenuControlRole::checkbox;
            control_86.site = 0x337519;
            control_86.primitive = 0x3bd114;
            control_86.label = re::ReString(label_85);
            control_86.value = 0x3ea5d8;
            control_86.key = 0;
            control_86.color = 0;
            control_86.description = re::ReString(label_84);
            control_86.register_search = (0 != 0);
            pressed_87 = control(a, control_86).pressed;
        }
        label_88 = page_label(s, text_pool, -360, menu_literal_80,
                              {"Override hit bone", "Перезапись кости", "强制命中部位"});
        label_89 = page_label(s, text_pool, -411, menu_literal_81,
                              {"Bone Override", "Замена кости", "部位覆盖"});
        {
            MenuControlRequest control_90;
            control_90.role = MenuControlRole::checkbox;
            control_90.site = 0x3375b7;
            control_90.primitive = 0x3bd114;
            control_90.label = re::ReString(label_89);
            control_90.value = 0x3f7998;
            control_90.key = 0;
            control_90.color = 0;
            control_90.description = re::ReString(label_88);
            control_90.register_search = (0 != 0);
            pressed_91 = control(a, control_90).pressed;
        }
        label_92 = page_label(s, text_pool, -411, menu_literal_82,
                              {"Hit weak spots", "Слабые места", "弱点命中"});
        label_93 = page_label(s, text_pool, -360, menu_literal_83,
                              {"Heli Rotor Override", "Ротор вертолёта", "直升机螺旋桨"});
        {
            MenuControlRequest control_94;
            control_94.role = MenuControlRole::checkbox;
            control_94.site = 0x337655;
            control_94.primitive = 0x3bd114;
            control_94.label = re::ReString(label_93);
            control_94.value = 0x3f7948;
            control_94.key = 0;
            control_94.color = 0;
            control_94.description = re::ReString(label_92);
            control_94.register_search = (0 != 0);
            pressed_95 = control(a, control_94).pressed;
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_96 = page_label(s, text_pool, -360, menu_literal_84,
                              {"Exploits Modifications", "Модификации эксплойтов", "漏洞调整"});
        literal_97 = page_literal(text_pool, 24, menu_literal_20);
        owned_text_98 = re::ReString(literal_97);
        child(s, m, a, owned_text_98, re::ReString(label_96), Vec2{0.0f, -1.0f}, (1 != 0));
        value_99 = raw(s, 0x3d7ec8) & 255u;
        if ((value_99 == 0)) {
        } else {
            label_100 = page_label(s, text_pool, 32, menu_literal_31, {"Head", "Голова", "头部"});
            owned_text_101 = re::ReString(label_100);
            label_102 = page_label(s, text_pool, -389, menu_literal_85, {"Chest", "Грудь", "胸部"});
            owned_text_103 = re::ReString(label_102);
            label_104 = page_label(s, text_pool, -328, menu_literal_86, {"Hand", "Рука", "手部"});
            owned_text_105 = re::ReString(label_104);
            label_106 = page_label(s, text_pool, -322, menu_literal_87, {"Foot", "Нога", "脚部"});
            owned_text_107 = re::ReString(label_106);
            label_108 =
                page_label(s, text_pool, -396, menu_literal_88, {"Rand", "Случайно", "随机"});
            owned_text_109 = re::ReString(label_108);
            label_110 = page_label(s, text_pool, -424, menu_literal_89,
                                   {"Rand NoHead", "Случайно без головы", "随机(无头)"});
            owned_text_111 = re::ReString(label_110);
            label_112 = page_label(s, text_pool, -411, menu_literal_90,
                                   {"Pierce Hitbone", "Кость пробития", "穿透骨骼"});
            {
                MenuControlRequest control_113;
                control_113.role = MenuControlRole::combo_strings;
                control_113.site = 0x337960;
                control_113.primitive = 0x3bf008;
                control_113.label = re::ReString(label_112);
                control_113.value = 0x3f9578;
                control_113.choices = {owned_text_101, owned_text_103, owned_text_105,
                                       owned_text_107, owned_text_109, owned_text_111};
                pressed_114 = control(a, control_113).pressed;
            }
            label_115 =
                page_label(s, text_pool, -424, menu_literal_91, {"Generic", "Стандартный", "通用"});
            owned_text_116 = re::ReString(label_115);
            label_117 =
                page_label(s, text_pool, -389, menu_literal_92, {"Glass", "Стекло", "玻璃"});
            owned_text_118 = re::ReString(label_117);
            label_119 =
                page_label(s, text_pool, -322, menu_literal_93, {"Metal", "Металл", "金属"});
            owned_text_120 = re::ReString(label_119);
            label_121 = page_label(s, text_pool, 32, menu_literal_94, {"Wood", "Дерево", "木头"});
            owned_text_122 = re::ReString(label_121);
            label_123 = page_label(s, text_pool, -328, menu_literal_95, {"Flesh", "Плоть", "肉体"});
            owned_text_124 = re::ReString(label_123);
            label_125 = page_label(s, text_pool, -396, menu_literal_96, {"Snow", "Снег", "雪"});
            owned_text_126 = re::ReString(label_125);
            label_127 = page_label(s, text_pool, -411, menu_literal_97,
                                   {"Hit Material", "Материал попадания", "命中材质"});
            {
                MenuControlRequest control_128;
                control_128.role = MenuControlRole::combo_strings;
                control_128.site = 0x337bc3;
                control_128.primitive = 0x3bf008;
                control_128.label = re::ReString(label_127);
                control_128.value = 0x3f95c8;
                control_128.choices = {owned_text_116, owned_text_118, owned_text_120,
                                       owned_text_122, owned_text_124, owned_text_126};
                pressed_129 = control(a, control_128).pressed;
            }
        }
        label_130 = page_label(s, text_pool, 32, menu_literal_31, {"Head", "Голова", "头部"});
        owned_text_131 = re::ReString(label_130);
        label_132 = page_label(s, text_pool, -389, menu_literal_85, {"Chest", "Грудь", "胸部"});
        owned_text_133 = re::ReString(label_132);
        label_134 = page_label(s, text_pool, -396, menu_literal_86, {"Hand", "Рука", "手部"});
        owned_text_135 = re::ReString(label_134);
        label_136 = page_label(s, text_pool, -322, menu_literal_87, {"Foot", "Нога", "脚部"});
        owned_text_137 = re::ReString(label_136);
        label_138 = page_label(s, text_pool, -328, menu_literal_88, {"Rand", "Случайно", "随机"});
        owned_text_139 = re::ReString(label_138);
        label_140 = page_label(s, text_pool, -424, menu_literal_89,
                               {"Rand NoHead", "Случайно без головы", "随机(无头)"});
        owned_text_141 = re::ReString(label_140);
        label_142 = page_label(s, text_pool, -411, menu_literal_98,
                               {"Override Bone", "Переопределение кости", "覆盖部位"});
        {
            MenuControlRequest control_143;
            control_143.role = MenuControlRole::combo_strings;
            control_143.site = 0x337e26;
            control_143.primitive = 0x3bf008;
            control_143.label = re::ReString(label_142);
            control_143.value = 0x3f79e8;
            control_143.choices = {owned_text_131, owned_text_133, owned_text_135,
                                   owned_text_137, owned_text_139, owned_text_141};
            pressed_144 = control(a, control_143).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_337e7c(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x337e7c..0x338f14.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef label_4{};
        [[maybe_unused]] bool pressed_6{};
        [[maybe_unused]] ReU32 value_7{};
        [[maybe_unused]] MenuPageTextRef literal_8{};
        [[maybe_unused]] MenuPageTextRef label_9{};
        [[maybe_unused]] bool pressed_11{};
        [[maybe_unused]] MenuPageTextRef label_12{};
        [[maybe_unused]] re::ReString owned_text_13{};
        [[maybe_unused]] MenuPageTextRef label_14{};
        [[maybe_unused]] re::ReString owned_text_15{};
        [[maybe_unused]] MenuPageTextRef label_16{};
        [[maybe_unused]] re::ReString owned_text_17{};
        [[maybe_unused]] MenuPageTextRef label_18{};
        [[maybe_unused]] re::ReString owned_text_19{};
        [[maybe_unused]] MenuPageTextRef label_20{};
        [[maybe_unused]] re::ReString owned_text_21{};
        [[maybe_unused]] MenuPageTextRef label_22{};
        [[maybe_unused]] re::ReString owned_text_23{};
        [[maybe_unused]] MenuPageTextRef label_24{};
        [[maybe_unused]] re::ReString owned_text_25{};
        [[maybe_unused]] MenuPageTextRef label_26{};
        [[maybe_unused]] bool pressed_28{};
        [[maybe_unused]] MenuPageTextRef label_29{};
        [[maybe_unused]] MenuPageTextRef label_30{};
        [[maybe_unused]] MenuPageTextRef label_31{};
        [[maybe_unused]] bool pressed_33{};
        [[maybe_unused]] MenuPageTextRef label_34{};
        [[maybe_unused]] bool pressed_36{};
        [[maybe_unused]] MenuPageTextRef label_37{};
        [[maybe_unused]] MenuPageTextRef label_38{};
        [[maybe_unused]] bool pressed_40{};
        [[maybe_unused]] ReU32 value_41{};
        [[maybe_unused]] MenuPageTextRef label_42{};
        [[maybe_unused]] bool pressed_44{};
        [[maybe_unused]] MenuPageTextRef label_45{};
        [[maybe_unused]] bool pressed_47{};
        [[maybe_unused]] ReU32 value_48{};
        [[maybe_unused]] MenuPageTextRef literal_49{};
        [[maybe_unused]] MenuPageTextRef label_50{};
        [[maybe_unused]] bool pressed_52{};
        [[maybe_unused]] MenuPageTextRef literal_53{};
        [[maybe_unused]] MenuPageTextRef label_54{};
        [[maybe_unused]] bool pressed_56{};
        [[maybe_unused]] MenuPageTextRef label_57{};
        [[maybe_unused]] MenuPageTextRef label_58{};
        [[maybe_unused]] bool pressed_60{};
        [[maybe_unused]] MenuPageTextRef label_61{};
        [[maybe_unused]] bool pressed_63{};
        [[maybe_unused]] MenuPageTextRef label_64{};
        [[maybe_unused]] bool pressed_66{};
        [[maybe_unused]] ReU32 value_67{};
        [[maybe_unused]] MenuPageTextRef label_68{};
        [[maybe_unused]] MenuPageTextRef literal_69{};
        [[maybe_unused]] MenuPageTextRef label_70{};
        [[maybe_unused]] bool pressed_72{};
        [[maybe_unused]] MenuPageTextRef literal_73{};
        [[maybe_unused]] MenuPageTextRef label_74{};
        [[maybe_unused]] bool pressed_76{};
        [[maybe_unused]] MenuPageTextRef literal_77{};
        [[maybe_unused]] MenuPageTextRef label_78{};
        [[maybe_unused]] bool pressed_80{};
        [[maybe_unused]] MenuPageTextRef label_81{};
        [[maybe_unused]] MenuPageTextRef literal_82{};
        [[maybe_unused]] re::ReString owned_text_83{};
        [[maybe_unused]] MenuPageTextRef label_84{};
        [[maybe_unused]] re::ReString owned_text_85{};
        [[maybe_unused]] MenuPageTextRef label_86{};
        [[maybe_unused]] re::ReString owned_text_87{};
        [[maybe_unused]] MenuPageTextRef label_88{};
        [[maybe_unused]] re::ReString owned_text_89{};
        [[maybe_unused]] MenuPageTextRef label_90{};
        [[maybe_unused]] re::ReString owned_text_91{};
        [[maybe_unused]] MenuPageTextRef label_92{};
        [[maybe_unused]] re::ReString owned_text_93{};
        [[maybe_unused]] MenuPageTextRef label_94{};
        [[maybe_unused]] bool pressed_96{};
        [[maybe_unused]] ReU32 value_97{};
        [[maybe_unused]] MenuPageTextRef literal_98{};
        [[maybe_unused]] MenuPageTextRef label_99{};
        [[maybe_unused]] bool pressed_101{};
        [[maybe_unused]] MenuPageTextRef literal_102{};
        [[maybe_unused]] MenuPageTextRef label_103{};
        [[maybe_unused]] bool pressed_105{};
        [[maybe_unused]] ReU32 value_106{};
        [[maybe_unused]] MenuPageTextRef literal_107{};
        [[maybe_unused]] MenuPageTextRef label_108{};
        [[maybe_unused]] bool pressed_110{};
        [[maybe_unused]] MenuPageTextRef literal_111{};
        [[maybe_unused]] MenuPageTextRef label_112{};
        [[maybe_unused]] bool pressed_114{};
        label_1 =
            page_label(s, text_pool, -450, menu_literal_99, {"Visuals", "Визуалы", "视觉效果"});
        literal_2 = page_literal(text_pool, 24, menu_literal_100);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        label_4 = page_label(s, text_pool, -504, menu_literal_101,
                             {"Hit Chams", "ударить Чамаса", "击中查马斯"});
        {
            MenuControlRequest control_5;
            control_5.role = MenuControlRole::checkbox;
            control_5.site = 0x337f9c;
            control_5.primitive = 0x3bd114;
            control_5.label = re::ReString(label_4);
            control_5.value = 0x3d7dd8;
            control_5.key = 0;
            control_5.color = 0;
            control_5.description = "";
            control_5.register_search = (0 != 0);
            pressed_6 = control(a, control_5).pressed;
        }
        value_7 = raw(s, 0x3d7dd8) & 255u;
        if ((value_7 == 0)) {
        } else {
            literal_8 = page_literal(text_pool, 24, menu_literal_29);
            label_9 = page_label(s, text_pool, -504, menu_literal_102,
                                 {"Chams Timer", "Чамс Таймер", "查姆斯计时器"});
            {
                MenuControlRequest control_10;
                control_10.role = MenuControlRole::slider_float;
                control_10.site = 0x33802e;
                control_10.primitive = 0x3c43f4;
                control_10.label = re::ReString(label_9);
                control_10.value = 0x3fca58;
                control_10.minimum_float = 0.5f;
                control_10.maximum_float = 5.0f;
                control_10.format = re::ReString(literal_8);
                control_10.flags = ReU32(0);
                pressed_11 = control(a, control_10).pressed;
            }
            label_12 = page_label(s, text_pool, -408, menu_literal_103,
                                  {"Glow Vischeck", "Свечение (видимый)", "发光（可见检查）"});
            owned_text_13 = re::ReString(label_12);
            label_14 = page_label(s, text_pool, -389, menu_literal_104,
                                  {"Plasma Vischeck", "Плазма (видимый)", "等离子（可见检查）"});
            owned_text_15 = re::ReString(label_14);
            label_16 = page_label(s, text_pool, -72, menu_literal_105,
                                  {"Solid Vischeck", "Сплошной (видимый)", "纯色（可见检查）"});
            owned_text_17 = re::ReString(label_16);
            label_18 = page_label(s, text_pool, -464, menu_literal_106,
                                  {"Mesh Vischeck", "Сетка (видимый)", "网格（可见检查）"});
            owned_text_19 = re::ReString(label_18);
            label_20 = page_label(
                s, text_pool, -336, menu_literal_107,
                {"Rainbow Wire Vischeck", "Радужный каркас (видимый)", "彩虹线框（可见检查）"});
            owned_text_21 = re::ReString(label_20);
            label_22 = page_label(s, text_pool, -450, menu_literal_108,
                                  {"Iridescent", "Переливающийся", "虹彩"});
            owned_text_23 = re::ReString(label_22);
            label_24 = page_label(s, text_pool, 32, menu_literal_109,
                                  {"Naked", "Без материала", "无材质"});
            owned_text_25 = re::ReString(label_24);
            label_26 =
                page_label(s, text_pool, -504, menu_literal_110, {"Material", "Материал", "材质"});
            {
                MenuControlRequest control_27;
                control_27.role = MenuControlRole::combo_strings;
                control_27.site = 0x3382cd;
                control_27.primitive = 0x3bf008;
                control_27.label = re::ReString(label_26);
                control_27.value = 0x3fcff8;
                control_27.choices = {owned_text_13, owned_text_15, owned_text_17, owned_text_19,
                                      owned_text_21, owned_text_23, owned_text_25};
                pressed_28 = control(a, control_27).pressed;
            }
            label_29 = page_label(s, text_pool, -464, menu_literal_111,
                                  {"Visible Color", "Видимый цвет", "可见颜色"});
            color_label(s, a, re::ReString(label_29), 0x3fc948, 0x338333);
            label_30 = page_label(s, text_pool, -488, menu_literal_112,
                                  {"Non Visible Color", "Невидимый цвет", "不可见颜色"});
            color_label(s, a, re::ReString(label_30), 0x3fc9a8, 0x338380);
        }
        label_31 =
            page_label(s, text_pool, -504, menu_literal_113, {"Crosshair", "Прицел", "准星"});
        {
            MenuControlRequest control_32;
            control_32.role = MenuControlRole::checkbox;
            control_32.site = 0x3383e1;
            control_32.primitive = 0x3bd114;
            control_32.label = re::ReString(label_31);
            control_32.value = 0x3fc608;
            control_32.key = 0;
            control_32.color = 0x3ec938;
            control_32.description = "";
            control_32.register_search = (0 != 0);
            pressed_33 = control(a, control_32).pressed;
        }
        label_34 = page_label(s, text_pool, 16, menu_literal_114, {"FOV", "ФОВ", "视野"});
        {
            MenuControlRequest control_35;
            control_35.role = MenuControlRole::checkbox;
            control_35.site = 0x338444;
            control_35.primitive = 0x3bd114;
            control_35.label = re::ReString(label_34);
            control_35.value = 0x3e71a8;
            control_35.key = 0;
            control_35.color = 0x3ec998;
            control_35.description = "";
            control_35.register_search = (0 != 0);
            pressed_36 = control(a, control_35).pressed;
        }
        label_37 = page_label(s, text_pool, -389, menu_literal_115,
                              {"Draw projectile path", "Путь снаряда", "显示弹道"});
        label_38 = page_label(s, text_pool, -488, menu_literal_116,
                              {"Simulate Projectile", "Симуляция снаряда", "弹道模拟"});
        {
            MenuControlRequest control_39;
            control_39.role = MenuControlRole::checkbox;
            control_39.site = 0x3384e5;
            control_39.primitive = 0x3bd114;
            control_39.label = re::ReString(label_38);
            control_39.value = 0x3ea678;
            control_39.key = 0;
            control_39.color = 0x3ecb18;
            control_39.description = re::ReString(label_37);
            control_39.register_search = (0 != 0);
            pressed_40 = control(a, control_39).pressed;
        }
        value_41 = raw(s, 0x3ea678) & 255u;
        if ((value_41 == 0)) {
        } else {
            label_42 = page_label(s, text_pool, -504, menu_literal_117,
                                  {"Draw Path", "Показ пути", "路径"});
            {
                MenuControlRequest control_43;
                control_43.role = MenuControlRole::checkbox;
                control_43.site = 0x33854f;
                control_43.primitive = 0x3bd114;
                control_43.label = re::ReString(label_42);
                control_43.value = 0x3e7068;
                control_43.key = 0;
                control_43.color = 0;
                control_43.description = "";
                control_43.register_search = (0 != 0);
                pressed_44 = control(a, control_43).pressed;
            }
            label_45 = page_label(s, text_pool, -464, menu_literal_118,
                                  {"Draw Hitpoint", "Точка попадания", "命中点"});
            {
                MenuControlRequest control_46;
                control_46.role = MenuControlRole::checkbox;
                control_46.site = 0x3385ac;
                control_46.primitive = 0x3bd114;
                control_46.label = re::ReString(label_45);
                control_46.value = 0x3e70b8;
                control_46.key = 0;
                control_46.color = 0;
                control_46.description = "";
                control_46.register_search = (0 != 0);
                pressed_47 = control(a, control_46).pressed;
            }
            value_48 = raw(s, 0x3e70b8) & 255u;
            if ((value_48 == 0)) {
            } else {
                literal_49 = page_literal(text_pool, 24, menu_literal_29);
                label_50 = page_label(s, text_pool, -488, menu_literal_119,
                                      {"Boom Hitpoint %", "Взрыв %", "爆炸百分比"});
                {
                    MenuControlRequest control_51;
                    control_51.role = MenuControlRole::slider_float;
                    control_51.site = 0x338641;
                    control_51.primitive = 0x3c43f4;
                    control_51.label = re::ReString(label_50);
                    control_51.value = 0x3ede38;
                    control_51.minimum_float = 0.10000000149011612f;
                    control_51.maximum_float = 1.100000023841858f;
                    control_51.format = re::ReString(literal_49);
                    control_51.flags = ReU32(0);
                    pressed_52 = control(a, control_51).pressed;
                }
                literal_53 = page_literal(text_pool, 24, menu_literal_29);
                label_54 = page_label(s, text_pool, -336, menu_literal_120,
                                      {"Projectile Hitpoint %", "Снаряд %", "弹道百分比"});
                {
                    MenuControlRequest control_55;
                    control_55.role = MenuControlRole::slider_float;
                    control_55.site = 0x3386c0;
                    control_55.primitive = 0x3c43f4;
                    control_55.label = re::ReString(label_54);
                    control_55.value = 0x3ede88;
                    control_55.minimum_float = 0.10000000149011612f;
                    control_55.maximum_float = 1.100000023841858f;
                    control_55.format = re::ReString(literal_53);
                    control_55.flags = ReU32(0);
                    pressed_56 = control(a, control_55).pressed;
                }
            }
        }
        label_57 = page_label(s, text_pool, -488, menu_literal_121,
                              {"Shows aim point", "Показывает точку", "显示瞄准点"});
        label_58 = page_label(s, text_pool, -389, menu_literal_122,
                              {"Predicted Marker", "Маркер", "预测标记"});
        {
            MenuControlRequest control_59;
            control_59.role = MenuControlRole::checkbox;
            control_59.site = 0x338761;
            control_59.primitive = 0x3bd114;
            control_59.label = re::ReString(label_58);
            control_59.value = 0x3ea6c8;
            control_59.key = 0;
            control_59.color = 0x3ecb78;
            control_59.description = re::ReString(label_57);
            control_59.register_search = (0 != 0);
            pressed_60 = control(a, control_59).pressed;
        }
        label_61 = page_label(s, text_pool, -488, menu_literal_123,
                              {"Target Snapline", "Линия", "目标线"});
        {
            MenuControlRequest control_62;
            control_62.role = MenuControlRole::checkbox;
            control_62.site = 0x3387c2;
            control_62.primitive = 0x3bd114;
            control_62.label = re::ReString(label_61);
            control_62.value = 0x3e7ab8;
            control_62.key = 0;
            control_62.color = 0x3ec8d8;
            control_62.description = "";
            control_62.register_search = (0 != 0);
            pressed_63 = control(a, control_62).pressed;
        }
        label_64 = page_label(s, text_pool, -488, menu_literal_124,
                              {"Projectile Tracers", "Трассеры", "弹道轨迹"});
        {
            MenuControlRequest control_65;
            control_65.role = MenuControlRole::checkbox;
            control_65.site = 0x338823;
            control_65.primitive = 0x3bd114;
            control_65.label = re::ReString(label_64);
            control_65.value = 0x3e9cc8;
            control_65.key = 0;
            control_65.color = 0x3ea7d8;
            control_65.description = "";
            control_65.register_search = (0 != 0);
            pressed_66 = control(a, control_65).pressed;
        }
        value_67 = raw(s, 0x3e9cc8) & 255u;
        if ((value_67 == 0)) {
        } else {
            label_68 = page_label(s, text_pool, -504, menu_literal_125,
                                  {"Glow Color", "Свечение", "发光颜色"});
            color_label(s, a, re::ReString(label_68), 0x3ea778, 0x33887d);
            literal_69 = page_literal(text_pool, 24, menu_literal_29);
            label_70 =
                page_label(s, text_pool, -464, menu_literal_126, {"Glow Strength", "Сила", "强度"});
            {
                MenuControlRequest control_71;
                control_71.role = MenuControlRole::slider_float;
                control_71.site = 0x3388fd;
                control_71.primitive = 0x3c43f4;
                control_71.label = re::ReString(label_70);
                control_71.value = 0x3edd98;
                control_71.minimum_float = 0.0f;
                control_71.maximum_float = 10.0f;
                control_71.format = re::ReString(literal_69);
                control_71.flags = ReU32(0);
                pressed_72 = control(a, control_71).pressed;
            }
            literal_73 = page_literal(text_pool, 24, menu_literal_29);
            label_74 = page_label(s, text_pool, -488, menu_literal_127,
                                  {"Glow Smoothness", "Сглаживание", "平滑"});
            {
                MenuControlRequest control_75;
                control_75.role = MenuControlRole::slider_float;
                control_75.site = 0x33897d;
                control_75.primitive = 0x3c43f4;
                control_75.label = re::ReString(label_74);
                control_75.value = 0x3eded8;
                control_75.minimum_float = 0.0f;
                control_75.maximum_float = 10.0f;
                control_75.format = re::ReString(literal_73);
                control_75.flags = ReU32(0);
                pressed_76 = control(a, control_75).pressed;
            }
            literal_77 = page_literal(text_pool, 24, menu_literal_29);
            label_78 = page_label(s, text_pool, -488, menu_literal_128,
                                  {"Tracer Lifetime", "Время", "持续时间"});
            {
                MenuControlRequest control_79;
                control_79.role = MenuControlRole::slider_float;
                control_79.site = 0x3389fd;
                control_79.primitive = 0x3c43f4;
                control_79.label = re::ReString(label_78);
                control_79.value = 0x3ed5c8;
                control_79.minimum_float = 0.0f;
                control_79.maximum_float = 2.5f;
                control_79.format = re::ReString(literal_77);
                control_79.flags = ReU32(0);
                pressed_80 = control(a, control_79).pressed;
            }
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_81 = page_label(s, text_pool, -368, menu_literal_129,
                              {"AimVisuals Modifications", "Модификации визуала", "瞄准视觉"});
        literal_82 = page_literal(text_pool, 24, menu_literal_20);
        owned_text_83 = re::ReString(literal_82);
        child(s, m, a, owned_text_83, re::ReString(label_81), Vec2{0.0f, -1.0f}, (1 != 0));
        label_84 = page_label(s, text_pool, -450, menu_literal_130, {"Cross", "Крест", "十字"});
        owned_text_85 = re::ReString(label_84);
        label_86 = page_label(s, text_pool, -408, menu_literal_131,
                              {"Thick Cross", "Толстый крест", "粗十字"});
        owned_text_87 = re::ReString(label_86);
        label_88 = page_label(s, text_pool, 32, menu_literal_132, {"Dot", "Точка", "点"});
        owned_text_89 = re::ReString(label_88);
        label_90 = page_label(s, text_pool, -394, menu_literal_133, {"Nazi", "Свастика", "纳粹"});
        owned_text_91 = re::ReString(label_90);
        label_92 =
            page_label(s, text_pool, -504, menu_literal_134, {"4Square", "4 квадрата", "四方块"});
        owned_text_93 = re::ReString(label_92);
        label_94 = page_label(s, text_pool, -389, menu_literal_135,
                              {"Crosshair Types", "Типы прицела", "准星类型"});
        {
            MenuControlRequest control_95;
            control_95.role = MenuControlRole::combo_strings;
            control_95.site = 0x338caa;
            control_95.primitive = 0x3bf008;
            control_95.label = re::ReString(label_94);
            control_95.value = 0x3fcfa8;
            control_95.choices = {owned_text_85, owned_text_87, owned_text_89, owned_text_91,
                                  owned_text_93};
            pressed_96 = control(a, control_95).pressed;
        }
        value_97 = raw(s, 0x3fcfa8);
        if ((value_97 != 3)) {
        } else {
            literal_98 = page_literal(text_pool, 24, menu_literal_29);
            label_99 = page_label(s, text_pool, -504, menu_literal_136,
                                  {"Spin Speed", "Скорость", "旋转速度"});
            {
                MenuControlRequest control_100;
                control_100.role = MenuControlRole::slider_float;
                control_100.site = 0x338d57;
                control_100.primitive = 0x3c43f4;
                control_100.label = re::ReString(label_99);
                control_100.value = 0x3fcc38;
                control_100.minimum_float = 100.0f;
                control_100.maximum_float = 500.0f;
                control_100.format = re::ReString(literal_98);
                control_100.flags = ReU32(0);
                pressed_101 = control(a, control_100).pressed;
            }
            literal_102 = page_literal(text_pool, 24, menu_literal_29);
            label_103 = page_label(s, text_pool, 32, menu_literal_137, {"Size", "Размер", "大小"});
            {
                MenuControlRequest control_104;
                control_104.role = MenuControlRole::slider_float;
                control_104.site = 0x338dde;
                control_104.primitive = 0x3c43f4;
                control_104.label = re::ReString(label_103);
                control_104.value = 0x3fcb98;
                control_104.minimum_float = 4.0f;
                control_104.maximum_float = 40.0f;
                control_104.format = re::ReString(literal_102);
                control_104.flags = ReU32(0);
                pressed_105 = control(a, control_104).pressed;
            }
            value_106 = raw(s, 0x3fcfa8);
        }
        if ((((value_97 != 3) ? value_97 : value_106) != 4)) {
        } else {
            literal_107 = page_literal(text_pool, 24, menu_literal_29);
            label_108 = page_label(s, text_pool, -408, menu_literal_138,
                                   {"Square Width", "Ширина", "宽度"});
            {
                MenuControlRequest control_109;
                control_109.role = MenuControlRole::slider_float;
                control_109.site = 0x338e71;
                control_109.primitive = 0x3c43f4;
                control_109.label = re::ReString(label_108);
                control_109.value = 0x3fcbe8;
                control_109.minimum_float = 2.0f;
                control_109.maximum_float = 10.0f;
                control_109.format = re::ReString(literal_107);
                control_109.flags = ReU32(0);
                pressed_110 = control(a, control_109).pressed;
            }
        }
        literal_111 = page_literal(text_pool, 24, menu_literal_60);
        label_112 = page_label(s, text_pool, -504, menu_literal_139,
                               {"Fov Value", "ФОВ значение", "视野值"});
        {
            MenuControlRequest control_113;
            control_113.role = MenuControlRole::slider_integer;
            control_113.site = 0x338eef;
            control_113.primitive = 0x3c4438;
            control_113.label = re::ReString(label_112);
            control_113.value = 0x3d81e8;
            control_113.minimum = 0;
            control_113.maximum = 1000;
            control_113.format = re::ReString(literal_111);
            control_113.flags = ReU32(0);
            pressed_114 = control(a, control_113).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_338f30(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x338f30..0x33a6a9.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef label_4{};
        [[maybe_unused]] MenuPageTextRef label_5{};
        [[maybe_unused]] bool pressed_7{};
        [[maybe_unused]] MenuPageTextRef label_8{};
        [[maybe_unused]] bool pressed_10{};
        [[maybe_unused]] MenuPageTextRef label_11{};
        [[maybe_unused]] bool pressed_13{};
        [[maybe_unused]] MenuPageTextRef label_14{};
        [[maybe_unused]] bool pressed_16{};
        [[maybe_unused]] MenuPageTextRef label_17{};
        [[maybe_unused]] bool pressed_19{};
        [[maybe_unused]] MenuPageTextRef label_20{};
        [[maybe_unused]] bool pressed_22{};
        [[maybe_unused]] MenuPageTextRef label_23{};
        [[maybe_unused]] bool pressed_25{};
        [[maybe_unused]] MenuPageTextRef label_26{};
        [[maybe_unused]] MenuPageTextRef label_27{};
        [[maybe_unused]] bool pressed_29{};
        [[maybe_unused]] MenuPageTextRef label_30{};
        [[maybe_unused]] bool pressed_32{};
        [[maybe_unused]] ReU32 value_33{};
        [[maybe_unused]] MenuPageTextRef literal_34{};
        [[maybe_unused]] MenuPageTextRef label_35{};
        [[maybe_unused]] bool pressed_37{};
        [[maybe_unused]] MenuPageTextRef label_38{};
        [[maybe_unused]] bool pressed_40{};
        [[maybe_unused]] ReU32 value_41{};
        [[maybe_unused]] MenuPageTextRef label_42{};
        [[maybe_unused]] bool pressed_44{};
        [[maybe_unused]] MenuPageTextRef literal_45{};
        [[maybe_unused]] MenuPageTextRef literal_46{};
        [[maybe_unused]] bool pressed_48{};
        [[maybe_unused]] MenuPageTextRef label_49{};
        [[maybe_unused]] MenuPageTextRef literal_50{};
        [[maybe_unused]] re::ReString owned_text_51{};
        [[maybe_unused]] MenuPageTextRef label_52{};
        [[maybe_unused]] bool pressed_54{};
        [[maybe_unused]] ReU32 value_55{};
        [[maybe_unused]] MenuPageTextRef label_56{};
        [[maybe_unused]] re::ReString owned_text_57{};
        [[maybe_unused]] MenuPageTextRef label_58{};
        [[maybe_unused]] re::ReString owned_text_59{};
        [[maybe_unused]] MenuPageTextRef label_60{};
        [[maybe_unused]] re::ReString owned_text_61{};
        [[maybe_unused]] MenuPageTextRef label_62{};
        [[maybe_unused]] re::ReString owned_text_63{};
        [[maybe_unused]] MenuPageTextRef label_64{};
        [[maybe_unused]] re::ReString owned_text_65{};
        [[maybe_unused]] MenuPageTextRef label_66{};
        [[maybe_unused]] re::ReString owned_text_67{};
        [[maybe_unused]] MenuPageTextRef label_68{};
        [[maybe_unused]] re::ReString owned_text_69{};
        [[maybe_unused]] MenuPageTextRef label_70{};
        [[maybe_unused]] bool pressed_72{};
        [[maybe_unused]] MenuPageTextRef label_73{};
        [[maybe_unused]] re::ReString owned_text_74{};
        [[maybe_unused]] MenuPageTextRef label_75{};
        [[maybe_unused]] re::ReString owned_text_76{};
        [[maybe_unused]] MenuPageTextRef label_77{};
        [[maybe_unused]] bool pressed_79{};
        [[maybe_unused]] MenuPageTextRef label_80{};
        [[maybe_unused]] MenuPageTextRef label_81{};
        [[maybe_unused]] MenuPageTextRef label_82{};
        [[maybe_unused]] bool pressed_84{};
        [[maybe_unused]] MenuPageTextRef label_85{};
        [[maybe_unused]] re::ReString owned_text_86{};
        [[maybe_unused]] MenuPageTextRef label_87{};
        [[maybe_unused]] re::ReString owned_text_88{};
        [[maybe_unused]] MenuPageTextRef label_89{};
        [[maybe_unused]] re::ReString owned_text_90{};
        [[maybe_unused]] MenuPageTextRef label_91{};
        [[maybe_unused]] re::ReString owned_text_92{};
        [[maybe_unused]] MenuPageTextRef label_93{};
        [[maybe_unused]] re::ReString owned_text_94{};
        [[maybe_unused]] MenuPageTextRef label_95{};
        [[maybe_unused]] re::ReString owned_text_96{};
        [[maybe_unused]] MenuPageTextRef label_97{};
        [[maybe_unused]] re::ReString owned_text_98{};
        [[maybe_unused]] MenuPageTextRef label_99{};
        [[maybe_unused]] bool pressed_101{};
        [[maybe_unused]] bool value_102{};
        [[maybe_unused]] MenuPageTextRef literal_103{};
        [[maybe_unused]] MenuPageTextRef label_104{};
        [[maybe_unused]] bool pressed_106{};
        [[maybe_unused]] MenuPageTextRef label_107{};
        [[maybe_unused]] bool pressed_109{};
        [[maybe_unused]] MenuPageTextRef label_110{};
        [[maybe_unused]] bool pressed_112{};
        [[maybe_unused]] MenuPageTextRef label_113{};
        [[maybe_unused]] bool pressed_115{};
        [[maybe_unused]] MenuPageTextRef label_116{};
        [[maybe_unused]] bool pressed_118{};
        [[maybe_unused]] MenuPageTextRef label_119{};
        [[maybe_unused]] MenuPageTextRef label_120{};
        [[maybe_unused]] bool pressed_122{};
        [[maybe_unused]] MenuPageTextRef label_123{};
        [[maybe_unused]] MenuPageTextRef label_124{};
        [[maybe_unused]] bool pressed_126{};
        [[maybe_unused]] MenuPageTextRef label_127{};
        [[maybe_unused]] bool pressed_129{};
        [[maybe_unused]] MenuPageTextRef label_130{};
        [[maybe_unused]] MenuPageTextRef label_131{};
        [[maybe_unused]] bool pressed_133{};
        [[maybe_unused]] ReU32 value_134{};
        [[maybe_unused]] MenuPageTextRef literal_135{};
        [[maybe_unused]] MenuPageTextRef label_136{};
        [[maybe_unused]] bool pressed_138{};
        [[maybe_unused]] MenuPageTextRef label_139{};
        [[maybe_unused]] MenuPageTextRef label_140{};
        [[maybe_unused]] bool pressed_142{};
        [[maybe_unused]] MenuPageTextRef label_143{};
        [[maybe_unused]] MenuPageTextRef label_144{};
        [[maybe_unused]] bool pressed_146{};
        [[maybe_unused]] MenuPageTextRef label_147{};
        [[maybe_unused]] MenuPageTextRef literal_148{};
        [[maybe_unused]] MenuPageTextRef label_149{};
        [[maybe_unused]] bool pressed_151{};
        [[maybe_unused]] MenuPageTextRef literal_152{};
        [[maybe_unused]] MenuPageTextRef label_153{};
        [[maybe_unused]] bool pressed_155{};
        [[maybe_unused]] MenuPageTextRef literal_156{};
        [[maybe_unused]] MenuPageTextRef label_157{};
        [[maybe_unused]] bool pressed_159{};
        label_1 = page_label(s, text_pool, -568, menu_literal_140, {"Players", "Игроки", "玩家"});
        literal_2 = page_literal(text_pool, 24, menu_literal_141);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        label_4 = page_label(s, text_pool, -456, menu_literal_142,
                             {"This will randomize usernames that the cheat sees",
                              "Случайные имена игроков", "随机化玩家名称"});
        label_5 = page_label(s, text_pool, -559, menu_literal_143,
                             {"Streamer Mode", "Режим стримера", "主播模式"});
        {
            MenuControlRequest control_6;
            control_6.role = MenuControlRole::checkbox;
            control_6.site = 0x339088;
            control_6.primitive = 0x3bd114;
            control_6.label = re::ReString(label_5);
            control_6.value = 0x3fc4c8;
            control_6.key = 0;
            control_6.color = 0;
            control_6.description = re::ReString(label_4);
            control_6.register_search = (0 != 0);
            pressed_7 = control(a, control_6).pressed;
        }
        label_8 = page_label(s, text_pool, 16, menu_literal_140, {"Players", "Игроки", "玩家"});
        {
            MenuControlRequest control_9;
            control_9.role = MenuControlRole::checkbox;
            control_9.site = 0x3390f2;
            control_9.primitive = 0x3bd114;
            control_9.label = re::ReString(label_8);
            control_9.value = 0x3e7248;
            control_9.key = 0;
            control_9.color = 0x3ecab8;
            control_9.description = "";
            control_9.register_search = (0 != 0);
            pressed_10 = control(a, control_9).pressed;
        }
        label_11 =
            page_label(s, text_pool, -544, menu_literal_144, {"Scientist", "Учёные", "科学家"});
        {
            MenuControlRequest control_12;
            control_12.role = MenuControlRole::checkbox;
            control_12.site = 0x339153;
            control_12.primitive = 0x3bd114;
            control_12.label = re::ReString(label_11);
            control_12.value = 0x3e7428;
            control_12.key = 0;
            control_12.color = 0x3ec818;
            control_12.description = "";
            control_12.register_search = (0 != 0);
            pressed_13 = control(a, control_12).pressed;
        }
        label_14 = page_label(s, text_pool, 16, menu_literal_145, {"Name", "Имя", "名称"});
        {
            MenuControlRequest control_15;
            control_15.role = MenuControlRole::checkbox;
            control_15.site = 0x3391b2;
            control_15.primitive = 0x3bd114;
            control_15.label = re::ReString(label_14);
            control_15.value = 0x3e7798;
            control_15.key = 0;
            control_15.color = 0;
            control_15.description = "";
            control_15.register_search = (0 != 0);
            pressed_16 = control(a, control_15).pressed;
        }
        label_17 =
            page_label(s, text_pool, -568, menu_literal_146, {"Distance", "Дистанция", "距离"});
        {
            MenuControlRequest control_18;
            control_18.role = MenuControlRole::checkbox;
            control_18.site = 0x33920f;
            control_18.primitive = 0x3bd114;
            control_18.label = re::ReString(label_17);
            control_18.value = 0x3e77e8;
            control_18.key = 0;
            control_18.color = 0;
            control_18.description = "";
            control_18.register_search = (0 != 0);
            pressed_19 = control(a, control_18).pressed;
        }
        label_20 = page_label(s, text_pool, 16, menu_literal_147, {"TeamID", "Тим ID", "队伍ID"});
        {
            MenuControlRequest control_21;
            control_21.role = MenuControlRole::checkbox;
            control_21.site = 0x33926e;
            control_21.primitive = 0x3bd114;
            control_21.label = re::ReString(label_20);
            control_21.value = 0x3e7748;
            control_21.key = 0;
            control_21.color = 0;
            control_21.description = "";
            control_21.register_search = (0 != 0);
            pressed_22 = control(a, control_21).pressed;
        }
        label_23 = page_label(s, text_pool, 16, menu_literal_148, {"Box", "Бокс", "方框"});
        {
            MenuControlRequest control_24;
            control_24.role = MenuControlRole::checkbox;
            control_24.site = 0x3392cd;
            control_24.primitive = 0x3bd114;
            control_24.label = re::ReString(label_23);
            control_24.value = 0x3e9d18;
            control_24.key = 0;
            control_24.color = 0;
            control_24.description = "";
            control_24.register_search = (0 != 0);
            pressed_25 = control(a, control_24).pressed;
        }
        label_26 = page_label(s, text_pool, -456, menu_literal_149,
                              {"Draws where the player is looking", "Показывает куда смотрит игрок",
                               "显示玩家视线方向"});
        label_27 = page_label(s, text_pool, -559, menu_literal_150,
                              {"View Direction", "Направление взгляда", "视线方向"});
        {
            MenuControlRequest control_28;
            control_28.role = MenuControlRole::checkbox;
            control_28.site = 0x33936a;
            control_28.primitive = 0x3bd114;
            control_28.label = re::ReString(label_27);
            control_28.value = 0x3e7888;
            control_28.key = 0;
            control_28.color = 0;
            control_28.description = re::ReString(label_26);
            control_28.register_search = (0 != 0);
            pressed_29 = control(a, control_28).pressed;
        }
        label_30 = page_label(s, text_pool, -568, menu_literal_151, {"Skeleton", "Скелет", "骨骼"});
        {
            MenuControlRequest control_31;
            control_31.role = MenuControlRole::checkbox;
            control_31.site = 0x3393c7;
            control_31.primitive = 0x3bd114;
            control_31.label = re::ReString(label_30);
            control_31.value = 0x3e7608;
            control_31.key = 0;
            control_31.color = 0;
            control_31.description = "";
            control_31.register_search = (0 != 0);
            pressed_32 = control(a, control_31).pressed;
        }
        value_33 = raw(s, 0x3e7608) & 255u;
        if ((value_33 == 0)) {
        } else {
            literal_34 = page_literal(text_pool, 24, menu_literal_29);
            label_35 =
                page_label(s, text_pool, -544, menu_literal_152, {"Thickness", "Толщина", "粗细"});
            {
                MenuControlRequest control_36;
                control_36.role = MenuControlRole::slider_float;
                control_36.site = 0x33945c;
                control_36.primitive = 0x3c43f4;
                control_36.label = re::ReString(label_35);
                control_36.value = 0x3ed618;
                control_36.minimum_float = 1.25f;
                control_36.maximum_float = 3.0f;
                control_36.format = re::ReString(literal_34);
                control_36.flags = ReU32(0);
                pressed_37 = control(a, control_36).pressed;
            }
        }
        label_38 = page_label(s, text_pool, -568, menu_literal_153,
                              {"HeldItem", "Предмет в руке", "手持物品"});
        {
            MenuControlRequest control_39;
            control_39.role = MenuControlRole::checkbox;
            control_39.site = 0x3394b9;
            control_39.primitive = 0x3bd114;
            control_39.label = re::ReString(label_38);
            control_39.value = 0x3e76a8;
            control_39.key = 0;
            control_39.color = 0;
            control_39.description = "";
            control_39.register_search = (0 != 0);
            pressed_40 = control(a, control_39).pressed;
        }
        value_41 = raw(s, 0x3e76a8) & 255u;
        if ((value_41 == 0)) {
        } else {
            label_42 = page_label(s, text_pool, -568, menu_literal_154,
                                  {"Use Icon", "Использовать значок", "使用图标"});
            {
                MenuControlRequest control_43;
                control_43.role = MenuControlRole::checkbox;
                control_43.site = 0x339523;
                control_43.primitive = 0x3bd114;
                control_43.label = re::ReString(label_42);
                control_43.value = 0x3e76f8;
                control_43.key = 0;
                control_43.color = 0;
                control_43.description = "";
                control_43.register_search = (0 != 0);
                pressed_44 = control(a, control_43).pressed;
            }
            literal_45 = page_literal(text_pool, 24, menu_literal_29);
            literal_46 = page_literal(text_pool, -544, menu_literal_155);
            {
                MenuControlRequest control_47;
                control_47.role = MenuControlRole::slider_float;
                control_47.site = 0x33957e;
                control_47.primitive = 0x3c43f4;
                control_47.label = re::ReString(literal_46);
                control_47.value = 0x3fca08;
                control_47.minimum_float = 1.5f;
                control_47.maximum_float = 3.0f;
                control_47.format = re::ReString(literal_45);
                control_47.flags = ReU32(0);
                pressed_48 = control(a, control_47).pressed;
            }
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_49 = page_label(s, text_pool, -528, menu_literal_156,
                              {"Players Modifications", "Модификации игроков", "玩家修改"});
        literal_50 = page_literal(text_pool, 24, menu_literal_20);
        owned_text_51 = re::ReString(literal_50);
        child(s, m, a, owned_text_51, re::ReString(label_49), Vec2{0.0f, -1.0f}, (1 != 0));
        label_52 = page_label(s, text_pool, -559, menu_literal_157,
                              {"Player Chams", "Чамсы игроков", "玩家透视材质"});
        {
            MenuControlRequest control_53;
            control_53.role = MenuControlRole::checkbox;
            control_53.site = 0x339686;
            control_53.primitive = 0x3bd114;
            control_53.label = re::ReString(label_52);
            control_53.value = 0x3e9868;
            control_53.key = 0;
            control_53.color = 0;
            control_53.description = "";
            control_53.register_search = (0 != 0);
            pressed_54 = control(a, control_53).pressed;
        }
        value_55 = raw(s, 0x3e9868) & 255u;
        if ((value_55 == 0)) {
        } else {
            label_56 = page_label(s, text_pool, -559, menu_literal_103,
                                  {"Glow Vischeck", "Свечение (видимый)", "发光（可见检查）"});
            owned_text_57 = re::ReString(label_56);
            label_58 = page_label(s, text_pool, -392, menu_literal_104,
                                  {"Plasma Vischeck", "Плазма (видимый)", "等离子（可见检查）"});
            owned_text_59 = re::ReString(label_58);
            label_60 = page_label(s, text_pool, -488, menu_literal_105,
                                  {"Solid Vischeck", "Сплошной (видимый)", "纯色（可见检查）"});
            owned_text_61 = re::ReString(label_60);
            label_62 = page_label(s, text_pool, -544, menu_literal_106,
                                  {"Mesh Vischeck", "Сетка (видимый)", "网格（可见检查）"});
            owned_text_63 = re::ReString(label_62);
            label_64 = page_label(
                s, text_pool, -104, menu_literal_107,
                {"Rainbow Wire Vischeck", "Радужный каркас (видимый)", "彩虹线框（可见检查）"});
            owned_text_65 = re::ReString(label_64);
            label_66 = page_label(s, text_pool, -473, menu_literal_108,
                                  {"Iridescent", "Переливающийся", "虹彩"});
            owned_text_67 = re::ReString(label_66);
            label_68 = page_label(s, text_pool, 32, menu_literal_109,
                                  {"Naked", "Без материала", "无材质"});
            owned_text_69 = re::ReString(label_68);
            label_70 =
                page_label(s, text_pool, -568, menu_literal_110, {"Material", "Материал", "材质"});
            {
                MenuControlRequest control_71;
                control_71.role = MenuControlRole::combo_strings;
                control_71.site = 0x33993d;
                control_71.primitive = 0x3bf008;
                control_71.label = re::ReString(label_70);
                control_71.value = 0x3eed88;
                control_71.choices = {owned_text_57, owned_text_59, owned_text_61, owned_text_63,
                                      owned_text_65, owned_text_67, owned_text_69};
                pressed_72 = control(a, control_71).pressed;
            }
            label_73 = page_label(s, text_pool, -488, menu_literal_158,
                                  {"Friendly Chams", "Френдли чамсы", "友军透视"});
            owned_text_74 = re::ReString(label_73);
            label_75 = page_label(s, text_pool, -544, menu_literal_159,
                                  {"NPC chams", "NPC чамсы", "NPC 透视"});
            owned_text_76 = re::ReString(label_75);
            label_77 = page_label(s, text_pool, 24, menu_literal_160, {"Options", "Опции", "选项"});
            {
                MenuControlRequest control_78;
                control_78.role = MenuControlRole::multiselect;
                control_78.site = 0x339a9c;
                control_78.primitive = 0x387d18;
                control_78.label = re::ReString(label_77);
                control_78.value = 0x3f0148;
                control_78.choices = {owned_text_74, owned_text_76};
                pressed_79 = control(a, control_78).pressed;
            }
            label_80 = page_label(s, text_pool, -559, menu_literal_111,
                                  {"Visible Color", "Видимый цвет", "可见颜色"});
            color_label(s, a, re::ReString(label_80), 0x3ecbd8, 0x339ae9);
            label_81 = page_label(s, text_pool, -528, menu_literal_112,
                                  {"Non Visible Color", "Невидимый цвет", "不可见颜色"});
            color_label(s, a, re::ReString(label_81), 0x3ecc38, 0x339b36);
            label_82 = page_label(s, text_pool, -528, menu_literal_161,
                                  {"Disable Culling", "Отключить отсечение", "禁用剔除"});
            {
                MenuControlRequest control_83;
                control_83.role = MenuControlRole::checkbox;
                control_83.site = 0x339b93;
                control_83.primitive = 0x3bd114;
                control_83.label = re::ReString(label_82);
                control_83.value = 0x3e7108;
                control_83.key = 0;
                control_83.color = 0;
                control_83.description = "";
                control_83.register_search = (0 != 0);
                pressed_84 = control(a, control_83).pressed;
            }
        }
        label_85 = page_label(s, text_pool, 32, menu_literal_162, {"Hotbar", "Хотбар", "快捷栏"});
        owned_text_86 = re::ReString(label_85);
        label_87 = page_label(s, text_pool, -568, menu_literal_163, {"Clothing", "Одежда", "衣服"});
        owned_text_88 = re::ReString(label_87);
        label_89 =
            page_label(s, text_pool, -544, menu_literal_164, {"Parented", "Привязка", "父级"});
        owned_text_90 = re::ReString(label_89);
        label_91 =
            page_label(s, text_pool, -473, menu_literal_165, {"Use Icons", "Иконки", "图标"});
        owned_text_92 = re::ReString(label_91);
        label_93 = page_label(s, text_pool, -528, menu_literal_166,
                              {"Ignore Friendly", "Игнор друзей", "忽略友军"});
        owned_text_94 = re::ReString(label_93);
        label_95 = page_label(s, text_pool, -559, menu_literal_167,
                              {"Ignore NPC", "Игнор NPC", "忽略NPC"});
        owned_text_96 = re::ReString(label_95);
        label_97 = page_label(s, text_pool, -488, menu_literal_168,
                              {"Ignore Sleeper", "Игнор спящих", "忽略睡眠"});
        owned_text_98 = re::ReString(label_97);
        label_99 = page_label(s, text_pool, -488, menu_literal_169,
                              {"Hotbar Options", "Опции хотбара", "快捷栏选项"});
        {
            MenuControlRequest control_100;
            control_100.role = MenuControlRole::multiselect;
            control_100.site = 0x339e63;
            control_100.primitive = 0x387d18;
            control_100.label = re::ReString(label_99);
            control_100.value = 0x3f01d8;
            control_100.choices = {owned_text_86, owned_text_88, owned_text_90, owned_text_92,
                                   owned_text_94, owned_text_96, owned_text_98};
            pressed_101 = control(a, control_100).pressed;
        }
        value_102 = bit(a, 0x3f01d8, ReUSize(3));
        if ((value_102 == 0)) {
        } else {
            literal_103 = page_literal(text_pool, 24, menu_literal_29);
            label_104 = page_label(s, text_pool, -473, menu_literal_155,
                                   {"Icon Size", "Размер иконок", "图标大小"});
            {
                MenuControlRequest control_105;
                control_105.role = MenuControlRole::slider_float;
                control_105.site = 0x339f0e;
                control_105.primitive = 0x3c43f4;
                control_105.label = re::ReString(label_104);
                control_105.value = 0x3edde8;
                control_105.minimum_float = 0.6600000262260437f;
                control_105.maximum_float = 1.3329999446868896f;
                control_105.format = re::ReString(literal_103);
                control_105.flags = ReU32(0);
                pressed_106 = control(a, control_105).pressed;
            }
        }
        label_107 = page_label(s, text_pool, 16, menu_literal_170, {"Team", "Команда", "队友"});
        {
            MenuControlRequest control_108;
            control_108.role = MenuControlRole::checkbox;
            control_108.site = 0x339f75;
            control_108.primitive = 0x3bd114;
            control_108.label = re::ReString(label_107);
            control_108.value = 0x3e9b88;
            control_108.key = 0x3ef898;
            control_108.color = 0x3ec878;
            control_108.description = "";
            control_108.register_search = (1 != 0);
            pressed_109 = control(a, control_108).pressed;
        }
        label_110 = page_label(s, text_pool, 16, menu_literal_171, {"Enemy", "Враг", "敌人"});
        {
            MenuControlRequest control_111;
            control_111.role = MenuControlRole::checkbox;
            control_111.site = 0x339fdc;
            control_111.primitive = 0x3bd114;
            control_111.label = re::ReString(label_110);
            control_111.value = 0x3ea178;
            control_111.key = 0x3ef718;
            control_111.color = 0x3ec5d8;
            control_111.description = "";
            control_111.register_search = (1 != 0);
            pressed_112 = control(a, control_111).pressed;
        }
        label_113 = page_label(s, text_pool, 16, menu_literal_172, {"Wounded", "Ранен", "倒地"});
        {
            MenuControlRequest control_114;
            control_114.role = MenuControlRole::checkbox;
            control_114.site = 0x33a03f;
            control_114.primitive = 0x3bd114;
            control_114.label = re::ReString(label_113);
            control_114.value = 0x3e7838;
            control_114.key = 0;
            control_114.color = 0x3ec698;
            control_114.description = "";
            control_114.register_search = (0 != 0);
            pressed_115 = control(a, control_114).pressed;
        }
        label_116 =
            page_label(s, text_pool, -488, menu_literal_173, {"OfflineSleeper", "Спящий", "睡眠"});
        {
            MenuControlRequest control_117;
            control_117.role = MenuControlRole::checkbox;
            control_117.site = 0x33a09f;
            control_117.primitive = 0x3bd114;
            control_117.label = re::ReString(label_116);
            control_117.value = 0x3e7338;
            control_117.key = 0;
            control_117.color = 0x3ec758;
            control_117.description = "";
            control_117.register_search = (0 != 0);
            pressed_118 = control(a, control_117).pressed;
        }
        label_119 = page_label(s, text_pool, -456, menu_literal_174,
                               {"Draws a player if sleeping while online",
                                "Показывает спящего игрока онлайн", "在线睡眠玩家显示"});
        label_120 = page_label(s, text_pool, -559, menu_literal_175,
                               {"OnlineSleeper", "Онлайн спящий", "在线睡眠"});
        {
            MenuControlRequest control_121;
            control_121.role = MenuControlRole::checkbox;
            control_121.site = 0x33a140;
            control_121.primitive = 0x3bd114;
            control_121.label = re::ReString(label_120);
            control_121.value = 0x3e7388;
            control_121.key = 0;
            control_121.color = 0x3fc8e8;
            control_121.description = re::ReString(label_119);
            control_121.register_search = (0 != 0);
            pressed_122 = control(a, control_121).pressed;
        }
        label_123 = page_label(s, text_pool, -528, menu_literal_176,
                               {"Draws dead players", "Показывает мёртвых", "显示死亡未复活玩家"});
        label_124 = page_label(s, text_pool, 24, menu_literal_177, {"Dead", "Мёртв", "死亡"});
        {
            MenuControlRequest control_125;
            control_125.role = MenuControlRole::checkbox;
            control_125.site = 0x33a1e4;
            control_125.primitive = 0x3bd114;
            control_125.label = re::ReString(label_124);
            control_125.value = 0x3e73d8;
            control_125.key = 0;
            control_125.color = 0x3ec7b8;
            control_125.description = re::ReString(label_123);
            control_125.register_search = (0 != 0);
            pressed_126 = control(a, control_125).pressed;
        }
        label_127 = page_label(s, text_pool, -544, menu_literal_178,
                               {"Safezone", "Безопасная зона", "安全区"});
        {
            MenuControlRequest control_128;
            control_128.role = MenuControlRole::checkbox;
            control_128.site = 0x33a245;
            control_128.primitive = 0x3bd114;
            control_128.label = re::ReString(label_127);
            control_128.value = 0x3e7658;
            control_128.key = 0;
            control_128.color = 0x3ec6f8;
            control_128.description = "";
            control_128.register_search = (0 != 0);
            pressed_129 = control(a, control_128).pressed;
        }
        label_130 = page_label(
            s, text_pool, -456, menu_literal_179,
            {"Alerts when player looks at you", "Предупреждает когда смотрят", "被注视警报"});
        label_131 = page_label(s, text_pool, -528, menu_literal_180,
                               {"Looking At Alerts", "Смотрит на тебя", "注视警报"});
        {
            MenuControlRequest control_132;
            control_132.role = MenuControlRole::checkbox;
            control_132.site = 0x33a2e6;
            control_132.primitive = 0x3bd114;
            control_132.label = re::ReString(label_131);
            control_132.value = 0x3e9548;
            control_132.key = 0;
            control_132.color = 0x3ea718;
            control_132.description = re::ReString(label_130);
            control_132.register_search = (0 != 0);
            pressed_133 = control(a, control_132).pressed;
        }
        value_134 = raw(s, 0x3e9548) & 255u;
        if ((value_134 == 0)) {
        } else {
            literal_135 = page_literal(text_pool, 24, menu_literal_29);
            label_136 = page_label(s, text_pool, -559, menu_literal_181,
                                   {"Alert Radius", "Радиус", "范围"});
            {
                MenuControlRequest control_137;
                control_137.role = MenuControlRole::slider_float;
                control_137.site = 0x33a373;
                control_137.primitive = 0x3c43f4;
                control_137.label = re::ReString(label_136);
                control_137.value = 0x3ed708;
                control_137.minimum_float = 0.0f;
                control_137.maximum_float = 1.0f;
                control_137.format = re::ReString(literal_135);
                control_137.flags = ReU32(0);
                pressed_138 = control(a, control_137).pressed;
            }
        }
        label_139 =
            page_label(s, text_pool, -456, menu_literal_182,
                       {"Shows if player is outside", "Показывает снаружи", "显示是否在室外"});
        label_140 = page_label(s, text_pool, 24, menu_literal_183, {"Outside", "Снаружи", "室外"});
        {
            MenuControlRequest control_141;
            control_141.role = MenuControlRole::checkbox;
            control_141.site = 0x33a412;
            control_141.primitive = 0x3bd114;
            control_141.label = re::ReString(label_140);
            control_141.value = 0x3e7298;
            control_141.key = 0;
            control_141.color = 0;
            control_141.description = re::ReString(label_139);
            control_141.register_search = (0 != 0);
            pressed_142 = control(a, control_141).pressed;
        }
        label_143 = page_label(s, text_pool, -104, menu_literal_184,
                               {"Out of view indicators", "Индикатор вне экрана", "屏幕外指示"});
        label_144 = page_label(s, text_pool, 24, menu_literal_185, {"OOF", "За экраном", "屏幕外"});
        {
            MenuControlRequest control_145;
            control_145.role = MenuControlRole::checkbox;
            control_145.site = 0x33a4b4;
            control_145.primitive = 0x3bd114;
            control_145.label = re::ReString(label_144);
            control_145.value = 0x3ea538;
            control_145.key = 0;
            control_145.color = 0;
            control_145.description = re::ReString(label_143);
            control_145.register_search = (0 != 0);
            pressed_146 = control(a, control_145).pressed;
        }
        label_147 = page_label(s, text_pool, -544, menu_literal_186,
                               {"Viscolor", "Видимый цвет", "可见颜色"});
        color_label(s, a, re::ReString(label_147), 0x3ec638, 0x33a501);
        literal_148 = page_literal(text_pool, 24, menu_literal_29);
        label_149 = page_label(s, text_pool, -559, menu_literal_187,
                               {"Text Spacing", "Интервал текста", "文本间距"});
        {
            MenuControlRequest control_150;
            control_150.role = MenuControlRole::slider_float;
            control_150.site = 0x33a581;
            control_150.primitive = 0x3c43f4;
            control_150.label = re::ReString(label_149);
            control_150.value = 0x3ed7a8;
            control_150.minimum_float = 0.0f;
            control_150.maximum_float = 10.0f;
            control_150.format = re::ReString(literal_148);
            control_150.flags = ReU32(0);
            pressed_151 = control(a, control_150).pressed;
        }
        literal_152 = page_literal(text_pool, 24, menu_literal_60);
        label_153 = page_label(s, text_pool, -528, menu_literal_188,
                               {"Player Distance", "Дистанция игроков", "玩家距离"});
        {
            MenuControlRequest control_154;
            control_154.role = MenuControlRole::slider_integer;
            control_154.site = 0x33a602;
            control_154.primitive = 0x3c4438;
            control_154.label = re::ReString(label_153);
            control_154.value = 0x3d8148;
            control_154.minimum = 0;
            control_154.maximum = 500;
            control_154.format = re::ReString(literal_152);
            control_154.flags = ReU32(0);
            pressed_155 = control(a, control_154).pressed;
        }
        literal_156 = page_literal(text_pool, 24, menu_literal_60);
        label_157 = page_label(s, text_pool, -559, menu_literal_189,
                               {"Npc Distance", "Дистанция NPC", "NPC距离"});
        {
            MenuControlRequest control_158;
            control_158.role = MenuControlRole::slider_integer;
            control_158.site = 0x33a67d;
            control_158.primitive = 0x3c4438;
            control_158.label = re::ReString(label_157);
            control_158.value = 0x3d8198;
            control_158.minimum = 0;
            control_158.maximum = 500;
            control_158.format = re::ReString(literal_156);
            control_158.flags = ReU32(0);
            pressed_159 = control(a, control_158).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_33ac78(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x33ac78..0x33c738.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef literal_4{};
        [[maybe_unused]] bool pressed_6{};
        [[maybe_unused]] ReU32 value_7{};
        [[maybe_unused]] MenuPageTextRef literal_8{};
        [[maybe_unused]] MenuPageTextRef literal_9{};
        [[maybe_unused]] bool pressed_11{};
        [[maybe_unused]] MenuPageTextRef label_12{};
        [[maybe_unused]] bool pressed_14{};
        [[maybe_unused]] MenuPageTextRef label_15{};
        [[maybe_unused]] bool pressed_17{};
        [[maybe_unused]] MenuPageTextRef label_18{};
        [[maybe_unused]] bool pressed_20{};
        [[maybe_unused]] MenuPageTextRef label_21{};
        [[maybe_unused]] bool pressed_23{};
        [[maybe_unused]] MenuPageTextRef label_24{};
        [[maybe_unused]] bool pressed_26{};
        [[maybe_unused]] MenuPageTextRef label_27{};
        [[maybe_unused]] bool pressed_29{};
        [[maybe_unused]] MenuPageTextRef label_30{};
        [[maybe_unused]] bool pressed_32{};
        [[maybe_unused]] MenuPageTextRef label_33{};
        [[maybe_unused]] bool pressed_35{};
        [[maybe_unused]] MenuPageTextRef label_36{};
        [[maybe_unused]] bool pressed_38{};
        [[maybe_unused]] MenuPageTextRef label_39{};
        [[maybe_unused]] re::ReString owned_text_40{};
        [[maybe_unused]] MenuPageTextRef label_41{};
        [[maybe_unused]] re::ReString owned_text_42{};
        [[maybe_unused]] MenuPageTextRef label_43{};
        [[maybe_unused]] re::ReString owned_text_44{};
        [[maybe_unused]] MenuPageTextRef label_45{};
        [[maybe_unused]] re::ReString owned_text_46{};
        [[maybe_unused]] MenuPageTextRef label_47{};
        [[maybe_unused]] re::ReString owned_text_48{};
        [[maybe_unused]] MenuPageTextRef label_49{};
        [[maybe_unused]] re::ReString owned_text_50{};
        [[maybe_unused]] MenuPageTextRef label_51{};
        [[maybe_unused]] re::ReString owned_text_52{};
        [[maybe_unused]] MenuPageTextRef label_53{};
        [[maybe_unused]] bool pressed_55{};
        [[maybe_unused]] MenuPageTextRef literal_56{};
        [[maybe_unused]] MenuPageTextRef label_57{};
        [[maybe_unused]] bool pressed_59{};
        [[maybe_unused]] MenuPageTextRef label_60{};
        [[maybe_unused]] MenuPageTextRef literal_61{};
        [[maybe_unused]] bool pressed_63{};
        [[maybe_unused]] ReU32 value_64{};
        [[maybe_unused]] MenuPageTextRef literal_65{};
        [[maybe_unused]] MenuPageTextRef literal_66{};
        [[maybe_unused]] bool pressed_68{};
        [[maybe_unused]] MenuPageTextRef label_69{};
        [[maybe_unused]] bool pressed_71{};
        [[maybe_unused]] MenuPageTextRef label_72{};
        [[maybe_unused]] bool pressed_74{};
        [[maybe_unused]] MenuPageTextRef label_75{};
        [[maybe_unused]] bool pressed_77{};
        [[maybe_unused]] MenuPageTextRef label_78{};
        [[maybe_unused]] bool pressed_80{};
        [[maybe_unused]] MenuPageTextRef label_81{};
        [[maybe_unused]] bool pressed_83{};
        [[maybe_unused]] MenuPageTextRef label_84{};
        [[maybe_unused]] bool pressed_86{};
        [[maybe_unused]] MenuPageTextRef literal_87{};
        [[maybe_unused]] MenuPageTextRef label_88{};
        [[maybe_unused]] bool pressed_90{};
        [[maybe_unused]] MenuPageTextRef label_91{};
        [[maybe_unused]] MenuPageTextRef literal_92{};
        [[maybe_unused]] re::ReString owned_text_93{};
        [[maybe_unused]] MenuPageTextRef literal_94{};
        [[maybe_unused]] bool pressed_96{};
        [[maybe_unused]] ReU32 value_97{};
        [[maybe_unused]] MenuPageTextRef literal_98{};
        [[maybe_unused]] MenuPageTextRef literal_99{};
        [[maybe_unused]] bool pressed_101{};
        [[maybe_unused]] MenuPageTextRef label_102{};
        [[maybe_unused]] bool pressed_104{};
        [[maybe_unused]] ReU32 value_105{};
        [[maybe_unused]] MenuPageTextRef literal_106{};
        [[maybe_unused]] MenuPageTextRef label_107{};
        [[maybe_unused]] bool pressed_109{};
        [[maybe_unused]] MenuPageTextRef label_110{};
        [[maybe_unused]] bool pressed_112{};
        [[maybe_unused]] ReU32 value_113{};
        [[maybe_unused]] MenuPageTextRef literal_114{};
        [[maybe_unused]] MenuPageTextRef label_115{};
        [[maybe_unused]] bool pressed_117{};
        [[maybe_unused]] MenuPageTextRef label_118{};
        [[maybe_unused]] bool pressed_120{};
        [[maybe_unused]] ReU32 value_121{};
        [[maybe_unused]] MenuPageTextRef literal_122{};
        [[maybe_unused]] MenuPageTextRef label_123{};
        [[maybe_unused]] bool pressed_125{};
        [[maybe_unused]] MenuPageTextRef label_126{};
        [[maybe_unused]] bool pressed_128{};
        [[maybe_unused]] ReU32 value_129{};
        [[maybe_unused]] MenuPageTextRef literal_130{};
        [[maybe_unused]] MenuPageTextRef label_131{};
        [[maybe_unused]] bool pressed_133{};
        [[maybe_unused]] MenuPageTextRef label_134{};
        [[maybe_unused]] bool pressed_136{};
        [[maybe_unused]] ReU32 value_137{};
        [[maybe_unused]] MenuPageTextRef literal_138{};
        [[maybe_unused]] MenuPageTextRef label_139{};
        [[maybe_unused]] bool pressed_141{};
        [[maybe_unused]] MenuPageTextRef label_142{};
        [[maybe_unused]] bool pressed_144{};
        [[maybe_unused]] ReU32 value_145{};
        [[maybe_unused]] MenuPageTextRef literal_146{};
        [[maybe_unused]] MenuPageTextRef label_147{};
        [[maybe_unused]] bool pressed_149{};
        [[maybe_unused]] MenuPageTextRef label_150{};
        [[maybe_unused]] bool pressed_152{};
        [[maybe_unused]] ReU32 value_153{};
        [[maybe_unused]] MenuPageTextRef literal_154{};
        [[maybe_unused]] MenuPageTextRef label_155{};
        [[maybe_unused]] bool pressed_157{};
        [[maybe_unused]] MenuPageTextRef label_158{};
        [[maybe_unused]] bool pressed_160{};
        [[maybe_unused]] ReU32 value_161{};
        [[maybe_unused]] MenuPageTextRef literal_162{};
        [[maybe_unused]] MenuPageTextRef label_163{};
        [[maybe_unused]] bool pressed_165{};
        [[maybe_unused]] MenuPageTextRef label_166{};
        [[maybe_unused]] bool pressed_168{};
        [[maybe_unused]] ReU32 value_169{};
        [[maybe_unused]] MenuPageTextRef literal_170{};
        [[maybe_unused]] MenuPageTextRef label_171{};
        [[maybe_unused]] bool pressed_173{};
        [[maybe_unused]] MenuPageTextRef label_174{};
        [[maybe_unused]] bool pressed_176{};
        [[maybe_unused]] ReU32 value_177{};
        [[maybe_unused]] MenuPageTextRef literal_178{};
        [[maybe_unused]] MenuPageTextRef label_179{};
        [[maybe_unused]] bool pressed_181{};
        [[maybe_unused]] MenuPageTextRef label_182{};
        [[maybe_unused]] bool pressed_184{};
        [[maybe_unused]] ReU32 value_185{};
        [[maybe_unused]] MenuPageTextRef literal_186{};
        [[maybe_unused]] MenuPageTextRef label_187{};
        [[maybe_unused]] bool pressed_189{};
        [[maybe_unused]] MenuPageTextRef label_190{};
        [[maybe_unused]] bool pressed_192{};
        [[maybe_unused]] ReU32 value_193{};
        [[maybe_unused]] MenuPageTextRef literal_194{};
        [[maybe_unused]] MenuPageTextRef label_195{};
        [[maybe_unused]] bool pressed_197{};
        [[maybe_unused]] MenuPageTextRef label_198{};
        [[maybe_unused]] bool pressed_200{};
        [[maybe_unused]] ReU32 value_201{};
        [[maybe_unused]] MenuPageTextRef literal_202{};
        [[maybe_unused]] MenuPageTextRef label_203{};
        [[maybe_unused]] bool pressed_205{};
        [[maybe_unused]] MenuPageTextRef label_206{};
        [[maybe_unused]] bool pressed_208{};
        [[maybe_unused]] MenuPageTextRef label_209{};
        [[maybe_unused]] re::ReString owned_text_210{};
        [[maybe_unused]] MenuPageTextRef label_211{};
        [[maybe_unused]] re::ReString owned_text_212{};
        [[maybe_unused]] MenuPageTextRef label_213{};
        [[maybe_unused]] bool pressed_215{};
        label_1 = page_label(s, text_pool, -520, menu_literal_190,
                             {"Collectibles", "Собирательные", "采集物"});
        literal_2 = page_literal(text_pool, 24, menu_literal_191);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        literal_4 = page_literal(text_pool, -480, menu_literal_192);
        {
            MenuControlRequest control_5;
            control_5.role = MenuControlRole::checkbox;
            control_5.site = 0x33ad73;
            control_5.primitive = 0x3bd114;
            control_5.label = re::ReString(literal_4);
            control_5.value = 0x3e6a28;
            control_5.key = 0;
            control_5.color = 0;
            control_5.description = "";
            control_5.register_search = (0 != 0);
            pressed_6 = control(a, control_5).pressed;
        }
        value_7 = raw(s, 0x3e6a28) & 255u;
        if ((value_7 == 0)) {
        } else {
            literal_8 = page_literal(text_pool, 24, menu_literal_29);
            literal_9 = page_literal(text_pool, -505, menu_literal_155);
            {
                MenuControlRequest control_10;
                control_10.role = MenuControlRole::slider_float;
                control_10.site = 0x33addb;
                control_10.primitive = 0x3c43f4;
                control_10.label = re::ReString(literal_9);
                control_10.value = 0x3ed348;
                control_10.minimum_float = 1.5f;
                control_10.maximum_float = 2.5f;
                control_10.format = re::ReString(literal_8);
                control_10.flags = ReU32(0);
                pressed_11 = control(a, control_10).pressed;
            }
        }
        label_12 = page_label(s, text_pool, 16, menu_literal_193, {"Hemp", "Конопля", "麻"});
        {
            MenuControlRequest control_13;
            control_13.role = MenuControlRole::checkbox;
            control_13.site = 0x33ae3f;
            control_13.primitive = 0x3bd114;
            control_13.label = re::ReString(label_12);
            control_13.value = 0x3e88c8;
            control_13.key = 0;
            control_13.color = 0x3eb978;
            control_13.description = "";
            control_13.register_search = (0 != 0);
            pressed_14 = control(a, control_13).pressed;
        }
        label_15 = page_label(s, text_pool, 16, menu_literal_194, {"Rose", "Роза", "玫瑰"});
        {
            MenuControlRequest control_16;
            control_16.role = MenuControlRole::checkbox;
            control_16.site = 0x33aea3;
            control_16.primitive = 0x3bd114;
            control_16.label = re::ReString(label_15);
            control_16.value = 0x3e8468;
            control_16.key = 0;
            control_16.color = 0x3ecff8;
            control_16.description = "";
            control_16.register_search = (0 != 0);
            pressed_17 = control(a, control_16).pressed;
        }
        label_18 =
            page_label(s, text_pool, -505, menu_literal_195, {"Sunflower", "Подсолнух", "向日葵"});
        {
            MenuControlRequest control_19;
            control_19.role = MenuControlRole::checkbox;
            control_19.site = 0x33af05;
            control_19.primitive = 0x3bd114;
            control_19.label = re::ReString(label_18);
            control_19.value = 0x3e84b8;
            control_19.key = 0;
            control_19.color = 0x3ed058;
            control_19.description = "";
            control_19.register_search = (0 != 0);
            pressed_20 = control(a, control_19).pressed;
        }
        label_21 = page_label(s, text_pool, 16, menu_literal_196, {"Orchid", "Орхидея", "兰花"});
        {
            MenuControlRequest control_22;
            control_22.role = MenuControlRole::checkbox;
            control_22.site = 0x33af69;
            control_22.primitive = 0x3bd114;
            control_22.label = re::ReString(label_21);
            control_22.value = 0x3e8508;
            control_22.key = 0;
            control_22.color = 0x3ed0b8;
            control_22.description = "";
            control_22.register_search = (0 != 0);
            pressed_23 = control(a, control_22).pressed;
        }
        label_24 = page_label(s, text_pool, 16, menu_literal_197, {"Stone", "Камень", "石头"});
        {
            MenuControlRequest control_25;
            control_25.role = MenuControlRole::checkbox;
            control_25.site = 0x33afcd;
            control_25.primitive = 0x3bd114;
            control_25.label = re::ReString(label_24);
            control_25.value = 0x3e8918;
            control_25.key = 0;
            control_25.color = 0x3eb9d8;
            control_25.description = "";
            control_25.register_search = (0 != 0);
            pressed_26 = control(a, control_25).pressed;
        }
        label_27 = page_label(s, text_pool, 16, menu_literal_93, {"Metal", "Металл", "金属"});
        {
            MenuControlRequest control_28;
            control_28.role = MenuControlRole::checkbox;
            control_28.site = 0x33b031;
            control_28.primitive = 0x3bd114;
            control_28.label = re::ReString(label_27);
            control_28.value = 0x3e8968;
            control_28.key = 0;
            control_28.color = 0x3eba38;
            control_28.description = "";
            control_28.register_search = (0 != 0);
            pressed_29 = control(a, control_28).pressed;
        }
        label_30 = page_label(s, text_pool, 16, menu_literal_198, {"Sulfur", "Сера", "硫磺"});
        {
            MenuControlRequest control_31;
            control_31.role = MenuControlRole::checkbox;
            control_31.site = 0x33b095;
            control_31.primitive = 0x3bd114;
            control_31.label = re::ReString(label_30);
            control_31.value = 0x3e89b8;
            control_31.key = 0;
            control_31.color = 0x3eba98;
            control_31.description = "";
            control_31.register_search = (0 != 0);
            pressed_32 = control(a, control_31).pressed;
        }
        label_33 = page_label(s, text_pool, 16, menu_literal_94, {"Wood", "Дерево", "木头"});
        {
            MenuControlRequest control_34;
            control_34.role = MenuControlRole::checkbox;
            control_34.site = 0x33b0f9;
            control_34.primitive = 0x3bd114;
            control_34.label = re::ReString(label_33);
            control_34.value = 0x3e8a08;
            control_34.key = 0;
            control_34.color = 0x3ebaf8;
            control_34.description = "";
            control_34.register_search = (0 != 0);
            pressed_35 = control(a, control_34).pressed;
        }
        label_36 = page_label(s, text_pool, 16, menu_literal_199, {"Diesel", "Дизель", "柴油"});
        {
            MenuControlRequest control_37;
            control_37.role = MenuControlRole::checkbox;
            control_37.site = 0x33b15d;
            control_37.primitive = 0x3bd114;
            control_37.label = re::ReString(label_36);
            control_37.value = 0x3e8d78;
            control_37.key = 0;
            control_37.color = 0x3ebb58;
            control_37.description = "";
            control_37.register_search = (0 != 0);
            pressed_38 = control(a, control_37).pressed;
        }
        label_39 =
            page_label(s, text_pool, -392, menu_literal_200, {"BlackBerry", "Ежевика", "黑莓"});
        owned_text_40 = re::ReString(label_39);
        label_41 =
            page_label(s, text_pool, -456, menu_literal_201, {"BlueBerry", "Черника", "蓝莓"});
        owned_text_42 = re::ReString(label_41);
        label_43 = page_label(s, text_pool, -381, menu_literal_202,
                              {"GreenBerry", "Зелёная ягода", "绿莓"});
        owned_text_44 = re::ReString(label_43);
        label_45 =
            page_label(s, text_pool, -505, menu_literal_203, {"RedBerry", "Красная ягода", "红莓"});
        owned_text_46 = re::ReString(label_45);
        label_47 =
            page_label(s, text_pool, -495, menu_literal_204, {"WhiteBerry", "Белая ягода", "白莓"});
        owned_text_48 = re::ReString(label_47);
        label_49 = page_label(s, text_pool, -520, menu_literal_205,
                              {"YellowBerry", "Жёлтая ягода", "黄莓"});
        owned_text_50 = re::ReString(label_49);
        label_51 = page_label(s, text_pool, 32, menu_literal_206, {"Candy", "Конфета", "糖果"});
        owned_text_52 = re::ReString(label_51);
        label_53 = page_label(s, text_pool, 24, menu_literal_207, {"Berrys", "Ягоды", "浆果"});
        {
            MenuControlRequest control_54;
            control_54.role = MenuControlRole::multiselect;
            control_54.site = 0x33b42c;
            control_54.primitive = 0x387d18;
            control_54.label = re::ReString(label_53);
            control_54.value = 0x3f00b8;
            control_54.choices = {owned_text_40, owned_text_42, owned_text_44, owned_text_46,
                                  owned_text_48, owned_text_50, owned_text_52};
            pressed_55 = control(a, control_54).pressed;
        }
        literal_56 = page_literal(text_pool, 24, menu_literal_60);
        label_57 = page_label(s, text_pool, -480, menu_literal_208,
                              {"Collectible Dist", "Дистанция сбора", "采集距离"});
        {
            MenuControlRequest control_58;
            control_58.role = MenuControlRole::slider_integer;
            control_58.site = 0x33b4ad;
            control_58.primitive = 0x3c4438;
            control_58.label = re::ReString(label_57);
            control_58.value = 0x3ef2d8;
            control_58.minimum = 0;
            control_58.maximum = 500;
            control_58.format = re::ReString(literal_56);
            control_58.flags = ReU32(0);
            pressed_59 = control(a, control_58).pressed;
        }
        label_60 = page_label(s, text_pool, 16, menu_literal_209, {"Food", "Еда", "食物"});
        call(a, 0x3c4e90, {re::ReString(label_60)});
        literal_61 = page_literal(text_pool, -495, menu_literal_210);
        {
            MenuControlRequest control_62;
            control_62.role = MenuControlRole::checkbox;
            control_62.site = 0x33b52e;
            control_62.primitive = 0x3bd114;
            control_62.label = re::ReString(literal_61);
            control_62.value = 0x3e6a78;
            control_62.key = 0;
            control_62.color = 0;
            control_62.description = "";
            control_62.register_search = (0 != 0);
            pressed_63 = control(a, control_62).pressed;
        }
        value_64 = raw(s, 0x3e6a78) & 255u;
        if ((value_64 == 0)) {
        } else {
            literal_65 = page_literal(text_pool, 24, menu_literal_29);
            literal_66 = page_literal(text_pool, -495, menu_literal_211);
            {
                MenuControlRequest control_67;
                control_67.role = MenuControlRole::slider_float;
                control_67.site = 0x33b596;
                control_67.primitive = 0x3c43f4;
                control_67.label = re::ReString(literal_66);
                control_67.value = 0x3ed398;
                control_67.minimum_float = 1.5f;
                control_67.maximum_float = 2.5f;
                control_67.format = re::ReString(literal_65);
                control_67.flags = ReU32(0);
                pressed_68 = control(a, control_67).pressed;
            }
        }
        label_69 = page_label(s, text_pool, 16, menu_literal_212, {"Wheat", "Пшеница", "小麦"});
        {
            MenuControlRequest control_70;
            control_70.role = MenuControlRole::checkbox;
            control_70.site = 0x33b5fa;
            control_70.primitive = 0x3bd114;
            control_70.label = re::ReString(label_69);
            control_70.value = 0x3e8418;
            control_70.key = 0;
            control_70.color = 0x3ecf98;
            control_70.description = "";
            control_70.register_search = (0 != 0);
            pressed_71 = control(a, control_70).pressed;
        }
        label_72 = page_label(s, text_pool, 16, menu_literal_213, {"Corn", "Кукуруза", "玉米"});
        {
            MenuControlRequest control_73;
            control_73.role = MenuControlRole::checkbox;
            control_73.site = 0x33b65e;
            control_73.primitive = 0x3bd114;
            control_73.label = re::ReString(label_72);
            control_73.value = 0x3e8a58;
            control_73.key = 0;
            control_73.color = 0x3eb7f8;
            control_73.description = "";
            control_73.register_search = (0 != 0);
            pressed_74 = control(a, control_73).pressed;
        }
        label_75 = page_label(s, text_pool, -505, menu_literal_214, {"Mushroom", "Гриб", "蘑菇"});
        {
            MenuControlRequest control_76;
            control_76.role = MenuControlRole::checkbox;
            control_76.site = 0x33b6c0;
            control_76.primitive = 0x3bd114;
            control_76.label = re::ReString(label_75);
            control_76.value = 0x3e8cd8;
            control_76.key = 0;
            control_76.color = 0x3eb858;
            control_76.description = "";
            control_76.register_search = (0 != 0);
            pressed_77 = control(a, control_76).pressed;
        }
        label_78 = page_label(s, text_pool, 16, menu_literal_215, {"Pumpkin", "Тыква", "南瓜"});
        {
            MenuControlRequest control_79;
            control_79.role = MenuControlRole::checkbox;
            control_79.site = 0x33b724;
            control_79.primitive = 0x3bd114;
            control_79.label = re::ReString(label_78);
            control_79.value = 0x3e8d28;
            control_79.key = 0;
            control_79.color = 0x3eb8b8;
            control_79.description = "";
            control_79.register_search = (0 != 0);
            pressed_80 = control(a, control_79).pressed;
        }
        label_81 = page_label(s, text_pool, 16, menu_literal_216, {"Potato", "Картофель", "土豆"});
        {
            MenuControlRequest control_82;
            control_82.role = MenuControlRole::checkbox;
            control_82.site = 0x33b788;
            control_82.primitive = 0x3bd114;
            control_82.label = re::ReString(label_81);
            control_82.value = 0x3e8dc8;
            control_82.key = 0;
            control_82.color = 0x3eb918;
            control_82.description = "";
            control_82.register_search = (0 != 0);
            pressed_83 = control(a, control_82).pressed;
        }
        label_84 = page_label(s, text_pool, -480, menu_literal_217,
                              {"Collectable/Food Chams", "Чамы еды", "食物透视"});
        {
            MenuControlRequest control_85;
            control_85.role = MenuControlRole::checkbox;
            control_85.site = 0x33b7e6;
            control_85.primitive = 0x3bd114;
            control_85.label = re::ReString(label_84);
            control_85.value = 0x3e8b98;
            control_85.key = 0;
            control_85.color = 0;
            control_85.description = "";
            control_85.register_search = (0 != 0);
            pressed_86 = control(a, control_85).pressed;
        }
        literal_87 = page_literal(text_pool, 24, menu_literal_60);
        label_88 = page_label(s, text_pool, -520, menu_literal_218,
                              {"Food Distance", "Дистанция еды", "食物距离"});
        {
            MenuControlRequest control_89;
            control_89.role = MenuControlRole::slider_integer;
            control_89.site = 0x33b861;
            control_89.primitive = 0x3c4438;
            control_89.label = re::ReString(label_88);
            control_89.value = 0x3ef328;
            control_89.minimum = 0;
            control_89.maximum = 500;
            control_89.format = re::ReString(literal_87);
            control_89.flags = ReU32(0);
            pressed_90 = control(a, control_89).pressed;
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_91 =
            page_label(s, text_pool, -505, menu_literal_219, {"Animals", "Животные", "动物"});
        literal_92 = page_literal(text_pool, 24, menu_literal_220);
        owned_text_93 = re::ReString(literal_92);
        child(s, m, a, owned_text_93, re::ReString(label_91), Vec2{0.0f, -1.0f}, (1 != 0));
        literal_94 = page_literal(text_pool, -520, menu_literal_221);
        {
            MenuControlRequest control_95;
            control_95.role = MenuControlRole::checkbox;
            control_95.site = 0x33b94e;
            control_95.primitive = 0x3bd114;
            control_95.label = re::ReString(literal_94);
            control_95.value = 0x3e6ac8;
            control_95.key = 0;
            control_95.color = 0;
            control_95.description = "";
            control_95.register_search = (0 != 0);
            pressed_96 = control(a, control_95).pressed;
        }
        value_97 = raw(s, 0x3e6ac8) & 255u;
        if ((value_97 == 0)) {
        } else {
            literal_98 = page_literal(text_pool, 24, menu_literal_29);
            literal_99 = page_literal(text_pool, -520, menu_literal_222);
            {
                MenuControlRequest control_100;
                control_100.role = MenuControlRole::slider_float;
                control_100.site = 0x33b9b6;
                control_100.primitive = 0x3c43f4;
                control_100.label = re::ReString(literal_99);
                control_100.value = 0x3ed3e8;
                control_100.minimum_float = 1.5f;
                control_100.maximum_float = 2.5f;
                control_100.format = re::ReString(literal_98);
                control_100.flags = ReU32(0);
                pressed_101 = control(a, control_100).pressed;
            }
        }
        label_102 = page_label(s, text_pool, 16, menu_literal_223, {"Snake", "Змея", "蛇"});
        {
            MenuControlRequest control_103;
            control_103.role = MenuControlRole::checkbox;
            control_103.site = 0x33ba1a;
            control_103.primitive = 0x3bd114;
            control_103.label = re::ReString(label_102);
            control_103.value = 0x3e7f18;
            control_103.key = 0;
            control_103.color = 0x3ecd58;
            control_103.description = "";
            control_103.register_search = (0 != 0);
            pressed_104 = control(a, control_103).pressed;
        }
        value_105 = raw(s, 0x3e7f18) & 255u;
        if ((value_105 == 0)) {
        } else {
            literal_106 = page_literal(text_pool, 24, menu_literal_60);
            label_107 = page_label(s, text_pool, -520, menu_literal_224,
                                   {"Snake Distance", "Дистанция змеи", "蛇距离"});
            {
                MenuControlRequest control_108;
                control_108.role = MenuControlRole::slider_integer;
                control_108.site = 0x33ba9e;
                control_108.primitive = 0x3c4438;
                control_108.label = re::ReString(label_107);
                control_108.value = 0x3ee928;
                control_108.minimum = 0;
                control_108.maximum = 500;
                control_108.format = re::ReString(literal_106);
                control_108.flags = ReU32(0);
                pressed_109 = control(a, control_108).pressed;
            }
        }
        label_110 = page_label(s, text_pool, 16, menu_literal_225, {"Tiger", "Тигр", "老虎"});
        {
            MenuControlRequest control_111;
            control_111.role = MenuControlRole::checkbox;
            control_111.site = 0x33bb02;
            control_111.primitive = 0x3bd114;
            control_111.label = re::ReString(label_110);
            control_111.value = 0x3e7f68;
            control_111.key = 0;
            control_111.color = 0x3ecdb8;
            control_111.description = "";
            control_111.register_search = (0 != 0);
            pressed_112 = control(a, control_111).pressed;
        }
        value_113 = raw(s, 0x3e7f68) & 255u;
        if ((value_113 == 0)) {
        } else {
            literal_114 = page_literal(text_pool, 24, menu_literal_60);
            label_115 = page_label(s, text_pool, -520, menu_literal_226,
                                   {"Tiger Distance", "Дистанция тигра", "老虎距离"});
            {
                MenuControlRequest control_116;
                control_116.role = MenuControlRole::slider_integer;
                control_116.site = 0x33bb86;
                control_116.primitive = 0x3c4438;
                control_116.label = re::ReString(label_115);
                control_116.value = 0x3ee978;
                control_116.minimum = 0;
                control_116.maximum = 500;
                control_116.format = re::ReString(literal_114);
                control_116.flags = ReU32(0);
                pressed_117 = control(a, control_116).pressed;
            }
        }
        label_118 = page_label(s, text_pool, 16, menu_literal_227, {"Panther", "Пантера", "黑豹"});
        {
            MenuControlRequest control_119;
            control_119.role = MenuControlRole::checkbox;
            control_119.site = 0x33bbea;
            control_119.primitive = 0x3bd114;
            control_119.label = re::ReString(label_118);
            control_119.value = 0x3e7fb8;
            control_119.key = 0;
            control_119.color = 0x3ece18;
            control_119.description = "";
            control_119.register_search = (0 != 0);
            pressed_120 = control(a, control_119).pressed;
        }
        value_121 = raw(s, 0x3e7fb8) & 255u;
        if ((value_121 == 0)) {
        } else {
            literal_122 = page_literal(text_pool, 24, menu_literal_60);
            label_123 = page_label(s, text_pool, -480, menu_literal_228,
                                   {"Panther Distance", "Дистанция пантеры", "黑豹距离"});
            {
                MenuControlRequest control_124;
                control_124.role = MenuControlRole::slider_integer;
                control_124.site = 0x33bc6e;
                control_124.primitive = 0x3c4438;
                control_124.label = re::ReString(label_123);
                control_124.value = 0x3ee9c8;
                control_124.minimum = 0;
                control_124.maximum = 500;
                control_124.format = re::ReString(literal_122);
                control_124.flags = ReU32(0);
                pressed_125 = control(a, control_124).pressed;
            }
        }
        label_126 =
            page_label(s, text_pool, -456, menu_literal_229, {"Crocodile", "Крокодил", "鳄鱼"});
        {
            MenuControlRequest control_127;
            control_127.role = MenuControlRole::checkbox;
            control_127.site = 0x33bcd0;
            control_127.primitive = 0x3bd114;
            control_127.label = re::ReString(label_126);
            control_127.value = 0x3e8008;
            control_127.key = 0;
            control_127.color = 0x3ece78;
            control_127.description = "";
            control_127.register_search = (0 != 0);
            pressed_128 = control(a, control_127).pressed;
        }
        value_129 = raw(s, 0x3e8008) & 255u;
        if ((value_129 == 0)) {
        } else {
            literal_130 = page_literal(text_pool, 24, menu_literal_60);
            label_131 = page_label(s, text_pool, -480, menu_literal_230,
                                   {"Crocodile Distance", "Дистанция крокодила", "鳄鱼距离"});
            {
                MenuControlRequest control_132;
                control_132.role = MenuControlRole::slider_integer;
                control_132.site = 0x33bd54;
                control_132.primitive = 0x3c4438;
                control_132.label = re::ReString(label_131);
                control_132.value = 0x3eea18;
                control_132.minimum = 0;
                control_132.maximum = 500;
                control_132.format = re::ReString(literal_130);
                control_132.flags = ReU32(0);
                pressed_133 = control(a, control_132).pressed;
            }
        }
        label_134 = page_label(s, text_pool, 16, menu_literal_231, {"Bear", "Медведь", "熊"});
        {
            MenuControlRequest control_135;
            control_135.role = MenuControlRole::checkbox;
            control_135.site = 0x33bdb8;
            control_135.primitive = 0x3bd114;
            control_135.label = re::ReString(label_134);
            control_135.value = 0x3e7ec8;
            control_135.key = 0;
            control_135.color = 0x3eaad8;
            control_135.description = "";
            control_135.register_search = (0 != 0);
            pressed_136 = control(a, control_135).pressed;
        }
        value_137 = raw(s, 0x3e7ec8) & 255u;
        if ((value_137 == 0)) {
        } else {
            literal_138 = page_literal(text_pool, 24, menu_literal_60);
            label_139 = page_label(s, text_pool, -520, menu_literal_232,
                                   {"Bear Distance", "Дистанция медведя", "熊距离"});
            {
                MenuControlRequest control_140;
                control_140.role = MenuControlRole::slider_integer;
                control_140.site = 0x33be3c;
                control_140.primitive = 0x3c4438;
                control_140.label = re::ReString(label_139);
                control_140.value = 0x3edf28;
                control_140.minimum = 0;
                control_140.maximum = 500;
                control_140.format = re::ReString(literal_138);
                control_140.flags = ReU32(0);
                pressed_141 = control(a, control_140).pressed;
            }
        }
        label_142 = page_label(s, text_pool, 16, menu_literal_233, {"Boar", "Кабан", "野猪"});
        {
            MenuControlRequest control_143;
            control_143.role = MenuControlRole::checkbox;
            control_143.site = 0x33bea0;
            control_143.primitive = 0x3bd114;
            control_143.label = re::ReString(label_142);
            control_143.value = 0x3e8198;
            control_143.key = 0;
            control_143.color = 0x3eacb8;
            control_143.description = "";
            control_143.register_search = (0 != 0);
            pressed_144 = control(a, control_143).pressed;
        }
        value_145 = raw(s, 0x3e8198) & 255u;
        if ((value_145 == 0)) {
        } else {
            literal_146 = page_literal(text_pool, 24, menu_literal_60);
            label_147 = page_label(s, text_pool, -520, menu_literal_234,
                                   {"Boar Distance", "Дистанция кабана", "野猪距离"});
            {
                MenuControlRequest control_148;
                control_148.role = MenuControlRole::slider_integer;
                control_148.site = 0x33bf24;
                control_148.primitive = 0x3c4438;
                control_148.label = re::ReString(label_147);
                control_148.value = 0x3ee018;
                control_148.minimum = 0;
                control_148.maximum = 500;
                control_148.format = re::ReString(literal_146);
                control_148.flags = ReU32(0);
                pressed_149 = control(a, control_148).pressed;
            }
        }
        label_150 = page_label(s, text_pool, 16, menu_literal_235, {"Wolf", "Волк", "狼"});
        {
            MenuControlRequest control_151;
            control_151.role = MenuControlRole::checkbox;
            control_151.site = 0x33bf88;
            control_151.primitive = 0x3bd114;
            control_151.label = re::ReString(label_150);
            control_151.value = 0x3e80a8;
            control_151.key = 0;
            control_151.color = 0x3eab98;
            control_151.description = "";
            control_151.register_search = (0 != 0);
            pressed_152 = control(a, control_151).pressed;
        }
        value_153 = raw(s, 0x3e80a8) & 255u;
        if ((value_153 == 0)) {
        } else {
            literal_154 = page_literal(text_pool, 24, menu_literal_60);
            label_155 = page_label(s, text_pool, -520, menu_literal_236,
                                   {"Wolf Distance", "Дистанция волка", "狼距离"});
            {
                MenuControlRequest control_156;
                control_156.role = MenuControlRole::slider_integer;
                control_156.site = 0x33c00c;
                control_156.primitive = 0x3c4438;
                control_156.label = re::ReString(label_155);
                control_156.value = 0x3edfc8;
                control_156.minimum = 0;
                control_156.maximum = 500;
                control_156.format = re::ReString(literal_154);
                control_156.flags = ReU32(0);
                pressed_157 = control(a, control_156).pressed;
            }
        }
        label_158 = page_label(s, text_pool, 16, menu_literal_237, {"Shark", "Акула", "鲨鱼"});
        {
            MenuControlRequest control_159;
            control_159.role = MenuControlRole::checkbox;
            control_159.site = 0x33c070;
            control_159.primitive = 0x3bd114;
            control_159.label = re::ReString(label_158);
            control_159.value = 0x3e8238;
            control_159.key = 0;
            control_159.color = 0x3ead78;
            control_159.description = "";
            control_159.register_search = (0 != 0);
            pressed_160 = control(a, control_159).pressed;
        }
        value_161 = raw(s, 0x3e8238) & 255u;
        if ((value_161 == 0)) {
        } else {
            literal_162 = page_literal(text_pool, 24, menu_literal_60);
            label_163 = page_label(s, text_pool, -520, menu_literal_238,
                                   {"Shark Distance", "Дистанция акулы", "鲨鱼距离"});
            {
                MenuControlRequest control_164;
                control_164.role = MenuControlRole::slider_integer;
                control_164.site = 0x33c0f4;
                control_164.primitive = 0x3c4438;
                control_164.label = re::ReString(label_163);
                control_164.value = 0x3ee158;
                control_164.minimum = 0;
                control_164.maximum = 500;
                control_164.format = re::ReString(literal_162);
                control_164.flags = ReU32(0);
                pressed_165 = control(a, control_164).pressed;
            }
        }
        label_166 =
            page_label(s, text_pool, -505, menu_literal_239, {"BeeSwarm", "Рой пчёл", "蜂群"});
        {
            MenuControlRequest control_167;
            control_167.role = MenuControlRole::checkbox;
            control_167.site = 0x33c156;
            control_167.primitive = 0x3bd114;
            control_167.label = re::ReString(label_166);
            control_167.value = 0x3e82d8;
            control_167.key = 0;
            control_167.color = 0x3ecf38;
            control_167.description = "";
            control_167.register_search = (0 != 0);
            pressed_168 = control(a, control_167).pressed;
        }
        value_169 = raw(s, 0x3e82d8) & 255u;
        if ((value_169 == 0)) {
        } else {
            literal_170 = page_literal(text_pool, 24, menu_literal_60);
            label_171 = page_label(s, text_pool, -520, menu_literal_240,
                                   {"BeeSwarm Dist", "Дистанция пчёл", "蜂群距离"});
            {
                MenuControlRequest control_172;
                control_172.role = MenuControlRole::slider_integer;
                control_172.site = 0x33c1da;
                control_172.primitive = 0x3c4438;
                control_172.label = re::ReString(label_171);
                control_172.value = 0x3eee28;
                control_172.minimum = 0;
                control_172.maximum = 500;
                control_172.format = re::ReString(literal_170);
                control_172.flags = ReU32(0);
                pressed_173 = control(a, control_172).pressed;
            }
        }
        label_174 = page_label(s, text_pool, 16, menu_literal_241, {"Stag", "Олень", "雄鹿"});
        {
            MenuControlRequest control_175;
            control_175.role = MenuControlRole::checkbox;
            control_175.site = 0x33c23e;
            control_175.primitive = 0x3bd114;
            control_175.label = re::ReString(label_174);
            control_175.value = 0x3e8058;
            control_175.key = 0;
            control_175.color = 0x3eab38;
            control_175.description = "";
            control_175.register_search = (0 != 0);
            pressed_176 = control(a, control_175).pressed;
        }
        value_177 = raw(s, 0x3e8058) & 255u;
        if ((value_177 == 0)) {
        } else {
            literal_178 = page_literal(text_pool, 24, menu_literal_60);
            label_179 = page_label(s, text_pool, -520, menu_literal_242,
                                   {"Stag Distance", "Дистанция оленя", "鹿距离"});
            {
                MenuControlRequest control_180;
                control_180.role = MenuControlRole::slider_integer;
                control_180.site = 0x33c2c2;
                control_180.primitive = 0x3c4438;
                control_180.label = re::ReString(label_179);
                control_180.value = 0x3edf78;
                control_180.minimum = 0;
                control_180.maximum = 500;
                control_180.format = re::ReString(literal_178);
                control_180.flags = ReU32(0);
                pressed_181 = control(a, control_180).pressed;
            }
        }
        label_182 = page_label(s, text_pool, 16, menu_literal_243, {"Horse", "Лошадь", "马"});
        {
            MenuControlRequest control_183;
            control_183.role = MenuControlRole::checkbox;
            control_183.site = 0x33c326;
            control_183.primitive = 0x3bd114;
            control_183.label = re::ReString(label_182);
            control_183.value = 0x3e81e8;
            control_183.key = 0;
            control_183.color = 0x3ead18;
            control_183.description = "";
            control_183.register_search = (0 != 0);
            pressed_184 = control(a, control_183).pressed;
        }
        value_185 = raw(s, 0x3e81e8) & 255u;
        if ((value_185 == 0)) {
        } else {
            literal_186 = page_literal(text_pool, 24, menu_literal_60);
            label_187 = page_label(s, text_pool, -520, menu_literal_244,
                                   {"Horse Distance", "Дистанция лошади", "马距离"});
            {
                MenuControlRequest control_188;
                control_188.role = MenuControlRole::slider_integer;
                control_188.site = 0x33c3aa;
                control_188.primitive = 0x3c4438;
                control_188.label = re::ReString(label_187);
                control_188.value = 0x3ee108;
                control_188.minimum = 0;
                control_188.maximum = 500;
                control_188.format = re::ReString(literal_186);
                control_188.flags = ReU32(0);
                pressed_189 = control(a, control_188).pressed;
            }
        }
        label_190 = page_label(s, text_pool, 16, menu_literal_245, {"Cow", "Корова", "牛"});
        {
            MenuControlRequest control_191;
            control_191.role = MenuControlRole::checkbox;
            control_191.site = 0x33c40e;
            control_191.primitive = 0x3bd114;
            control_191.label = re::ReString(label_190);
            control_191.value = 0x3e8148;
            control_191.key = 0;
            control_191.color = 0x3eabf8;
            control_191.description = "";
            control_191.register_search = (0 != 0);
            pressed_192 = control(a, control_191).pressed;
        }
        value_193 = raw(s, 0x3e8148) & 255u;
        if ((value_193 == 0)) {
        } else {
            literal_194 = page_literal(text_pool, 24, menu_literal_60);
            label_195 = page_label(s, text_pool, -520, menu_literal_246,
                                   {"Cow Distance", "Дистанция коровы", "牛距离"});
            {
                MenuControlRequest control_196;
                control_196.role = MenuControlRole::slider_integer;
                control_196.site = 0x33c492;
                control_196.primitive = 0x3c4438;
                control_196.label = re::ReString(label_195);
                control_196.value = 0x3ee068;
                control_196.minimum = 0;
                control_196.maximum = 500;
                control_196.format = re::ReString(literal_194);
                control_196.flags = ReU32(0);
                pressed_197 = control(a, control_196).pressed;
            }
        }
        label_198 = page_label(s, text_pool, 16, menu_literal_247, {"Sheep", "Овца", "羊"});
        {
            MenuControlRequest control_199;
            control_199.role = MenuControlRole::checkbox;
            control_199.site = 0x33c4f6;
            control_199.primitive = 0x3bd114;
            control_199.label = re::ReString(label_198);
            control_199.value = 0x3e80f8;
            control_199.key = 0;
            control_199.color = 0x3eac58;
            control_199.description = "";
            control_199.register_search = (0 != 0);
            pressed_200 = control(a, control_199).pressed;
        }
        value_201 = raw(s, 0x3e80f8) & 255u;
        if ((value_201 == 0)) {
        } else {
            literal_202 = page_literal(text_pool, 24, menu_literal_60);
            label_203 = page_label(s, text_pool, -520, menu_literal_248,
                                   {"Sheep Distance", "Дистанция овцы", "羊距离"});
            {
                MenuControlRequest control_204;
                control_204.role = MenuControlRole::slider_integer;
                control_204.site = 0x33c57a;
                control_204.primitive = 0x3c4438;
                control_204.label = re::ReString(label_203);
                control_204.value = 0x3ee0b8;
                control_204.minimum = 0;
                control_204.maximum = 500;
                control_204.format = re::ReString(literal_202);
                control_204.flags = ReU32(0);
                pressed_205 = control(a, control_204).pressed;
            }
        }
        label_206 = page_label(s, text_pool, -520, menu_literal_249,
                               {"Animal Chams", "Чамы животных", "动物透视"});
        {
            MenuControlRequest control_207;
            control_207.role = MenuControlRole::checkbox;
            control_207.site = 0x33c5d8;
            control_207.primitive = 0x3bd114;
            control_207.label = re::ReString(label_206);
            control_207.value = 0x3e8b48;
            control_207.key = 0;
            control_207.color = 0;
            control_207.description = "";
            control_207.register_search = (0 != 0);
            pressed_208 = control(a, control_207).pressed;
        }
        label_209 = page_label(s, text_pool, -456, menu_literal_250,
                               {"HealthBar", "Полоса здоровья", "生命条"});
        owned_text_210 = re::ReString(label_209);
        label_211 = page_label(s, text_pool, -495, menu_literal_251,
                               {"HealthText", "Текст здоровья", "生命数值"});
        owned_text_212 = re::ReString(label_211);
        label_213 =
            page_label(s, text_pool, 32, menu_literal_252, {"Health", "Здоровье", "生命值"});
        {
            MenuControlRequest control_214;
            control_214.role = MenuControlRole::combo_strings;
            control_214.site = 0x33c6fd;
            control_214.primitive = 0x3bf008;
            control_214.label = re::ReString(label_213);
            control_214.value = 0x3ee838;
            control_214.choices = {owned_text_210, owned_text_212};
            pressed_215 = control(a, control_214).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_33c768(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x33c768..0x33e6d8.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef literal_4{};
        [[maybe_unused]] bool pressed_6{};
        [[maybe_unused]] ReU32 value_7{};
        [[maybe_unused]] MenuPageTextRef literal_8{};
        [[maybe_unused]] MenuPageTextRef literal_9{};
        [[maybe_unused]] bool pressed_11{};
        [[maybe_unused]] MenuPageTextRef label_12{};
        [[maybe_unused]] bool pressed_14{};
        [[maybe_unused]] ReU32 value_15{};
        [[maybe_unused]] MenuPageTextRef literal_16{};
        [[maybe_unused]] MenuPageTextRef label_17{};
        [[maybe_unused]] bool pressed_19{};
        [[maybe_unused]] MenuPageTextRef label_20{};
        [[maybe_unused]] bool pressed_22{};
        [[maybe_unused]] ReU32 value_23{};
        [[maybe_unused]] MenuPageTextRef literal_24{};
        [[maybe_unused]] MenuPageTextRef label_25{};
        [[maybe_unused]] bool pressed_27{};
        [[maybe_unused]] MenuPageTextRef label_28{};
        [[maybe_unused]] bool pressed_30{};
        [[maybe_unused]] ReU32 value_31{};
        [[maybe_unused]] MenuPageTextRef literal_32{};
        [[maybe_unused]] MenuPageTextRef label_33{};
        [[maybe_unused]] bool pressed_35{};
        [[maybe_unused]] MenuPageTextRef label_36{};
        [[maybe_unused]] bool pressed_38{};
        [[maybe_unused]] ReU32 value_39{};
        [[maybe_unused]] MenuPageTextRef literal_40{};
        [[maybe_unused]] MenuPageTextRef label_41{};
        [[maybe_unused]] bool pressed_43{};
        [[maybe_unused]] MenuPageTextRef label_44{};
        [[maybe_unused]] bool pressed_46{};
        [[maybe_unused]] ReU32 value_47{};
        [[maybe_unused]] MenuPageTextRef literal_48{};
        [[maybe_unused]] MenuPageTextRef label_49{};
        [[maybe_unused]] bool pressed_51{};
        [[maybe_unused]] MenuPageTextRef label_52{};
        [[maybe_unused]] bool pressed_54{};
        [[maybe_unused]] ReU32 value_55{};
        [[maybe_unused]] MenuPageTextRef literal_56{};
        [[maybe_unused]] MenuPageTextRef label_57{};
        [[maybe_unused]] bool pressed_59{};
        [[maybe_unused]] MenuPageTextRef label_60{};
        [[maybe_unused]] bool pressed_62{};
        [[maybe_unused]] ReU32 value_63{};
        [[maybe_unused]] MenuPageTextRef literal_64{};
        [[maybe_unused]] MenuPageTextRef label_65{};
        [[maybe_unused]] bool pressed_67{};
        [[maybe_unused]] MenuPageTextRef label_68{};
        [[maybe_unused]] bool pressed_70{};
        [[maybe_unused]] ReU32 value_71{};
        [[maybe_unused]] MenuPageTextRef literal_72{};
        [[maybe_unused]] MenuPageTextRef label_73{};
        [[maybe_unused]] bool pressed_75{};
        [[maybe_unused]] MenuPageTextRef label_76{};
        [[maybe_unused]] bool pressed_78{};
        [[maybe_unused]] ReU32 value_79{};
        [[maybe_unused]] MenuPageTextRef literal_80{};
        [[maybe_unused]] MenuPageTextRef label_81{};
        [[maybe_unused]] bool pressed_83{};
        [[maybe_unused]] MenuPageTextRef label_84{};
        [[maybe_unused]] bool pressed_86{};
        [[maybe_unused]] ReU32 value_87{};
        [[maybe_unused]] MenuPageTextRef literal_88{};
        [[maybe_unused]] MenuPageTextRef label_89{};
        [[maybe_unused]] bool pressed_91{};
        [[maybe_unused]] MenuPageTextRef label_92{};
        [[maybe_unused]] bool pressed_94{};
        [[maybe_unused]] ReU32 value_95{};
        [[maybe_unused]] MenuPageTextRef literal_96{};
        [[maybe_unused]] MenuPageTextRef label_97{};
        [[maybe_unused]] bool pressed_99{};
        [[maybe_unused]] MenuPageTextRef label_100{};
        [[maybe_unused]] bool pressed_102{};
        [[maybe_unused]] ReU32 value_103{};
        [[maybe_unused]] MenuPageTextRef literal_104{};
        [[maybe_unused]] MenuPageTextRef label_105{};
        [[maybe_unused]] bool pressed_107{};
        [[maybe_unused]] MenuPageTextRef label_108{};
        [[maybe_unused]] bool pressed_110{};
        [[maybe_unused]] ReU32 value_111{};
        [[maybe_unused]] MenuPageTextRef literal_112{};
        [[maybe_unused]] MenuPageTextRef label_113{};
        [[maybe_unused]] bool pressed_115{};
        [[maybe_unused]] MenuPageTextRef label_116{};
        [[maybe_unused]] bool pressed_118{};
        [[maybe_unused]] ReU32 value_119{};
        [[maybe_unused]] MenuPageTextRef literal_120{};
        [[maybe_unused]] MenuPageTextRef label_121{};
        [[maybe_unused]] bool pressed_123{};
        [[maybe_unused]] MenuPageTextRef label_124{};
        [[maybe_unused]] bool pressed_126{};
        [[maybe_unused]] MenuPageTextRef label_127{};
        [[maybe_unused]] MenuPageTextRef literal_128{};
        [[maybe_unused]] re::ReString owned_text_129{};
        [[maybe_unused]] MenuPageTextRef literal_130{};
        [[maybe_unused]] bool pressed_132{};
        [[maybe_unused]] ReU32 value_133{};
        [[maybe_unused]] MenuPageTextRef literal_134{};
        [[maybe_unused]] MenuPageTextRef literal_135{};
        [[maybe_unused]] bool pressed_137{};
        [[maybe_unused]] MenuPageTextRef label_138{};
        [[maybe_unused]] bool pressed_140{};
        [[maybe_unused]] ReU32 value_141{};
        [[maybe_unused]] MenuPageTextRef label_142{};
        [[maybe_unused]] MenuPageTextRef label_143{};
        [[maybe_unused]] bool pressed_145{};
        [[maybe_unused]] MenuPageTextRef label_146{};
        [[maybe_unused]] MenuPageTextRef literal_147{};
        [[maybe_unused]] MenuPageTextRef label_148{};
        [[maybe_unused]] bool pressed_150{};
        [[maybe_unused]] MenuPageTextRef label_151{};
        [[maybe_unused]] bool pressed_153{};
        [[maybe_unused]] ReU32 value_154{};
        [[maybe_unused]] MenuPageTextRef literal_155{};
        [[maybe_unused]] MenuPageTextRef label_156{};
        [[maybe_unused]] bool pressed_158{};
        [[maybe_unused]] MenuPageTextRef label_159{};
        [[maybe_unused]] bool pressed_161{};
        [[maybe_unused]] ReU32 value_162{};
        [[maybe_unused]] MenuPageTextRef literal_163{};
        [[maybe_unused]] MenuPageTextRef label_164{};
        [[maybe_unused]] bool pressed_166{};
        [[maybe_unused]] MenuPageTextRef label_167{};
        [[maybe_unused]] bool pressed_169{};
        [[maybe_unused]] ReU32 value_170{};
        [[maybe_unused]] MenuPageTextRef literal_171{};
        [[maybe_unused]] MenuPageTextRef label_172{};
        [[maybe_unused]] bool pressed_174{};
        [[maybe_unused]] MenuPageTextRef label_175{};
        [[maybe_unused]] bool pressed_177{};
        [[maybe_unused]] ReU32 value_178{};
        [[maybe_unused]] MenuPageTextRef literal_179{};
        [[maybe_unused]] MenuPageTextRef label_180{};
        [[maybe_unused]] bool pressed_182{};
        [[maybe_unused]] MenuPageTextRef label_183{};
        [[maybe_unused]] bool pressed_185{};
        [[maybe_unused]] ReU32 value_186{};
        [[maybe_unused]] MenuPageTextRef literal_187{};
        [[maybe_unused]] MenuPageTextRef label_188{};
        [[maybe_unused]] bool pressed_190{};
        [[maybe_unused]] MenuPageTextRef label_191{};
        [[maybe_unused]] bool pressed_193{};
        [[maybe_unused]] ReU32 value_194{};
        [[maybe_unused]] MenuPageTextRef literal_195{};
        [[maybe_unused]] MenuPageTextRef label_196{};
        [[maybe_unused]] bool pressed_198{};
        [[maybe_unused]] MenuPageTextRef label_199{};
        [[maybe_unused]] bool pressed_201{};
        [[maybe_unused]] ReU32 value_202{};
        [[maybe_unused]] MenuPageTextRef literal_203{};
        [[maybe_unused]] MenuPageTextRef label_204{};
        [[maybe_unused]] bool pressed_206{};
        [[maybe_unused]] ReU32 value_207{};
        [[maybe_unused]] MenuPageTextRef label_208{};
        [[maybe_unused]] re::ReString owned_text_209{};
        [[maybe_unused]] MenuPageTextRef label_210{};
        [[maybe_unused]] re::ReString owned_text_211{};
        [[maybe_unused]] MenuPageTextRef label_212{};
        [[maybe_unused]] re::ReString owned_text_213{};
        [[maybe_unused]] MenuPageTextRef label_214{};
        [[maybe_unused]] re::ReString owned_text_215{};
        [[maybe_unused]] MenuPageTextRef label_216{};
        [[maybe_unused]] re::ReString owned_text_217{};
        [[maybe_unused]] MenuPageTextRef label_218{};
        [[maybe_unused]] re::ReString owned_text_219{};
        [[maybe_unused]] MenuPageTextRef label_220{};
        [[maybe_unused]] re::ReString owned_text_221{};
        [[maybe_unused]] MenuPageTextRef label_222{};
        [[maybe_unused]] re::ReString owned_text_223{};
        [[maybe_unused]] MenuPageTextRef label_224{};
        [[maybe_unused]] re::ReString owned_text_225{};
        [[maybe_unused]] MenuPageTextRef label_226{};
        [[maybe_unused]] re::ReString owned_text_227{};
        [[maybe_unused]] MenuPageTextRef label_228{};
        [[maybe_unused]] re::ReString owned_text_229{};
        [[maybe_unused]] MenuPageTextRef label_230{};
        [[maybe_unused]] re::ReString owned_text_231{};
        [[maybe_unused]] MenuPageTextRef label_232{};
        [[maybe_unused]] re::ReString owned_text_233{};
        [[maybe_unused]] MenuPageTextRef label_234{};
        [[maybe_unused]] re::ReString owned_text_235{};
        [[maybe_unused]] MenuPageTextRef label_236{};
        [[maybe_unused]] re::ReString owned_text_237{};
        [[maybe_unused]] MenuPageTextRef label_238{};
        [[maybe_unused]] re::ReString owned_text_239{};
        [[maybe_unused]] MenuPageTextRef label_240{};
        [[maybe_unused]] re::ReString owned_text_241{};
        [[maybe_unused]] MenuPageTextRef label_242{};
        [[maybe_unused]] bool pressed_244{};
        [[maybe_unused]] MenuPageTextRef label_245{};
        [[maybe_unused]] bool pressed_247{};
        [[maybe_unused]] ReU32 value_248{};
        [[maybe_unused]] MenuPageTextRef literal_249{};
        [[maybe_unused]] MenuPageTextRef label_250{};
        [[maybe_unused]] bool pressed_252{};
        [[maybe_unused]] ReU32 value_253{};
        [[maybe_unused]] ReU32 value_254{};
        [[maybe_unused]] MenuPageTextRef label_255{};
        [[maybe_unused]] bool pressed_257{};
        [[maybe_unused]] MenuPageTextRef label_258{};
        [[maybe_unused]] bool pressed_260{};
        [[maybe_unused]] MenuPageTextRef label_261{};
        [[maybe_unused]] bool pressed_263{};
        label_1 =
            page_label(s, text_pool, -776, menu_literal_253, {"Containers", "Контейнеры", "容器"});
        literal_2 = page_literal(text_pool, 24, menu_literal_254);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        literal_4 = page_literal(text_pool, -792, menu_literal_255);
        {
            MenuControlRequest control_5;
            control_5.role = MenuControlRole::checkbox;
            control_5.site = 0x33c861;
            control_5.primitive = 0x3bd114;
            control_5.label = re::ReString(literal_4);
            control_5.value = 0x3e6b18;
            control_5.key = 0;
            control_5.color = 0;
            control_5.description = "";
            control_5.register_search = (0 != 0);
            pressed_6 = control(a, control_5).pressed;
        }
        value_7 = raw(s, 0x3e6b18) & 255u;
        if ((value_7 == 0)) {
        } else {
            literal_8 = page_literal(text_pool, 24, menu_literal_29);
            literal_9 = page_literal(text_pool, -816, menu_literal_222);
            {
                MenuControlRequest control_10;
                control_10.role = MenuControlRole::slider_float;
                control_10.site = 0x33c8ca;
                control_10.primitive = 0x3c43f4;
                control_10.label = re::ReString(literal_9);
                control_10.value = 0x3ed438;
                control_10.minimum_float = 1.5f;
                control_10.maximum_float = 2.5f;
                control_10.format = re::ReString(literal_8);
                control_10.flags = ReU32(0);
                pressed_11 = control(a, control_10).pressed;
            }
        }
        label_12 =
            page_label(s, text_pool, 16, menu_literal_256, {"Airdrop", "Сброс груза", "空投"});
        {
            MenuControlRequest control_13;
            control_13.role = MenuControlRole::checkbox;
            control_13.site = 0x33c92d;
            control_13.primitive = 0x3bd114;
            control_13.label = re::ReString(label_12);
            control_13.value = 0x3e8ff8;
            control_13.key = 0;
            control_13.color = 0x3ec038;
            control_13.description = "";
            control_13.register_search = (0 != 0);
            pressed_14 = control(a, control_13).pressed;
        }
        value_15 = raw(s, 0x3e8ff8) & 255u;
        if ((value_15 == 0)) {
        } else {
            literal_16 = page_literal(text_pool, 24, menu_literal_60);
            label_17 = page_label(s, text_pool, -840, menu_literal_257,
                                  {"Airdrop Distance", "Дистанция сброса", "空投距离"});
            {
                MenuControlRequest control_18;
                control_18.role = MenuControlRole::slider_integer;
                control_18.site = 0x33c9b4;
                control_18.primitive = 0x3c4438;
                control_18.label = re::ReString(label_17);
                control_18.value = 0x3ee388;
                control_18.minimum = 0;
                control_18.maximum = 5000;
                control_18.format = re::ReString(literal_16);
                control_18.flags = ReU32(0);
                pressed_19 = control(a, control_18).pressed;
            }
        }
        label_20 = page_label(s, text_pool, -816, menu_literal_258,
                              {"Locked Crate", "Запертый ящик", "上锁箱子"});
        {
            MenuControlRequest control_21;
            control_21.role = MenuControlRole::checkbox;
            control_21.site = 0x33ca15;
            control_21.primitive = 0x3bd114;
            control_21.label = re::ReString(label_20);
            control_21.value = 0x3e90e8;
            control_21.key = 0;
            control_21.color = 0x3ebfd8;
            control_21.description = "";
            control_21.register_search = (0 != 0);
            pressed_22 = control(a, control_21).pressed;
        }
        value_23 = raw(s, 0x3e90e8) & 255u;
        if ((value_23 == 0)) {
        } else {
            literal_24 = page_literal(text_pool, 24, menu_literal_60);
            label_25 = page_label(s, text_pool, -792, menu_literal_259,
                                  {"Locked Distance", "Дистанция запертого", "上锁距离"});
            {
                MenuControlRequest control_26;
                control_26.role = MenuControlRole::slider_integer;
                control_26.site = 0x33ca9c;
                control_26.primitive = 0x3c4438;
                control_26.label = re::ReString(label_25);
                control_26.value = 0x3ee3d8;
                control_26.minimum = 0;
                control_26.maximum = 5000;
                control_26.format = re::ReString(literal_24);
                control_26.flags = ReU32(0);
                pressed_27 = control(a, control_26).pressed;
            }
        }
        label_28 = page_label(s, text_pool, -816, menu_literal_260,
                              {"Normal Crate", "Обычный ящик", "普通箱子"});
        {
            MenuControlRequest control_29;
            control_29.role = MenuControlRole::checkbox;
            control_29.site = 0x33cafd;
            control_29.primitive = 0x3bd114;
            control_29.label = re::ReString(label_28);
            control_29.value = 0x3e7bf8;
            control_29.key = 0;
            control_29.color = 0x3ebc78;
            control_29.description = "";
            control_29.register_search = (0 != 0);
            pressed_30 = control(a, control_29).pressed;
        }
        value_31 = raw(s, 0x3e7bf8) & 255u;
        if ((value_31 == 0)) {
        } else {
            literal_32 = page_literal(text_pool, 24, menu_literal_60);
            label_33 = page_label(s, text_pool, -840, menu_literal_261,
                                  {"NormalC Distance", "Дистанция обычного", "普通距离"});
            {
                MenuControlRequest control_34;
                control_34.role = MenuControlRole::slider_integer;
                control_34.site = 0x33cb87;
                control_34.primitive = 0x3c4438;
                control_34.label = re::ReString(label_33);
                control_34.value = 0x3ee428;
                control_34.minimum = 0;
                control_34.maximum = 500;
                control_34.format = re::ReString(literal_32);
                control_34.flags = ReU32(0);
                pressed_35 = control(a, control_34).pressed;
            }
        }
        label_36 = page_label(s, text_pool, -856, menu_literal_262,
                              {"Military Crate", "Военный ящик", "军事箱子"});
        {
            MenuControlRequest control_37;
            control_37.role = MenuControlRole::checkbox;
            control_37.site = 0x33cbe8;
            control_37.primitive = 0x3bd114;
            control_37.label = re::ReString(label_36);
            control_37.value = 0x3e7c48;
            control_37.key = 0;
            control_37.color = 0x3ebcd8;
            control_37.description = "";
            control_37.register_search = (0 != 0);
            pressed_38 = control(a, control_37).pressed;
        }
        value_39 = raw(s, 0x3e7c48) & 255u;
        if ((value_39 == 0)) {
        } else {
            literal_40 = page_literal(text_pool, 24, menu_literal_60);
            label_41 = page_label(s, text_pool, -840, menu_literal_263,
                                  {"Military Distance", "Военная дистанция", "军事距离"});
            {
                MenuControlRequest control_42;
                control_42.role = MenuControlRole::slider_integer;
                control_42.site = 0x33cc6f;
                control_42.primitive = 0x3c4438;
                control_42.label = re::ReString(label_41);
                control_42.value = 0x3ee478;
                control_42.minimum = 0;
                control_42.maximum = 5000;
                control_42.format = re::ReString(literal_40);
                control_42.flags = ReU32(0);
                pressed_43 = control(a, control_42).pressed;
            }
        }
        label_44 = page_label(s, text_pool, -816, menu_literal_264,
                              {"Elite Crate", "Элитный ящик", "精英箱子"});
        {
            MenuControlRequest control_45;
            control_45.role = MenuControlRole::checkbox;
            control_45.site = 0x33ccd0;
            control_45.primitive = 0x3bd114;
            control_45.label = re::ReString(label_44);
            control_45.value = 0x3e7c98;
            control_45.key = 0;
            control_45.color = 0x3ebd38;
            control_45.description = "";
            control_45.register_search = (0 != 0);
            pressed_46 = control(a, control_45).pressed;
        }
        value_47 = raw(s, 0x3e7c98) & 255u;
        if ((value_47 == 0)) {
        } else {
            literal_48 = page_literal(text_pool, 24, menu_literal_60);
            label_49 = page_label(s, text_pool, -856, menu_literal_265,
                                  {"Elite Distance", "Элитная дистанция", "精英距离"});
            {
                MenuControlRequest control_50;
                control_50.role = MenuControlRole::slider_integer;
                control_50.site = 0x33cd57;
                control_50.primitive = 0x3c4438;
                control_50.label = re::ReString(label_49);
                control_50.value = 0x3ee4c8;
                control_50.minimum = 0;
                control_50.maximum = 5000;
                control_50.format = re::ReString(literal_48);
                control_50.flags = ReU32(0);
                pressed_51 = control(a, control_50).pressed;
            }
        }
        label_52 = page_label(s, text_pool, -776, menu_literal_266,
                              {"Tool Crate", "Ящик инструментов", "工具箱"});
        {
            MenuControlRequest control_53;
            control_53.role = MenuControlRole::checkbox;
            control_53.site = 0x33cdb7;
            control_53.primitive = 0x3bd114;
            control_53.label = re::ReString(label_52);
            control_53.value = 0x3e7ce8;
            control_53.key = 0;
            control_53.color = 0x3ebd98;
            control_53.description = "";
            control_53.register_search = (0 != 0);
            pressed_54 = control(a, control_53).pressed;
        }
        value_55 = raw(s, 0x3e7ce8) & 255u;
        if ((value_55 == 0)) {
        } else {
            literal_56 = page_literal(text_pool, 24, menu_literal_60);
            label_57 = page_label(s, text_pool, -856, menu_literal_267,
                                  {"Tool Distance", "Инструмент дистанция", "工具距离"});
            {
                MenuControlRequest control_58;
                control_58.role = MenuControlRole::slider_integer;
                control_58.site = 0x33ce3b;
                control_58.primitive = 0x3c4438;
                control_58.label = re::ReString(label_57);
                control_58.value = 0x3ee518;
                control_58.minimum = 0;
                control_58.maximum = 500;
                control_58.format = re::ReString(literal_56);
                control_58.flags = ReU32(0);
                pressed_59 = control(a, control_58).pressed;
            }
        }
        label_60 = page_label(s, text_pool, -840, menu_literal_268,
                              {"Advanced Water Crate", "Продвинутый водный ящик", "高级水箱"});
        {
            MenuControlRequest control_61;
            control_61.role = MenuControlRole::checkbox;
            control_61.site = 0x33ce9c;
            control_61.primitive = 0x3bd114;
            control_61.label = re::ReString(label_60);
            control_61.value = 0x3e7dd8;
            control_61.key = 0;
            control_61.color = 0x3ebeb8;
            control_61.description = "";
            control_61.register_search = (0 != 0);
            pressed_62 = control(a, control_61).pressed;
        }
        value_63 = raw(s, 0x3e7dd8) & 255u;
        if ((value_63 == 0)) {
        } else {
            literal_64 = page_literal(text_pool, 24, menu_literal_60);
            label_65 = page_label(s, text_pool, -792, menu_literal_269,
                                  {"AWater Distance", "Дистанция водного A", "高级水距离"});
            {
                MenuControlRequest control_66;
                control_66.role = MenuControlRole::slider_integer;
                control_66.site = 0x33cf20;
                control_66.primitive = 0x3c4438;
                control_66.label = re::ReString(label_65);
                control_66.value = 0x3ee568;
                control_66.minimum = 0;
                control_66.maximum = 500;
                control_66.format = re::ReString(literal_64);
                control_66.flags = ReU32(0);
                pressed_67 = control(a, control_66).pressed;
            }
        }
        label_68 = page_label(s, text_pool, -840, menu_literal_270,
                              {"Basic Water Crate", "Базовый водный ящик", "基础水箱"});
        {
            MenuControlRequest control_69;
            control_69.role = MenuControlRole::checkbox;
            control_69.site = 0x33cf81;
            control_69.primitive = 0x3bd114;
            control_69.label = re::ReString(label_68);
            control_69.value = 0x3e7e28;
            control_69.key = 0;
            control_69.color = 0x3ebf18;
            control_69.description = "";
            control_69.register_search = (0 != 0);
            pressed_70 = control(a, control_69).pressed;
        }
        value_71 = raw(s, 0x3e7e28) & 255u;
        if ((value_71 == 0)) {
        } else {
            literal_72 = page_literal(text_pool, 24, menu_literal_60);
            label_73 = page_label(s, text_pool, -792, menu_literal_271,
                                  {"BWater Distance", "Дистанция водного B", "基础水距离"});
            {
                MenuControlRequest control_74;
                control_74.role = MenuControlRole::slider_integer;
                control_74.site = 0x33d005;
                control_74.primitive = 0x3c4438;
                control_74.label = re::ReString(label_73);
                control_74.value = 0x3ee5b8;
                control_74.minimum = 0;
                control_74.maximum = 500;
                control_74.format = re::ReString(literal_72);
                control_74.flags = ReU32(0);
                pressed_75 = control(a, control_74).pressed;
            }
        }
        label_76 = page_label(s, text_pool, -856, menu_literal_272,
                              {"Medical Crate", "Медицинский ящик", "医疗箱"});
        {
            MenuControlRequest control_77;
            control_77.role = MenuControlRole::checkbox;
            control_77.site = 0x33d066;
            control_77.primitive = 0x3bd114;
            control_77.label = re::ReString(label_76);
            control_77.value = 0x3e7d88;
            control_77.key = 0;
            control_77.color = 0x3ebe58;
            control_77.description = "";
            control_77.register_search = (0 != 0);
            pressed_78 = control(a, control_77).pressed;
        }
        value_79 = raw(s, 0x3e7d88) & 255u;
        if ((value_79 == 0)) {
        } else {
            literal_80 = page_literal(text_pool, 24, menu_literal_60);
            label_81 = page_label(s, text_pool, -840, menu_literal_273,
                                  {"Medical Distance", "Медицинская дистанция", "医疗距离"});
            {
                MenuControlRequest control_82;
                control_82.role = MenuControlRole::slider_integer;
                control_82.site = 0x33d0ea;
                control_82.primitive = 0x3c4438;
                control_82.label = re::ReString(label_81);
                control_82.value = 0x3ee608;
                control_82.minimum = 0;
                control_82.maximum = 500;
                control_82.format = re::ReString(literal_80);
                control_82.flags = ReU32(0);
                pressed_83 = control(a, control_82).pressed;
            }
        }
        label_84 =
            page_label(s, text_pool, -776, menu_literal_274, {"Food Crate", "Ящик еды", "食物箱"});
        {
            MenuControlRequest control_85;
            control_85.role = MenuControlRole::checkbox;
            control_85.site = 0x33d14a;
            control_85.primitive = 0x3bd114;
            control_85.label = re::ReString(label_84);
            control_85.value = 0x3e7d38;
            control_85.key = 0;
            control_85.color = 0x3ebdf8;
            control_85.description = "";
            control_85.register_search = (0 != 0);
            pressed_86 = control(a, control_85).pressed;
        }
        value_87 = raw(s, 0x3e7d38) & 255u;
        if ((value_87 == 0)) {
        } else {
            literal_88 = page_literal(text_pool, 24, menu_literal_60);
            label_89 = page_label(s, text_pool, -856, menu_literal_218,
                                  {"Food Distance", "Дистанция еды", "食物距离"});
            {
                MenuControlRequest control_90;
                control_90.role = MenuControlRole::slider_integer;
                control_90.site = 0x33d1ce;
                control_90.primitive = 0x3c4438;
                control_90.label = re::ReString(label_89);
                control_90.value = 0x3ee658;
                control_90.minimum = 0;
                control_90.maximum = 500;
                control_90.format = re::ReString(literal_88);
                control_90.flags = ReU32(0);
                pressed_91 = control(a, control_90).pressed;
            }
        }
        label_92 = page_label(s, text_pool, -816, menu_literal_275,
                              {"Basic Crate", "Базовый ящик", "基础箱子"});
        {
            MenuControlRequest control_93;
            control_93.role = MenuControlRole::checkbox;
            control_93.site = 0x33d22f;
            control_93.primitive = 0x3bd114;
            control_93.label = re::ReString(label_92);
            control_93.value = 0x3e7e78;
            control_93.key = 0;
            control_93.color = 0x3ebf78;
            control_93.description = "";
            control_93.register_search = (0 != 0);
            pressed_94 = control(a, control_93).pressed;
        }
        value_95 = raw(s, 0x3e7e78) & 255u;
        if ((value_95 == 0)) {
        } else {
            literal_96 = page_literal(text_pool, 24, menu_literal_60);
            label_97 = page_label(s, text_pool, -856, menu_literal_276,
                                  {"Basic Distance", "Базовая дистанция", "基础距离"});
            {
                MenuControlRequest control_98;
                control_98.role = MenuControlRole::slider_integer;
                control_98.site = 0x33d2b3;
                control_98.primitive = 0x3c4438;
                control_98.label = re::ReString(label_97);
                control_98.value = 0x3ee6a8;
                control_98.minimum = 0;
                control_98.maximum = 500;
                control_98.format = re::ReString(literal_96);
                control_98.flags = ReU32(0);
                pressed_99 = control(a, control_98).pressed;
            }
        }
        label_100 = page_label(s, text_pool, -856, menu_literal_277,
                               {"Normal Barrel", "Обычная бочка", "普通桶"});
        {
            MenuControlRequest control_101;
            control_101.role = MenuControlRole::checkbox;
            control_101.site = 0x33d314;
            control_101.primitive = 0x3bd114;
            control_101.label = re::ReString(label_100);
            control_101.value = 0x3e7b58;
            control_101.key = 0;
            control_101.color = 0x3ebbb8;
            control_101.description = "";
            control_101.register_search = (0 != 0);
            pressed_102 = control(a, control_101).pressed;
        }
        value_103 = raw(s, 0x3e7b58) & 255u;
        if ((value_103 == 0)) {
        } else {
            literal_104 = page_literal(text_pool, 24, menu_literal_60);
            label_105 = page_label(s, text_pool, -792, menu_literal_278,
                                   {"Normal Distance", "Обычная дистанция", "普通距离"});
            {
                MenuControlRequest control_106;
                control_106.role = MenuControlRole::slider_integer;
                control_106.site = 0x33d398;
                control_106.primitive = 0x3c4438;
                control_106.label = re::ReString(label_105);
                control_106.value = 0x3ee6f8;
                control_106.minimum = 0;
                control_106.maximum = 500;
                control_106.format = re::ReString(literal_104);
                control_106.flags = ReU32(0);
                pressed_107 = control(a, control_106).pressed;
            }
        }
        label_108 = page_label(s, text_pool, -776, menu_literal_279,
                               {"Oil Barrel", "Нефтяная бочка", "油桶"});
        {
            MenuControlRequest control_109;
            control_109.role = MenuControlRole::checkbox;
            control_109.site = 0x33d3f8;
            control_109.primitive = 0x3bd114;
            control_109.label = re::ReString(label_108);
            control_109.value = 0x3e7ba8;
            control_109.key = 0;
            control_109.color = 0x3ebc18;
            control_109.description = "";
            control_109.register_search = (0 != 0);
            pressed_110 = control(a, control_109).pressed;
        }
        value_111 = raw(s, 0x3e7ba8) & 255u;
        if ((value_111 == 0)) {
        } else {
            literal_112 = page_literal(text_pool, 24, menu_literal_60);
            label_113 = page_label(s, text_pool, -816, menu_literal_280,
                                   {"Oil Distance", "Нефтяная дистанция", "油桶距离"});
            {
                MenuControlRequest control_114;
                control_114.role = MenuControlRole::slider_integer;
                control_114.site = 0x33d47c;
                control_114.primitive = 0x3c4438;
                control_114.label = re::ReString(label_113);
                control_114.value = 0x3ee748;
                control_114.minimum = 0;
                control_114.maximum = 500;
                control_114.format = re::ReString(literal_112);
                control_114.flags = ReU32(0);
                pressed_115 = control(a, control_114).pressed;
            }
        }
        label_116 = page_label(s, text_pool, 16, menu_literal_281, {"BeeHive", "Улей", "蜂巢"});
        {
            MenuControlRequest control_117;
            control_117.role = MenuControlRole::checkbox;
            control_117.site = 0x33d4df;
            control_117.primitive = 0x3bd114;
            control_117.label = re::ReString(label_116);
            control_117.value = 0x3e8288;
            control_117.key = 0;
            control_117.color = 0x3eced8;
            control_117.description = "";
            control_117.register_search = (0 != 0);
            pressed_118 = control(a, control_117).pressed;
        }
        value_119 = raw(s, 0x3e8288) & 255u;
        if ((value_119 == 0)) {
        } else {
            literal_120 = page_literal(text_pool, 24, menu_literal_60);
            label_121 = page_label(s, text_pool, -816, menu_literal_282,
                                   {"BeeHive Dist", "Дистанция улья", "蜂巢距离"});
            {
                MenuControlRequest control_122;
                control_122.role = MenuControlRole::slider_integer;
                control_122.site = 0x33d563;
                control_122.primitive = 0x3c4438;
                control_122.label = re::ReString(label_121);
                control_122.value = 0x3eee78;
                control_122.minimum = 0;
                control_122.maximum = 500;
                control_122.format = re::ReString(literal_120);
                control_122.flags = ReU32(0);
                pressed_123 = control(a, control_122).pressed;
            }
        }
        label_124 = page_label(s, text_pool, -792, menu_literal_283,
                               {"Container Chams", "Чамы контейнеров", "容器透视"});
        {
            MenuControlRequest control_125;
            control_125.role = MenuControlRole::checkbox;
            control_125.site = 0x33d5c0;
            control_125.primitive = 0x3bd114;
            control_125.label = re::ReString(label_124);
            control_125.value = 0x3e8aa8;
            control_125.key = 0;
            control_125.color = 0;
            control_125.description = "";
            control_125.register_search = (0 != 0);
            pressed_126 = control(a, control_125).pressed;
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_127 = page_label(s, text_pool, 32, menu_literal_284, {"Other", "Другое", "其他"});
        literal_128 = page_literal(text_pool, 24, menu_literal_285);
        owned_text_129 = re::ReString(literal_128);
        child(s, m, a, owned_text_129, re::ReString(label_127), Vec2{0.0f, -1.0f}, (1 != 0));
        literal_130 = page_literal(text_pool, -816, menu_literal_286);
        {
            MenuControlRequest control_131;
            control_131.role = MenuControlRole::checkbox;
            control_131.site = 0x33d6a2;
            control_131.primitive = 0x3bd114;
            control_131.label = re::ReString(literal_130);
            control_131.value = 0x3e6b68;
            control_131.key = 0;
            control_131.color = 0;
            control_131.description = "";
            control_131.register_search = (0 != 0);
            pressed_132 = control(a, control_131).pressed;
        }
        value_133 = raw(s, 0x3e6b68) & 255u;
        if ((value_133 == 0)) {
        } else {
            literal_134 = page_literal(text_pool, 24, menu_literal_29);
            literal_135 = page_literal(text_pool, -765, menu_literal_155);
            {
                MenuControlRequest control_136;
                control_136.role = MenuControlRole::slider_float;
                control_136.site = 0x33d70a;
                control_136.primitive = 0x3c43f4;
                control_136.label = re::ReString(literal_135);
                control_136.value = 0x3ed488;
                control_136.minimum_float = 1.5f;
                control_136.maximum_float = 2.5f;
                control_136.format = re::ReString(literal_134);
                control_136.flags = ReU32(0);
                pressed_137 = control(a, control_136).pressed;
            }
        }
        label_138 = page_label(s, text_pool, -856, menu_literal_287,
                               {"Player Corpse", "Труп игрока", "玩家尸体"});
        {
            MenuControlRequest control_139;
            control_139.role = MenuControlRole::checkbox;
            control_139.site = 0x33d76b;
            control_139.primitive = 0x3bd114;
            control_139.label = re::ReString(label_138);
            control_139.value = 0x3e7478;
            control_139.key = 0;
            control_139.color = 0x3ec098;
            control_139.description = "";
            control_139.register_search = (0 != 0);
            pressed_140 = control(a, control_139).pressed;
        }
        value_141 = raw(s, 0x3e7478) & 255u;
        if ((value_141 == 0)) {
        } else {
            label_142 = page_label(
                s, text_pool, -616, menu_literal_288,
                {"This will visualize the actual extents that you can loot a corpse from and allow "
                 "you to press E on that and loot the corpse through walls or further away.",
                 "Это визуализирует фактические пределы, из которых вы можете грабить труп, и "
                 "позволит вам нажать E на этом и грабить труп сквозь стены или дальше.",
                 "这将可视化你可以拾取尸体的实际范围，并允许你按E键穿墙或更远距离拾取尸体。"});
            label_143 = page_label(s, text_pool, -840, menu_literal_289,
                                   {"Loot Through Walls", "Лут сквозь стены", "穿墙拾取"});
            {
                MenuControlRequest control_144;
                control_144.role = MenuControlRole::checkbox;
                control_144.site = 0x33d819;
                control_144.primitive = 0x3bd114;
                control_144.label = re::ReString(label_143);
                control_144.value = 0x3f2e88;
                control_144.key = 0x3ef5f8;
                control_144.color = 0;
                control_144.description = re::ReString(label_142);
                control_144.register_search = (0 != 0);
                pressed_145 = control(a, control_144).pressed;
            }
            label_146 = page_label(s, text_pool, -792, menu_literal_290,
                                   {"Non Naked Color", "Цвет не голого", "非裸露颜色"});
            color_label(s, a, re::ReString(label_146), 0x3ec0f8, 0x33d866);
            literal_147 = page_literal(text_pool, 24, menu_literal_60);
            label_148 = page_label(s, text_pool, -840, menu_literal_291,
                                   {"PCorpse Distance", "Дистанция игрока", "玩家尸体距离"});
            {
                MenuControlRequest control_149;
                control_149.role = MenuControlRole::slider_integer;
                control_149.site = 0x33d8e1;
                control_149.primitive = 0x3c4438;
                control_149.label = re::ReString(label_148);
                control_149.value = 0x3ee1a8;
                control_149.minimum = 0;
                control_149.maximum = 500;
                control_149.format = re::ReString(literal_147);
                control_149.flags = ReU32(0);
                pressed_150 = control(a, control_149).pressed;
            }
        }
        label_151 = page_label(s, text_pool, -840, menu_literal_292,
                               {"Scientist Corpse", "Труп учёного", "科学家尸体"});
        {
            MenuControlRequest control_152;
            control_152.role = MenuControlRole::checkbox;
            control_152.site = 0x33d942;
            control_152.primitive = 0x3bd114;
            control_152.label = re::ReString(label_151);
            control_152.value = 0x3e74c8;
            control_152.key = 0;
            control_152.color = 0x3ec158;
            control_152.description = "";
            control_152.register_search = (0 != 0);
            pressed_153 = control(a, control_152).pressed;
        }
        value_154 = raw(s, 0x3e74c8) & 255u;
        if ((value_154 == 0)) {
        } else {
            literal_155 = page_literal(text_pool, 24, menu_literal_60);
            label_156 = page_label(s, text_pool, -840, menu_literal_293,
                                   {"SCorpse Distance", "Дистанция учёного", "科学家尸体距离"});
            {
                MenuControlRequest control_157;
                control_157.role = MenuControlRole::slider_integer;
                control_157.site = 0x33d9c6;
                control_157.primitive = 0x3c4438;
                control_157.label = re::ReString(label_156);
                control_157.value = 0x3ee1f8;
                control_157.minimum = 0;
                control_157.maximum = 500;
                control_157.format = re::ReString(literal_155);
                control_157.flags = ReU32(0);
                pressed_158 = control(a, control_157).pressed;
            }
        }
        label_159 = page_label(s, text_pool, -856, menu_literal_294,
                               {"Animal Corpse", "Труп животного", "动物尸体"});
        {
            MenuControlRequest control_160;
            control_160.role = MenuControlRole::checkbox;
            control_160.site = 0x33da27;
            control_160.primitive = 0x3bd114;
            control_160.label = re::ReString(label_159);
            control_160.value = 0x3e7518;
            control_160.key = 0;
            control_160.color = 0x3ec1b8;
            control_160.description = "";
            control_160.register_search = (0 != 0);
            pressed_161 = control(a, control_160).pressed;
        }
        value_162 = raw(s, 0x3e7518) & 255u;
        if ((value_162 == 0)) {
        } else {
            literal_163 = page_literal(text_pool, 24, menu_literal_60);
            label_164 = page_label(s, text_pool, -840, menu_literal_295,
                                   {"ACorpse Distance", "Дистанция животного", "动物尸体距离"});
            {
                MenuControlRequest control_165;
                control_165.role = MenuControlRole::slider_integer;
                control_165.site = 0x33daab;
                control_165.primitive = 0x3c4438;
                control_165.label = re::ReString(label_164);
                control_165.value = 0x3ee248;
                control_165.minimum = 0;
                control_165.maximum = 500;
                control_165.format = re::ReString(literal_163);
                control_165.flags = ReU32(0);
                pressed_166 = control(a, control_165).pressed;
            }
        }
        label_167 = page_label(s, text_pool, -840, menu_literal_296,
                               {"Advanced Fragments", "Продвинутые фрагменты", "高级碎片"});
        {
            MenuControlRequest control_168;
            control_168.role = MenuControlRole::checkbox;
            control_168.site = 0x33db0c;
            control_168.primitive = 0x3bd114;
            control_168.label = re::ReString(label_167);
            control_168.value = 0x3e85f8;
            control_168.key = 0;
            control_168.color = 0x3ed1d8;
            control_168.description = "";
            control_168.register_search = (0 != 0);
            pressed_169 = control(a, control_168).pressed;
        }
        value_170 = raw(s, 0x3e85f8) & 255u;
        if ((value_170 == 0)) {
        } else {
            literal_171 = page_literal(text_pool, 24, menu_literal_60);
            label_172 =
                page_label(s, text_pool, -840, menu_literal_297,
                           {"Adv Fragments Distance", "Дистанция фрагментов", "高级碎片距离"});
            {
                MenuControlRequest control_173;
                control_173.role = MenuControlRole::slider_integer;
                control_173.site = 0x33db90;
                control_173.primitive = 0x3c4438;
                control_173.label = re::ReString(label_172);
                control_173.value = 0x3eeec8;
                control_173.minimum = 0;
                control_173.maximum = 500;
                control_173.format = re::ReString(literal_171);
                control_173.flags = ReU32(0);
                pressed_174 = control(a, control_173).pressed;
            }
        }
        label_175 = page_label(s, text_pool, -792, menu_literal_298,
                               {"Basic Fragments", "Базовые фрагменты", "基础碎片"});
        {
            MenuControlRequest control_176;
            control_176.role = MenuControlRole::checkbox;
            control_176.site = 0x33dbf1;
            control_176.primitive = 0x3bd114;
            control_176.label = re::ReString(label_175);
            control_176.value = 0x3e8648;
            control_176.key = 0;
            control_176.color = 0x3ed238;
            control_176.description = "";
            control_176.register_search = (0 != 0);
            pressed_177 = control(a, control_176).pressed;
        }
        value_178 = raw(s, 0x3e8648) & 255u;
        if ((value_178 == 0)) {
        } else {
            literal_179 = page_literal(text_pool, 24, menu_literal_60);
            label_180 =
                page_label(s, text_pool, -720, menu_literal_299,
                           {"Basic Fragments Distance", "Дистанция фрагментов", "基础碎片距离"});
            {
                MenuControlRequest control_181;
                control_181.role = MenuControlRole::slider_integer;
                control_181.site = 0x33dc74;
                control_181.primitive = 0x3c4438;
                control_181.label = re::ReString(label_180);
                control_181.value = 0x3eef18;
                control_181.minimum = 0;
                control_181.maximum = 500;
                control_181.format = re::ReString(literal_179);
                control_181.flags = ReU32(0);
                pressed_182 = control(a, control_181).pressed;
            }
        }
        label_183 =
            page_label(s, text_pool, 16, menu_literal_300, {"RedCard", "Красная карта", "红卡"});
        {
            MenuControlRequest control_184;
            control_184.role = MenuControlRole::checkbox;
            control_184.site = 0x33dcd7;
            control_184.primitive = 0x3bd114;
            control_184.label = re::ReString(label_183);
            control_184.value = 0x3e8698;
            control_184.key = 0;
            control_184.color = 0x3ed298;
            control_184.description = "";
            control_184.register_search = (0 != 0);
            pressed_185 = control(a, control_184).pressed;
        }
        value_186 = raw(s, 0x3e8698) & 255u;
        if ((value_186 == 0)) {
        } else {
            literal_187 = page_literal(text_pool, 24, menu_literal_60);
            label_188 = page_label(s, text_pool, -840, menu_literal_301,
                                   {"RedCard Distance", "Дистанция карты", "红卡距离"});
            {
                MenuControlRequest control_189;
                control_189.role = MenuControlRole::slider_integer;
                control_189.site = 0x33dd5b;
                control_189.primitive = 0x3c4438;
                control_189.label = re::ReString(label_188);
                control_189.value = 0x3eef68;
                control_189.minimum = 0;
                control_189.maximum = 500;
                control_189.format = re::ReString(literal_187);
                control_189.flags = ReU32(0);
                pressed_190 = control(a, control_189).pressed;
            }
        }
        label_191 =
            page_label(s, text_pool, -765, menu_literal_302, {"Backpack", "Рюкзак", "背包"});
        {
            MenuControlRequest control_192;
            control_192.role = MenuControlRole::checkbox;
            control_192.site = 0x33ddbb;
            control_192.primitive = 0x3bd114;
            control_192.label = re::ReString(label_191);
            control_192.value = 0x3e75b8;
            control_192.key = 0;
            control_192.color = 0x3ec218;
            control_192.description = "";
            control_192.register_search = (0 != 0);
            pressed_193 = control(a, control_192).pressed;
        }
        value_194 = raw(s, 0x3e75b8) & 255u;
        if ((value_194 == 0)) {
        } else {
            literal_195 = page_literal(text_pool, 24, menu_literal_60);
            label_196 = page_label(s, text_pool, -840, menu_literal_303,
                                   {"Backpack Distance", "Дистанция рюкзака", "背包距离"});
            {
                MenuControlRequest control_197;
                control_197.role = MenuControlRole::slider_integer;
                control_197.site = 0x33de3f;
                control_197.primitive = 0x3c4438;
                control_197.label = re::ReString(label_196);
                control_197.value = 0x3ee298;
                control_197.minimum = 0;
                control_197.maximum = 500;
                control_197.format = re::ReString(literal_195);
                control_197.flags = ReU32(0);
                pressed_198 = control(a, control_197).pressed;
            }
        }
        label_199 = page_label(s, text_pool, -856, menu_literal_304,
                               {"Dropped Items", "Выброшенные предметы", "掉落物品"});
        {
            MenuControlRequest control_200;
            control_200.role = MenuControlRole::checkbox;
            control_200.site = 0x33dea0;
            control_200.primitive = 0x3bd114;
            control_200.label = re::ReString(label_199);
            control_200.value = 0x3e8e68;
            control_200.key = 0;
            control_200.color = 0x3ec278;
            control_200.description = "";
            control_200.register_search = (0 != 0);
            pressed_201 = control(a, control_200).pressed;
        }
        value_202 = raw(s, 0x3e8e68) & 255u;
        if ((value_202 == 0)) {
        } else {
            literal_203 = page_literal(text_pool, 24, menu_literal_60);
            label_204 = page_label(s, text_pool, -856, menu_literal_305,
                                   {"Item Distance", "Дистанция предметов", "物品距离"});
            {
                MenuControlRequest control_205;
                control_205.role = MenuControlRole::slider_integer;
                control_205.site = 0x33df28;
                control_205.primitive = 0x3c4438;
                control_205.label = re::ReString(label_204);
                control_205.value = 0x3ee2e8;
                control_205.minimum = 0;
                control_205.maximum = 500;
                control_205.format = re::ReString(literal_203);
                control_205.flags = ReU32(0);
                pressed_206 = control(a, control_205).pressed;
            }
            value_207 = raw(s, 0x3e8e68) & 255u;
            if ((value_207 == 0)) {
            } else {
                label_208 =
                    page_label(s, text_pool, -670, menu_literal_306, {"Weapon", "Оружие", "武器"});
                owned_text_209 = re::ReString(label_208);
                label_210 = page_label(s, text_pool, -642, menu_literal_307,
                                       {"Construction", "Постройки", "建筑"});
                owned_text_211 = re::ReString(label_210);
                label_212 =
                    page_label(s, text_pool, -688, menu_literal_308, {"Items", "Предметы", "物品"});
                owned_text_213 = re::ReString(label_212);
                label_214 = page_label(s, text_pool, -663, menu_literal_309,
                                       {"Resources", "Ресурсы", "资源"});
                owned_text_215 = re::ReString(label_214);
                label_216 =
                    page_label(s, text_pool, -744, menu_literal_310, {"Attire", "Одежда", "服装"});
                owned_text_217 = re::ReString(label_216);
                label_218 = page_label(s, text_pool, -682, menu_literal_311,
                                       {"Tools", "Инструменты", "工具"});
                owned_text_219 = re::ReString(label_218);
                label_220 = page_label(s, text_pool, -765, menu_literal_312,
                                       {"Medical", "Медицина", "医疗"});
                owned_text_221 = re::ReString(label_220);
                label_222 =
                    page_label(s, text_pool, -736, menu_literal_209, {"Food", "Еда", "食物"});
                owned_text_223 = re::ReString(label_222);
                label_224 = page_label(s, text_pool, -731, menu_literal_313,
                                       {"Ammo", "Боеприпасы", "弹药"});
                owned_text_225 = re::ReString(label_224);
                label_226 =
                    page_label(s, text_pool, -676, menu_literal_314, {"Traps", "Ловушки", "陷阱"});
                owned_text_227 = re::ReString(label_226);
                label_228 =
                    page_label(s, text_pool, -726, menu_literal_315, {"Misc", "Разное", "杂项"});
                owned_text_229 = re::ReString(label_228);
                label_230 = page_label(s, text_pool, -653, menu_literal_316,
                                       {"Components", "Компоненты", "组件"});
                owned_text_231 = re::ReString(label_230);
                label_232 = page_label(s, text_pool, -816, menu_literal_317,
                                       {"Electrical", "Электрика", "电力"});
                owned_text_233 = re::ReString(label_232);
                label_234 =
                    page_label(s, text_pool, 32, menu_literal_318, {"Fun", "Развлечения", "娱乐"});
                owned_text_235 = re::ReString(label_234);
                label_236 = page_label(s, text_pool, -776, menu_literal_319,
                                       {"Backpacks", "Рюкзаки", "背包"});
                owned_text_237 = re::ReString(label_236);
                label_238 =
                    page_label(s, text_pool, -755, menu_literal_320, {"All", "Все", "全部"});
                owned_text_239 = re::ReString(label_238);
                label_240 = page_label(s, text_pool, -856, menu_literal_321,
                                       {"DudExplosive", "Неразорвавшийся взрывчатка", "哑弹"});
                owned_text_241 = re::ReString(label_240);
                label_242 = page_label(s, text_pool, -856, menu_literal_322,
                                       {"ItemCategory", "Категория предметов", "物品类别"});
                {
                    MenuControlRequest control_243;
                    control_243.role = MenuControlRole::multiselect;
                    control_243.site = 0x33e4f5;
                    control_243.primitive = 0x387d18;
                    control_243.label = re::ReString(label_242);
                    control_243.value = 0x3f04a8;
                    control_243.choices = {owned_text_209, owned_text_211, owned_text_213,
                                           owned_text_215, owned_text_217, owned_text_219,
                                           owned_text_221, owned_text_223, owned_text_225,
                                           owned_text_227, owned_text_229, owned_text_231,
                                           owned_text_233, owned_text_235, owned_text_237,
                                           owned_text_239, owned_text_241};
                    pressed_244 = control(a, control_243).pressed;
                }
            }
        }
        label_245 = page_label(s, text_pool, -840, menu_literal_323,
                               {"Dropped Weapons", "Выброшенное оружие", "掉落武器"});
        {
            MenuControlRequest control_246;
            control_246.role = MenuControlRole::checkbox;
            control_246.site = 0x33e55f;
            control_246.primitive = 0x3bd114;
            control_246.label = re::ReString(label_245);
            control_246.value = 0x3e8e18;
            control_246.key = 0;
            control_246.color = 0x3ec2d8;
            control_246.description = "";
            control_246.register_search = (0 != 0);
            pressed_247 = control(a, control_246).pressed;
        }
        value_248 = raw(s, 0x3e8e18) & 255u;
        if ((value_248 == 0)) {
        } else {
            literal_249 = page_literal(text_pool, 24, menu_literal_60);
            label_250 = page_label(s, text_pool, -840, menu_literal_324,
                                   {"Weapon Distance", "Дистанция оружия", "武器距离"});
            {
                MenuControlRequest control_251;
                control_251.role = MenuControlRole::slider_integer;
                control_251.site = 0x33e5e8;
                control_251.primitive = 0x3c4438;
                control_251.label = re::ReString(label_250);
                control_251.value = 0x3ee338;
                control_251.minimum = 0;
                control_251.maximum = 500;
                control_251.format = re::ReString(literal_249);
                control_251.flags = ReU32(0);
                pressed_252 = control(a, control_251).pressed;
            }
            value_253 = raw(s, 0x3e8e18) & 255u;
        }
        value_254 = raw(s, 0x3e8e68) & 255u;
        if ((value_254 != 0)) {
            label_258 = page_label(s, text_pool, -840, menu_literal_325,
                                   {"Exclude Lowtier", "Исключить нижний уровень", "排除低层"});
            {
                MenuControlRequest control_259;
                control_259.role = MenuControlRole::checkbox;
                control_259.site = 0x33e658;
                control_259.primitive = 0x3bd114;
                control_259.label = re::ReString(label_258);
                control_259.value = 0x3e9688;
                control_259.key = 0;
                control_259.color = 0;
                control_259.description = "";
                control_259.register_search = (0 != 0);
                pressed_260 = control(a, control_259).pressed;
            }
        } else {
            if ((((value_248 == 0) ? value_248 : value_253) == 0)) {
            } else {
                label_255 = page_label(s, text_pool, -840, menu_literal_325,
                                       {"Exclude Lowtier", "Исключить нижний уровень", "排除低层"});
                {
                    MenuControlRequest control_256;
                    control_256.role = MenuControlRole::checkbox;
                    control_256.site = 0x33e658;
                    control_256.primitive = 0x3bd114;
                    control_256.label = re::ReString(label_255);
                    control_256.value = 0x3e9688;
                    control_256.key = 0;
                    control_256.color = 0;
                    control_256.description = "";
                    control_256.register_search = (0 != 0);
                    pressed_257 = control(a, control_256).pressed;
                }
            }
        }
        label_261 = page_label(s, text_pool, -816, menu_literal_326,
                               {"Other Chams", "Другие чамы", "其他透视"});
        {
            MenuControlRequest control_262;
            control_262.role = MenuControlRole::checkbox;
            control_262.site = 0x33e6b5;
            control_262.primitive = 0x3bd114;
            control_262.label = re::ReString(label_261);
            control_262.value = 0x3e8af8;
            control_262.key = 0;
            control_262.color = 0;
            control_262.description = "";
            control_262.register_search = (0 != 0);
            pressed_263 = control(a, control_262).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_33e738(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x33e738..0x340081.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef label_4{};
        [[maybe_unused]] re::ReString owned_text_5{};
        [[maybe_unused]] MenuPageTextRef label_6{};
        [[maybe_unused]] re::ReString owned_text_7{};
        [[maybe_unused]] MenuPageTextRef label_8{};
        [[maybe_unused]] re::ReString owned_text_9{};
        [[maybe_unused]] MenuPageTextRef label_10{};
        [[maybe_unused]] re::ReString owned_text_11{};
        [[maybe_unused]] MenuPageTextRef label_12{};
        [[maybe_unused]] re::ReString owned_text_13{};
        [[maybe_unused]] MenuPageTextRef label_14{};
        [[maybe_unused]] re::ReString owned_text_15{};
        [[maybe_unused]] MenuPageTextRef label_16{};
        [[maybe_unused]] re::ReString owned_text_17{};
        [[maybe_unused]] MenuPageTextRef label_18{};
        [[maybe_unused]] bool pressed_20{};
        [[maybe_unused]] MenuPageTextRef label_21{};
        [[maybe_unused]] MenuPageTextRef label_22{};
        [[maybe_unused]] MenuPageTextRef label_23{};
        [[maybe_unused]] MenuPageTextRef label_24{};
        [[maybe_unused]] bool pressed_26{};
        [[maybe_unused]] ReU32 value_27{};
        [[maybe_unused]] MenuPageTextRef label_28{};
        [[maybe_unused]] re::ReString owned_text_29{};
        [[maybe_unused]] MenuPageTextRef label_30{};
        [[maybe_unused]] re::ReString owned_text_31{};
        [[maybe_unused]] MenuPageTextRef label_32{};
        [[maybe_unused]] re::ReString owned_text_33{};
        [[maybe_unused]] MenuPageTextRef label_34{};
        [[maybe_unused]] re::ReString owned_text_35{};
        [[maybe_unused]] MenuPageTextRef label_36{};
        [[maybe_unused]] re::ReString owned_text_37{};
        [[maybe_unused]] MenuPageTextRef label_38{};
        [[maybe_unused]] re::ReString owned_text_39{};
        [[maybe_unused]] MenuPageTextRef label_40{};
        [[maybe_unused]] re::ReString owned_text_41{};
        [[maybe_unused]] MenuPageTextRef label_42{};
        [[maybe_unused]] bool pressed_44{};
        [[maybe_unused]] MenuPageTextRef label_45{};
        [[maybe_unused]] MenuPageTextRef label_46{};
        [[maybe_unused]] MenuPageTextRef label_47{};
        [[maybe_unused]] MenuPageTextRef label_48{};
        [[maybe_unused]] bool pressed_50{};
        [[maybe_unused]] MenuPageTextRef label_51{};
        [[maybe_unused]] MenuPageTextRef label_52{};
        [[maybe_unused]] bool pressed_54{};
        [[maybe_unused]] ReU32 value_55{};
        [[maybe_unused]] MenuPageTextRef label_56{};
        [[maybe_unused]] re::ReString owned_text_57{};
        [[maybe_unused]] MenuPageTextRef label_58{};
        [[maybe_unused]] re::ReString owned_text_59{};
        [[maybe_unused]] MenuPageTextRef label_60{};
        [[maybe_unused]] re::ReString owned_text_61{};
        [[maybe_unused]] MenuPageTextRef label_62{};
        [[maybe_unused]] re::ReString owned_text_63{};
        [[maybe_unused]] MenuPageTextRef label_64{};
        [[maybe_unused]] re::ReString owned_text_65{};
        [[maybe_unused]] MenuPageTextRef label_66{};
        [[maybe_unused]] re::ReString owned_text_67{};
        [[maybe_unused]] MenuPageTextRef label_68{};
        [[maybe_unused]] re::ReString owned_text_69{};
        [[maybe_unused]] MenuPageTextRef label_70{};
        [[maybe_unused]] re::ReString owned_text_71{};
        [[maybe_unused]] MenuPageTextRef label_72{};
        [[maybe_unused]] re::ReString owned_text_73{};
        [[maybe_unused]] MenuPageTextRef label_74{};
        [[maybe_unused]] re::ReString owned_text_75{};
        [[maybe_unused]] MenuPageTextRef label_76{};
        [[maybe_unused]] bool pressed_78{};
        [[maybe_unused]] MenuPageTextRef literal_79{};
        [[maybe_unused]] MenuPageTextRef literal_80{};
        [[maybe_unused]] bool pressed_82{};
        [[maybe_unused]] ReU32 value_83{};
        [[maybe_unused]] MenuPageTextRef literal_84{};
        [[maybe_unused]] MenuPageTextRef literal_85{};
        [[maybe_unused]] bool pressed_87{};
        [[maybe_unused]] MenuPageTextRef label_88{};
        [[maybe_unused]] MenuPageTextRef label_89{};
        [[maybe_unused]] bool pressed_91{};
        [[maybe_unused]] MenuPageTextRef label_92{};
        [[maybe_unused]] MenuPageTextRef label_93{};
        [[maybe_unused]] bool pressed_95{};
        [[maybe_unused]] ReU32 value_96{};
        [[maybe_unused]] float value_97{};
        [[maybe_unused]] MenuPageTextRef label_98{};
        [[maybe_unused]] bool pressed_100{};
        [[maybe_unused]] MenuPageTextRef label_101{};
        [[maybe_unused]] re::ReString owned_text_102{};
        [[maybe_unused]] ReU32 value_103{};
        [[maybe_unused]] ReU32 value_104{};
        [[maybe_unused]] float value_105{};
        [[maybe_unused]] MenuPageTextRef label_106{};
        [[maybe_unused]] bool pressed_108{};
        [[maybe_unused]] MenuPageTextRef label_109{};
        [[maybe_unused]] re::ReString owned_text_110{};
        [[maybe_unused]] MenuPageTextRef label_111{};
        [[maybe_unused]] MenuPageTextRef literal_112{};
        [[maybe_unused]] re::ReString owned_text_113{};
        [[maybe_unused]] MenuPageTextRef literal_114{};
        [[maybe_unused]] bool pressed_116{};
        [[maybe_unused]] ReU32 value_117{};
        [[maybe_unused]] MenuPageTextRef literal_118{};
        [[maybe_unused]] MenuPageTextRef literal_119{};
        [[maybe_unused]] bool pressed_121{};
        [[maybe_unused]] MenuPageTextRef label_122{};
        [[maybe_unused]] bool pressed_124{};
        [[maybe_unused]] MenuPageTextRef label_125{};
        [[maybe_unused]] bool pressed_127{};
        [[maybe_unused]] MenuPageTextRef label_128{};
        [[maybe_unused]] bool pressed_130{};
        [[maybe_unused]] MenuPageTextRef label_131{};
        [[maybe_unused]] bool pressed_133{};
        [[maybe_unused]] MenuPageTextRef label_134{};
        [[maybe_unused]] bool pressed_136{};
        [[maybe_unused]] MenuPageTextRef label_137{};
        [[maybe_unused]] bool pressed_139{};
        [[maybe_unused]] MenuPageTextRef label_140{};
        [[maybe_unused]] bool pressed_142{};
        [[maybe_unused]] MenuPageTextRef label_143{};
        [[maybe_unused]] bool pressed_145{};
        [[maybe_unused]] MenuPageTextRef label_146{};
        [[maybe_unused]] bool pressed_148{};
        [[maybe_unused]] MenuPageTextRef label_149{};
        [[maybe_unused]] bool pressed_151{};
        [[maybe_unused]] MenuPageTextRef label_152{};
        [[maybe_unused]] bool pressed_154{};
        [[maybe_unused]] MenuPageTextRef label_155{};
        [[maybe_unused]] bool pressed_157{};
        [[maybe_unused]] MenuPageTextRef label_158{};
        [[maybe_unused]] bool pressed_160{};
        [[maybe_unused]] MenuPageTextRef label_161{};
        [[maybe_unused]] bool pressed_163{};
        [[maybe_unused]] MenuPageTextRef label_164{};
        [[maybe_unused]] bool pressed_166{};
        [[maybe_unused]] MenuPageTextRef label_167{};
        [[maybe_unused]] bool pressed_169{};
        [[maybe_unused]] MenuPageTextRef literal_170{};
        [[maybe_unused]] MenuPageTextRef label_171{};
        [[maybe_unused]] bool pressed_173{};
        label_1 = page_label(s, text_pool, 32, menu_literal_327, {"World", "Мир", "世界"});
        literal_2 = page_literal(text_pool, 24, menu_literal_328);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        label_4 = page_label(s, text_pool, -653, menu_literal_103,
                             {"Glow Vischeck", "Свечение (видимый)", "发光（可见检查）"});
        owned_text_5 = re::ReString(label_4);
        label_6 = page_label(s, text_pool, -536, menu_literal_104,
                             {"Plasma Vischeck", "Плазма (видимый)", "等离子（可见检查）"});
        owned_text_7 = re::ReString(label_6);
        label_8 = page_label(s, text_pool, -620, menu_literal_105,
                             {"Solid Vischeck", "Сплошной (видимый)", "纯色（可见检查）"});
        owned_text_9 = re::ReString(label_8);
        label_10 = page_label(s, text_pool, -636, menu_literal_106,
                              {"Mesh Vischeck", "Сетка (видимый)", "网格（可见检查）"});
        owned_text_11 = re::ReString(label_10);
        label_12 = page_label(
            s, text_pool, -424, menu_literal_107,
            {"Rainbow Wire Vischeck", "Радужный каркас (видимый)", "彩虹线框（可见检查）"});
        owned_text_13 = re::ReString(label_12);
        label_14 = page_label(s, text_pool, -664, menu_literal_108,
                              {"Iridescent", "Переливающийся", "虹彩"});
        owned_text_15 = re::ReString(label_14);
        label_16 =
            page_label(s, text_pool, 32, menu_literal_109, {"Naked", "Без материала", "无材质"});
        owned_text_17 = re::ReString(label_16);
        label_18 = page_label(s, text_pool, -600, menu_literal_329,
                              {"Entity Chams Type", "Материал", "材质"});
        {
            MenuControlRequest control_19;
            control_19.role = MenuControlRole::combo_strings;
            control_19.site = 0x33ea92;
            control_19.primitive = 0x3bf008;
            control_19.label = re::ReString(label_18);
            control_19.value = 0x3ef008;
            control_19.choices = {owned_text_5,  owned_text_7,  owned_text_9, owned_text_11,
                                  owned_text_13, owned_text_15, owned_text_17};
            pressed_20 = control(a, control_19).pressed;
        }
        label_21 = page_label(s, text_pool, -653, menu_literal_330,
                              {"Visible Color.", "Видимый цвет.", "可见颜色."});
        color_label(s, a, re::ReString(label_21), 0x3ef3c8, 0x33eaff);
        label_22 = page_label(s, text_pool, -600, menu_literal_331,
                              {"Non Visible Color.", "Невидимый цвет.", "不可见颜色."});
        color_label(s, a, re::ReString(label_22), 0x3ef3d8, 0x33eb4c);
        label_23 = page_label(s, text_pool, -520, menu_literal_332,
                              {"Draws chams on your hand/weapon",
                               "Рисует чамы на вашей руке/оружии", "在你的手/武器上绘制透视"});
        label_24 =
            page_label(s, text_pool, -600, menu_literal_333,
                       {"View Model Chams", "Чамы модели от первого лица", "第一人称模型透视"});
        {
            MenuControlRequest control_25;
            control_25.role = MenuControlRole::checkbox;
            control_25.site = 0x33ebec;
            control_25.primitive = 0x3bd114;
            control_25.label = re::ReString(label_24);
            control_25.value = 0x3e7158;
            control_25.key = 0;
            control_25.color = 0;
            control_25.description = re::ReString(label_23);
            control_25.register_search = (0 != 0);
            pressed_26 = control(a, control_25).pressed;
        }
        value_27 = raw(s, 0x3e7158) & 255u;
        if ((value_27 == 0)) {
        } else {
            label_28 = page_label(s, text_pool, -653, menu_literal_103,
                                  {"Glow Vischeck", "Свечение (видимый)", "发光（可见检查）"});
            owned_text_29 = re::ReString(label_28);
            label_30 = page_label(s, text_pool, -536, menu_literal_104,
                                  {"Plasma Vischeck", "Плазма (видимый)", "等离子（可见检查）"});
            owned_text_31 = re::ReString(label_30);
            label_32 = page_label(s, text_pool, -620, menu_literal_105,
                                  {"Solid Vischeck", "Сплошной (видимый)", "纯色（可见检查）"});
            owned_text_33 = re::ReString(label_32);
            label_34 = page_label(s, text_pool, -636, menu_literal_106,
                                  {"Mesh Vischeck", "Сетка (видимый)", "网格（可见检查）"});
            owned_text_35 = re::ReString(label_34);
            label_36 = page_label(
                s, text_pool, -424, menu_literal_107,
                {"Rainbow Wire Vischeck", "Радужный каркас (видимый)", "彩虹线框（可见检查）"});
            owned_text_37 = re::ReString(label_36);
            label_38 = page_label(s, text_pool, -664, menu_literal_108,
                                  {"Iridescent", "Переливающийся", "虹彩"});
            owned_text_39 = re::ReString(label_38);
            label_40 = page_label(s, text_pool, 32, menu_literal_109,
                                  {"Naked", "Без материала", "无材质"});
            owned_text_41 = re::ReString(label_40);
            label_42 = page_label(s, text_pool, -600, menu_literal_334,
                                  {"Model Material ", "Материал", "材质"});
            {
                MenuControlRequest control_43;
                control_43.role = MenuControlRole::combo_strings;
                control_43.site = 0x33ee9c;
                control_43.primitive = 0x3bf008;
                control_43.label = re::ReString(label_42);
                control_43.value = 0x3eefb8;
                control_43.choices = {owned_text_29, owned_text_31, owned_text_33, owned_text_35,
                                      owned_text_37, owned_text_39, owned_text_41};
                pressed_44 = control(a, control_43).pressed;
            }
            label_45 = page_label(s, text_pool, -653, menu_literal_335,
                                  {"Visible Color ", "Видимый цвет ", "可见颜色 "});
            color_label(s, a, re::ReString(label_45), 0x3eccf8, 0x33eeff);
            label_46 = page_label(s, text_pool, -600, menu_literal_336,
                                  {"Non Visible Color ", "Невидимый цвет ", "不可见颜色 "});
            color_label(s, a, re::ReString(label_46), 0x3ecc98, 0x33ef4c);
        }
        label_47 = page_label(s, text_pool, -520, menu_literal_337,
                              {"This will disable all of your ESP while your ingame map is open.",
                               "Это отключит весь ваш ESP, пока открыта игровая карта.",
                               "当游戏内地图打开时，这将禁用你所有的ESP。"});
        label_48 = page_label(s, text_pool, -600, menu_literal_338,
                              {"Disable ESP Map", "Отключить ESP на карте", "禁用地图ESP"});
        {
            MenuControlRequest control_49;
            control_49.role = MenuControlRole::checkbox;
            control_49.site = 0x33efe9;
            control_49.primitive = 0x3bd114;
            control_49.label = re::ReString(label_48);
            control_49.value = 0x3e6e38;
            control_49.key = 0;
            control_49.color = 0;
            control_49.description = re::ReString(label_47);
            control_49.register_search = (0 != 0);
            pressed_50 = control(a, control_49).pressed;
        }
        label_51 = page_label(s, text_pool, -520, menu_literal_339,
                              {"This will disable every item ESP on keypress.",
                               "Это отключит ESP всех предметов при нажатии клавиши.",
                               "按下按键时将禁用所有物品ESP。"});
        label_52 = page_label(s, text_pool, -664, menu_literal_340,
                              {"Battlemode", "Боевой режим", "战斗模式"});
        {
            MenuControlRequest control_53;
            control_53.role = MenuControlRole::checkbox;
            control_53.site = 0x33f08a;
            control_53.primitive = 0x3bd114;
            control_53.label = re::ReString(label_52);
            control_53.value = 0x3ea498;
            control_53.key = 0x3efc58;
            control_53.color = 0;
            control_53.description = re::ReString(label_51);
            control_53.register_search = (1 != 0);
            pressed_54 = control(a, control_53).pressed;
        }
        value_55 = raw(s, 0x3ea498) & 255u;
        if ((value_55 == 0)) {
        } else {
            label_56 = page_label(s, text_pool, 32, menu_literal_341, {"Ores", "Руда", "矿石"});
            owned_text_57 = re::ReString(label_56);
            label_58 =
                page_label(s, text_pool, -443, menu_literal_314, {"Traps", "Ловушки", "陷阱"});
            owned_text_59 = re::ReString(label_58);
            label_60 = page_label(s, text_pool, -653, menu_literal_190,
                                  {"Collectibles", "Собирательные", "采集物"});
            owned_text_61 = re::ReString(label_60);
            label_62 = page_label(s, text_pool, -448, menu_literal_209, {"Food", "Еда", "食物"});
            owned_text_63 = re::ReString(label_62);
            label_64 =
                page_label(s, text_pool, -568, menu_literal_219, {"Animals", "Животные", "动物"});
            owned_text_65 = re::ReString(label_64);
            label_66 = page_label(s, text_pool, -620, menu_literal_253,
                                  {"Containers", "Контейнеры", "容器"});
            owned_text_67 = re::ReString(label_66);
            label_68 =
                page_label(s, text_pool, -552, menu_literal_342, {"Others", "Другое", "其他"});
            owned_text_69 = re::ReString(label_68);
            label_70 =
                page_label(s, text_pool, -664, menu_literal_343, {"Vehicles", "Транспорт", "载具"});
            owned_text_71 = re::ReString(label_70);
            label_72 = page_label(s, text_pool, -636, menu_literal_344,
                                  {"Deployables", "Размещаемые", "可部署物品"});
            owned_text_73 = re::ReString(label_72);
            label_74 = page_label(s, text_pool, -437, menu_literal_345, {"Raids", "Рейды", "突袭"});
            owned_text_75 = re::ReString(label_74);
            label_76 = page_label(s, text_pool, -424, menu_literal_346,
                                  {"Battlemode Exceptions", "Исключения боевого", "战斗模式例外"});
            {
                MenuControlRequest control_77;
                control_77.role = MenuControlRole::multiselect;
                control_77.site = 0x33f445;
                control_77.primitive = 0x387d18;
                control_77.label = re::ReString(label_76);
                control_77.value = 0x3f0538;
                control_77.choices = {owned_text_57, owned_text_59, owned_text_61, owned_text_63,
                                      owned_text_65, owned_text_67, owned_text_69, owned_text_71,
                                      owned_text_73, owned_text_75};
                pressed_78 = control(a, control_77).pressed;
            }
        }
        call(a, 0x398bec, {ReI32(1), ReI32(4278190335)});
        literal_79 = page_literal(text_pool, -520, menu_literal_347);
        literal_80 = page_literal(text_pool, 24, menu_literal_345);
        {
            MenuControlRequest control_81;
            control_81.role = MenuControlRole::checkbox;
            control_81.site = 0x33f4b3;
            control_81.primitive = 0x3bd114;
            control_81.label = re::ReString(literal_80);
            control_81.value = 0x3f3c48;
            control_81.key = 0;
            control_81.color = 0x3fc888;
            control_81.description = re::ReString(literal_79);
            control_81.register_search = (0 != 0);
            pressed_82 = control(a, control_81).pressed;
        }
        value_83 = raw(s, 0x3f3c48) & 255u;
        if ((value_83 == 0)) {
        } else {
            literal_84 = page_literal(text_pool, 24, menu_literal_29);
            literal_85 = page_literal(text_pool, -664, menu_literal_348);
            {
                MenuControlRequest control_86;
                control_86.role = MenuControlRole::slider_float;
                control_86.site = 0x33f517;
                control_86.primitive = 0x3c43f4;
                control_86.label = re::ReString(literal_85);
                control_86.value = 0x3fcb48;
                control_86.minimum_float = 0.0f;
                control_86.maximum_float = 500.0f;
                control_86.format = re::ReString(literal_84);
                control_86.flags = ReU32(0);
                pressed_87 = control(a, control_86).pressed;
            }
        }
        call(a, 0x39890c, {ReI32(1)});
        label_88 =
            page_label(s, text_pool, -520, menu_literal_349,
                       {"Draws your last saved position",
                        "Отображает вашу последнюю сохранённую позицию", "显示你最后保存的位置"});
        label_89 = page_label(s, text_pool, -653, menu_literal_350,
                              {"Save Position", "Сохранить позицию", "保存位置"});
        {
            MenuControlRequest control_90;
            control_90.role = MenuControlRole::checkbox;
            control_90.site = 0x33f5c3;
            control_90.primitive = 0x3bd114;
            control_90.label = re::ReString(label_89);
            control_90.value = 0x3ea1c8;
            control_90.key = 0x3ef9b8;
            control_90.color = 0x3eb1f8;
            control_90.description = re::ReString(label_88);
            control_90.register_search = (1 != 0);
            pressed_91 = control(a, control_90).pressed;
        }
        label_92 = page_label(s, text_pool, -520, menu_literal_351,
                              {"Draws your last saved house position",
                               "Отображает позицию вашего последнего сохранённого дома",
                               "显示你最后保存的房屋位置"});
        label_93 = page_label(s, text_pool, -620, menu_literal_352,
                              {"Save House", "Сохранить дом", "保存房屋"});
        {
            MenuControlRequest control_94;
            control_94.role = MenuControlRole::checkbox;
            control_94.site = 0x33f668;
            control_94.primitive = 0x3bd114;
            control_94.label = re::ReString(label_93);
            control_94.value = 0x3e9ae8;
            control_94.key = 0x3efa18;
            control_94.color = 0x3eb198;
            control_94.description = re::ReString(label_92);
            control_94.register_search = (1 != 0);
            pressed_95 = control(a, control_94).pressed;
        }
        value_96 = raw(s, 0x3e9ae8) & 255u;
        if ((value_96 == 0)) {
        } else {
            value_97 = get<float>(a, 0x392f34);
            label_98 = page_label(s, text_pool, -636, menu_literal_353,
                                  {"Clear House", "Очистить дом", "清除房屋"});
            {
                MenuControlRequest control_99;
                control_99.role = MenuControlRole::button;
                control_99.site = 0x33f6ed;
                control_99.primitive = 0x3bc7d8;
                control_99.label = re::ReString(label_98);
                control_99.size = Vec2{((value_97 * 0.5f) - 30.0f), 30.0f};
                pressed_100 = control(a, control_99).pressed;
            }
            if ((pressed_100 == 0)) {
            } else {
                label_101 = page_label(
                    s, text_pool, -520, menu_literal_354,
                    {"House Cleared Successfully!", "Дом успешно очищен!", "房屋清除成功！"});
                owned_text_102 = re::ReString(label_101);
                notify(a, owned_text_102, ReI32(0), ReI32(0));
                s.values[0x3f0038] = re::re_bit_cast<ReU32>(0.0f);
                s.values[0x3f003c] = re::re_bit_cast<ReU32>(0.0f);
                s.values[0x3f0040] = ReU32(0);
            }
        }
        value_103 = raw(s, 0x3ea1c8) & 255u;
        if ((value_103 == 0)) {
        } else {
            value_104 = raw(s, 0x3e9ae8) & 255u;
            if ((value_104 == 0)) {
            } else {
                call(a, 0x39ac04, {0.0f, -1.0f});
            }
            value_105 = get<float>(a, 0x392f34);
            label_106 = page_label(s, text_pool, -653, menu_literal_355,
                                   {"Clear Position", "Очистить позицию", "清除位置"});
            {
                MenuControlRequest control_107;
                control_107.role = MenuControlRole::button;
                control_107.site = 0x33f7fc;
                control_107.primitive = 0x3bc7d8;
                control_107.label = re::ReString(label_106);
                control_107.size = Vec2{((value_105 * 0.5f) - 30.0f), 30.0f};
                pressed_108 = control(a, control_107).pressed;
            }
            if ((pressed_108 == 0)) {
            } else {
                label_109 = page_label(s, text_pool, -520, menu_literal_356,
                                       {"Position Cleared Successfully!",
                                        "Позиция успешно очищена!", "位置清除成功！"});
                owned_text_110 = re::ReString(label_109);
                notify(a, owned_text_110, ReI32(0), ReI32(0));
                s.values[0x3effd8] = re::re_bit_cast<ReU32>(0.0f);
                s.values[0x3effdc] = re::re_bit_cast<ReU32>(0.0f);
                s.values[0x3effe0] = ReU32(0);
            }
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_111 =
            page_label(s, text_pool, -664, menu_literal_343, {"Vehicles", "Транспорт", "载具"});
        literal_112 = page_literal(text_pool, 24, menu_literal_357);
        owned_text_113 = re::ReString(literal_112);
        child(s, m, a, owned_text_113, re::ReString(label_111), Vec2{0.0f, -1.0f}, (1 != 0));
        literal_114 = page_literal(text_pool, -653, menu_literal_358);
        {
            MenuControlRequest control_115;
            control_115.role = MenuControlRole::checkbox;
            control_115.site = 0x33f95f;
            control_115.primitive = 0x3bd114;
            control_115.label = re::ReString(literal_114);
            control_115.value = 0x3e6bb8;
            control_115.key = 0;
            control_115.color = 0;
            control_115.description = "";
            control_115.register_search = (0 != 0);
            pressed_116 = control(a, control_115).pressed;
        }
        value_117 = raw(s, 0x3e6bb8) & 255u;
        if ((value_117 == 0)) {
        } else {
            literal_118 = page_literal(text_pool, 24, menu_literal_29);
            literal_119 = page_literal(text_pool, -653, menu_literal_359);
            {
                MenuControlRequest control_120;
                control_120.role = MenuControlRole::slider_float;
                control_120.site = 0x33f9c8;
                control_120.primitive = 0x3c43f4;
                control_120.label = re::ReString(literal_119);
                control_120.value = 0x3ed4d8;
                control_120.minimum_float = 1.5f;
                control_120.maximum_float = 2.5f;
                control_120.format = re::ReString(literal_118);
                control_120.flags = ReU32(0);
                pressed_121 = control(a, control_120).pressed;
            }
        }
        label_122 = page_label(s, text_pool, -636, menu_literal_360,
                               {"Patrol Heli", "Патрульный вертолёт", "巡逻直升机"});
        {
            MenuControlRequest control_123;
            control_123.role = MenuControlRole::checkbox;
            control_123.site = 0x33fa29;
            control_123.primitive = 0x3bd114;
            control_123.label = re::ReString(label_122);
            control_123.value = 0x3e91d8;
            control_123.key = 0;
            control_123.color = 0x3ec9f8;
            control_123.description = "";
            control_123.register_search = (0 != 0);
            pressed_124 = control(a, control_123).pressed;
        }
        label_125 = page_label(s, text_pool, 16, menu_literal_361, {"Bradley", "Брэдли", "坦克"});
        {
            MenuControlRequest control_126;
            control_126.role = MenuControlRole::checkbox;
            control_126.site = 0x33fa8c;
            control_126.primitive = 0x3bd114;
            control_126.label = re::ReString(label_125);
            control_126.value = 0x3e9228;
            control_126.key = 0;
            control_126.color = 0x3eb258;
            control_126.description = "";
            control_126.register_search = (0 != 0);
            pressed_127 = control(a, control_126).pressed;
        }
        label_128 = page_label(s, text_pool, 16, menu_literal_362, {"Car", "Автомобиль", "汽车"});
        {
            MenuControlRequest control_129;
            control_129.role = MenuControlRole::checkbox;
            control_129.site = 0x33faef;
            control_129.primitive = 0x3bd114;
            control_129.label = re::ReString(label_128);
            control_129.value = 0x3e8558;
            control_129.key = 0;
            control_129.color = 0x3ed118;
            control_129.description = "";
            control_129.register_search = (0 != 0);
            pressed_130 = control(a, control_129).pressed;
        }
        label_131 = page_label(s, text_pool, 16, menu_literal_363, {"Train", "Поезд", "火车"});
        {
            MenuControlRequest control_132;
            control_132.role = MenuControlRole::checkbox;
            control_132.site = 0x33fb52;
            control_132.primitive = 0x3bd114;
            control_132.label = re::ReString(label_131);
            control_132.value = 0x3e85a8;
            control_132.key = 0;
            control_132.color = 0x3ed178;
            control_132.description = "";
            control_132.register_search = (0 != 0);
            pressed_133 = control(a, control_132).pressed;
        }
        label_134 = page_label(s, text_pool, 16, menu_literal_364, {"Drones", "Дроны", "无人机"});
        {
            MenuControlRequest control_135;
            control_135.role = MenuControlRole::checkbox;
            control_135.site = 0x33fbb5;
            control_135.primitive = 0x3bd114;
            control_135.label = re::ReString(label_134);
            control_135.value = 0x3e99f8;
            control_135.key = 0;
            control_135.color = 0x3eb3d8;
            control_135.description = "";
            control_135.register_search = (0 != 0);
            pressed_136 = control(a, control_135).pressed;
        }
        label_137 = page_label(s, text_pool, -620, menu_literal_365,
                               {"Cargo ship", "Грузовое судно", "货船"});
        {
            MenuControlRequest control_138;
            control_138.role = MenuControlRole::checkbox;
            control_138.site = 0x33fc16;
            control_138.primitive = 0x3bd114;
            control_138.label = re::ReString(label_137);
            control_138.value = 0x3e9098;
            control_138.key = 0;
            control_138.color = 0x3eb5b8;
            control_138.description = "";
            control_138.register_search = (0 != 0);
            pressed_139 = control(a, control_138).pressed;
        }
        label_140 = page_label(s, text_pool, -620, menu_literal_366,
                               {"Minicopter", "Минивертолёт", "迷你直升机"});
        {
            MenuControlRequest control_141;
            control_141.role = MenuControlRole::checkbox;
            control_141.site = 0x33fc77;
            control_141.primitive = 0x3bd114;
            control_141.label = re::ReString(label_140);
            control_141.value = 0x3e93b8;
            control_141.key = 0;
            control_141.color = 0x3eb498;
            control_141.description = "";
            control_141.register_search = (0 != 0);
            pressed_142 = control(a, control_141).pressed;
        }
        label_143 = page_label(s, text_pool, -620, menu_literal_367,
                               {"Scrap Heli", "Вертолёт из металлолома", "废料直升机"});
        {
            MenuControlRequest control_144;
            control_144.role = MenuControlRole::checkbox;
            control_144.site = 0x33fcd8;
            control_144.primitive = 0x3bd114;
            control_144.label = re::ReString(label_143);
            control_144.value = 0x3e9408;
            control_144.key = 0;
            control_144.color = 0x3eb438;
            control_144.description = "";
            control_144.register_search = (0 != 0);
            pressed_145 = control(a, control_144).pressed;
        }
        label_146 = page_label(s, text_pool, 16, menu_literal_368, {"RHIB", "РХИБ", "充气艇"});
        {
            MenuControlRequest control_147;
            control_147.role = MenuControlRole::checkbox;
            control_147.site = 0x33fd3b;
            control_147.primitive = 0x3bd114;
            control_147.label = re::ReString(label_146);
            control_147.value = 0x3e9318;
            control_147.key = 0;
            control_147.color = 0x3eb4f8;
            control_147.description = "";
            control_147.register_search = (0 != 0);
            pressed_148 = control(a, control_147).pressed;
        }
        label_149 =
            page_label(s, text_pool, 16, menu_literal_369, {"Rowboat", "Вёсельная лодка", "划艇"});
        {
            MenuControlRequest control_150;
            control_150.role = MenuControlRole::checkbox;
            control_150.site = 0x33fd9e;
            control_150.primitive = 0x3bd114;
            control_150.label = re::ReString(label_149);
            control_150.value = 0x3e9368;
            control_150.key = 0;
            control_150.color = 0x3eb558;
            control_150.description = "";
            control_150.register_search = (0 != 0);
            pressed_151 = control(a, control_150).pressed;
        }
        label_152 = page_label(s, text_pool, -664, menu_literal_370,
                               {"Submarine", "Подводная лодка", "潜艇"});
        {
            MenuControlRequest control_153;
            control_153.role = MenuControlRole::checkbox;
            control_153.site = 0x33fdff;
            control_153.primitive = 0x3bd114;
            control_153.label = re::ReString(label_152);
            control_153.value = 0x3e9458;
            control_153.key = 0;
            control_153.color = 0x3eb2b8;
            control_153.description = "";
            control_153.register_search = (0 != 0);
            pressed_154 = control(a, control_153).pressed;
        }
        label_155 = page_label(s, text_pool, -600, menu_literal_371,
                               {"Attack Helicopter", "Боевой вертолёт", "攻击直升机"});
        {
            MenuControlRequest control_156;
            control_156.role = MenuControlRole::checkbox;
            control_156.site = 0x33fe60;
            control_156.primitive = 0x3bd114;
            control_156.label = re::ReString(label_155);
            control_156.value = 0x3e92c8;
            control_156.key = 0;
            control_156.color = 0x3eb318;
            control_156.description = "";
            control_156.register_search = (0 != 0);
            pressed_157 = control(a, control_156).pressed;
        }
        label_158 =
            page_label(s, text_pool, -664, menu_literal_372, {"Tug Boat", "Буксир", "拖船"});
        {
            MenuControlRequest control_159;
            control_159.role = MenuControlRole::checkbox;
            control_159.site = 0x33fec1;
            control_159.primitive = 0x3bd114;
            control_159.label = re::ReString(label_158);
            control_159.value = 0x3e9278;
            control_159.key = 0;
            control_159.color = 0x3eb378;
            control_159.description = "";
            control_159.register_search = (0 != 0);
            pressed_160 = control(a, control_159).pressed;
        }
        label_161 = page_label(s, text_pool, -636, menu_literal_373,
                               {"Pedal Bikes", "Велосипеды", "脚踏车"});
        {
            MenuControlRequest control_162;
            control_162.role = MenuControlRole::checkbox;
            control_162.site = 0x33ff22;
            control_162.primitive = 0x3bd114;
            control_162.label = re::ReString(label_161);
            control_162.value = 0x3e6fc8;
            control_162.key = 0;
            control_162.color = 0x3eca58;
            control_162.description = "";
            control_162.register_search = (0 != 0);
            pressed_163 = control(a, control_162).pressed;
        }
        label_164 = page_label(s, text_pool, -636, menu_literal_374,
                               {"Motor Bikes", "Мотоциклы", "摩托车"});
        {
            MenuControlRequest control_165;
            control_165.role = MenuControlRole::checkbox;
            control_165.site = 0x33ff83;
            control_165.primitive = 0x3bd114;
            control_165.label = re::ReString(label_164);
            control_165.value = 0x3e6f78;
            control_165.key = 0;
            control_165.color = 0x3ea958;
            control_165.description = "";
            control_165.register_search = (0 != 0);
            pressed_166 = control(a, control_165).pressed;
        }
        label_167 = page_label(s, text_pool, -653, menu_literal_375,
                               {"Vehicle Chams", "Чамы транспорта", "载具透视"});
        {
            MenuControlRequest control_168;
            control_168.role = MenuControlRole::checkbox;
            control_168.site = 0x33ffe0;
            control_168.primitive = 0x3bd114;
            control_168.label = re::ReString(label_167);
            control_168.value = 0x3e8c88;
            control_168.key = 0;
            control_168.color = 0;
            control_168.description = "";
            control_168.register_search = (0 != 0);
            pressed_169 = control(a, control_168).pressed;
        }
        literal_170 = page_literal(text_pool, 24, menu_literal_60);
        label_171 = page_label(s, text_pool, -600, menu_literal_376,
                               {"Vehicle Distance", "Дистанция транспорта", "载具距离"});
        {
            MenuControlRequest control_172;
            control_172.role = MenuControlRole::slider_integer;
            control_172.site = 0x34005e;
            control_172.primitive = 0x3c4438;
            control_172.label = re::ReString(label_171);
            control_172.value = 0x3eedd8;
            control_172.minimum = 0;
            control_172.maximum = 5000;
            control_172.format = re::ReString(literal_170);
            control_172.flags = ReU32(0);
            pressed_173 = control(a, control_172).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_3400b0(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x3400b0..0x341b70.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef literal_4{};
        [[maybe_unused]] bool pressed_6{};
        [[maybe_unused]] ReU32 value_7{};
        [[maybe_unused]] MenuPageTextRef literal_8{};
        [[maybe_unused]] MenuPageTextRef literal_9{};
        [[maybe_unused]] bool pressed_11{};
        [[maybe_unused]] MenuPageTextRef label_12{};
        [[maybe_unused]] bool pressed_14{};
        [[maybe_unused]] MenuPageTextRef label_15{};
        [[maybe_unused]] bool pressed_17{};
        [[maybe_unused]] ReU32 value_18{};
        [[maybe_unused]] MenuPageTextRef label_19{};
        [[maybe_unused]] re::ReString owned_text_20{};
        [[maybe_unused]] MenuPageTextRef label_21{};
        [[maybe_unused]] re::ReString owned_text_22{};
        [[maybe_unused]] MenuPageTextRef label_23{};
        [[maybe_unused]] re::ReString owned_text_24{};
        [[maybe_unused]] MenuPageTextRef label_25{};
        [[maybe_unused]] re::ReString owned_text_26{};
        [[maybe_unused]] MenuPageTextRef label_27{};
        [[maybe_unused]] re::ReString owned_text_28{};
        [[maybe_unused]] MenuPageTextRef label_29{};
        [[maybe_unused]] bool pressed_31{};
        [[maybe_unused]] MenuPageTextRef label_32{};
        [[maybe_unused]] bool pressed_34{};
        [[maybe_unused]] MenuPageTextRef label_35{};
        [[maybe_unused]] bool pressed_37{};
        [[maybe_unused]] MenuPageTextRef label_38{};
        [[maybe_unused]] MenuPageTextRef label_39{};
        [[maybe_unused]] bool pressed_41{};
        [[maybe_unused]] MenuPageTextRef label_42{};
        [[maybe_unused]] bool pressed_44{};
        [[maybe_unused]] MenuPageTextRef label_45{};
        [[maybe_unused]] bool pressed_47{};
        [[maybe_unused]] MenuPageTextRef label_48{};
        [[maybe_unused]] bool pressed_50{};
        [[maybe_unused]] MenuPageTextRef label_51{};
        [[maybe_unused]] bool pressed_53{};
        [[maybe_unused]] MenuPageTextRef label_54{};
        [[maybe_unused]] bool pressed_56{};
        [[maybe_unused]] MenuPageTextRef label_57{};
        [[maybe_unused]] bool pressed_59{};
        [[maybe_unused]] MenuPageTextRef label_60{};
        [[maybe_unused]] bool pressed_62{};
        [[maybe_unused]] MenuPageTextRef label_63{};
        [[maybe_unused]] bool pressed_65{};
        [[maybe_unused]] MenuPageTextRef label_66{};
        [[maybe_unused]] bool pressed_68{};
        [[maybe_unused]] MenuPageTextRef literal_69{};
        [[maybe_unused]] MenuPageTextRef label_70{};
        [[maybe_unused]] bool pressed_72{};
        [[maybe_unused]] MenuPageTextRef label_73{};
        [[maybe_unused]] MenuPageTextRef literal_74{};
        [[maybe_unused]] re::ReString owned_text_75{};
        [[maybe_unused]] MenuPageTextRef literal_76{};
        [[maybe_unused]] bool pressed_78{};
        [[maybe_unused]] ReU32 value_79{};
        [[maybe_unused]] MenuPageTextRef literal_80{};
        [[maybe_unused]] MenuPageTextRef literal_81{};
        [[maybe_unused]] bool pressed_83{};
        [[maybe_unused]] MenuPageTextRef label_84{};
        [[maybe_unused]] bool pressed_86{};
        [[maybe_unused]] ReU32 value_87{};
        [[maybe_unused]] MenuPageTextRef literal_88{};
        [[maybe_unused]] MenuPageTextRef label_89{};
        [[maybe_unused]] bool pressed_91{};
        [[maybe_unused]] MenuPageTextRef label_92{};
        [[maybe_unused]] bool pressed_94{};
        [[maybe_unused]] ReU32 value_95{};
        [[maybe_unused]] MenuPageTextRef label_96{};
        [[maybe_unused]] re::ReString owned_text_97{};
        [[maybe_unused]] MenuPageTextRef label_98{};
        [[maybe_unused]] re::ReString owned_text_99{};
        [[maybe_unused]] MenuPageTextRef label_100{};
        [[maybe_unused]] re::ReString owned_text_101{};
        [[maybe_unused]] MenuPageTextRef label_102{};
        [[maybe_unused]] re::ReString owned_text_103{};
        [[maybe_unused]] MenuPageTextRef label_104{};
        [[maybe_unused]] re::ReString owned_text_105{};
        [[maybe_unused]] MenuPageTextRef label_106{};
        [[maybe_unused]] re::ReString owned_text_107{};
        [[maybe_unused]] MenuPageTextRef label_108{};
        [[maybe_unused]] re::ReString owned_text_109{};
        [[maybe_unused]] MenuPageTextRef label_110{};
        [[maybe_unused]] re::ReString owned_text_111{};
        [[maybe_unused]] MenuPageTextRef label_112{};
        [[maybe_unused]] bool pressed_114{};
        [[maybe_unused]] MenuPageTextRef literal_115{};
        [[maybe_unused]] MenuPageTextRef label_116{};
        [[maybe_unused]] bool pressed_118{};
        [[maybe_unused]] MenuPageTextRef label_119{};
        [[maybe_unused]] bool pressed_121{};
        [[maybe_unused]] ReU32 value_122{};
        [[maybe_unused]] MenuPageTextRef label_123{};
        [[maybe_unused]] re::ReString owned_text_124{};
        [[maybe_unused]] MenuPageTextRef label_125{};
        [[maybe_unused]] re::ReString owned_text_126{};
        [[maybe_unused]] MenuPageTextRef label_127{};
        [[maybe_unused]] bool pressed_129{};
        [[maybe_unused]] MenuPageTextRef literal_130{};
        [[maybe_unused]] MenuPageTextRef label_131{};
        [[maybe_unused]] bool pressed_133{};
        [[maybe_unused]] MenuPageTextRef label_134{};
        [[maybe_unused]] bool pressed_136{};
        [[maybe_unused]] ReU32 value_137{};
        [[maybe_unused]] MenuPageTextRef label_138{};
        [[maybe_unused]] re::ReString owned_text_139{};
        [[maybe_unused]] MenuPageTextRef label_140{};
        [[maybe_unused]] re::ReString owned_text_141{};
        [[maybe_unused]] MenuPageTextRef label_142{};
        [[maybe_unused]] bool pressed_144{};
        [[maybe_unused]] MenuPageTextRef literal_145{};
        [[maybe_unused]] MenuPageTextRef label_146{};
        [[maybe_unused]] bool pressed_148{};
        [[maybe_unused]] MenuPageTextRef label_149{};
        [[maybe_unused]] bool pressed_151{};
        [[maybe_unused]] ReU32 value_152{};
        [[maybe_unused]] MenuPageTextRef literal_153{};
        [[maybe_unused]] MenuPageTextRef label_154{};
        [[maybe_unused]] bool pressed_156{};
        [[maybe_unused]] MenuPageTextRef label_157{};
        [[maybe_unused]] bool pressed_159{};
        [[maybe_unused]] ReU32 value_160{};
        [[maybe_unused]] MenuPageTextRef label_161{};
        [[maybe_unused]] MenuPageTextRef label_162{};
        [[maybe_unused]] bool pressed_164{};
        [[maybe_unused]] MenuPageTextRef label_165{};
        [[maybe_unused]] bool pressed_167{};
        [[maybe_unused]] MenuPageTextRef label_168{};
        [[maybe_unused]] re::ReString owned_text_169{};
        [[maybe_unused]] MenuPageTextRef label_170{};
        [[maybe_unused]] re::ReString owned_text_171{};
        [[maybe_unused]] MenuPageTextRef label_172{};
        [[maybe_unused]] re::ReString owned_text_173{};
        [[maybe_unused]] MenuPageTextRef label_174{};
        [[maybe_unused]] re::ReString owned_text_175{};
        [[maybe_unused]] MenuPageTextRef label_176{};
        [[maybe_unused]] re::ReString owned_text_177{};
        [[maybe_unused]] MenuPageTextRef label_178{};
        [[maybe_unused]] bool pressed_180{};
        [[maybe_unused]] MenuPageTextRef literal_181{};
        [[maybe_unused]] MenuPageTextRef label_182{};
        [[maybe_unused]] bool pressed_184{};
        [[maybe_unused]] MenuPageTextRef label_185{};
        [[maybe_unused]] bool pressed_187{};
        [[maybe_unused]] ReU32 value_188{};
        [[maybe_unused]] MenuPageTextRef literal_189{};
        [[maybe_unused]] MenuPageTextRef label_190{};
        [[maybe_unused]] bool pressed_192{};
        [[maybe_unused]] MenuPageTextRef label_193{};
        [[maybe_unused]] bool pressed_195{};
        label_1 = page_label(s, text_pool, -568, menu_literal_344,
                             {"Deployables", "Размещаемые", "可部署物品"});
        literal_2 = page_literal(text_pool, 24, menu_literal_377);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        literal_4 = page_literal(text_pool, -552, menu_literal_378);
        {
            MenuControlRequest control_5;
            control_5.role = MenuControlRole::checkbox;
            control_5.site = 0x3401af;
            control_5.primitive = 0x3bd114;
            control_5.label = re::ReString(literal_4);
            control_5.value = 0x3e6c08;
            control_5.key = 0;
            control_5.color = 0;
            control_5.description = "";
            control_5.register_search = (0 != 0);
            pressed_6 = control(a, control_5).pressed;
        }
        value_7 = raw(s, 0x3e6c08) & 255u;
        if ((value_7 == 0)) {
        } else {
            literal_8 = page_literal(text_pool, 24, menu_literal_29);
            literal_9 = page_literal(text_pool, -504, menu_literal_379);
            {
                MenuControlRequest control_10;
                control_10.role = MenuControlRole::slider_float;
                control_10.site = 0x340218;
                control_10.primitive = 0x3c43f4;
                control_10.label = re::ReString(literal_9);
                control_10.value = 0x3ed528;
                control_10.minimum_float = 1.5f;
                control_10.maximum_float = 2.5f;
                control_10.format = re::ReString(literal_8);
                control_10.flags = ReU32(0);
                pressed_11 = control(a, control_10).pressed;
            }
        }
        label_12 = page_label(s, text_pool, -472, menu_literal_380,
                              {"Recycler", "Переработчик", "回收机"});
        {
            MenuControlRequest control_13;
            control_13.role = MenuControlRole::checkbox;
            control_13.site = 0x340278;
            control_13.primitive = 0x3bd114;
            control_13.label = re::ReString(label_12);
            control_13.value = 0x3e7568;
            control_13.key = 0;
            control_13.color = 0x3eae98;
            control_13.description = "";
            control_13.register_search = (0 != 0);
            pressed_14 = control(a, control_13).pressed;
        }
        label_15 = page_label(s, text_pool, -472, menu_literal_381, {"Cupboard", "Шкаф", "储物柜"});
        {
            MenuControlRequest control_16;
            control_16.role = MenuControlRole::checkbox;
            control_16.site = 0x3402d8;
            control_16.primitive = 0x3bd114;
            control_16.label = re::ReString(label_15);
            control_16.value = 0x3e8eb8;
            control_16.key = 0;
            control_16.color = 0x3eadd8;
            control_16.description = "";
            control_16.register_search = (0 != 0);
            pressed_17 = control(a, control_16).pressed;
        }
        value_18 = raw(s, 0x3e8eb8) & 255u;
        if ((value_18 == 0)) {
        } else {
            label_19 = page_label(s, text_pool, -514, menu_literal_250,
                                  {"HealthBar", "Полоса здоровья", "血条"});
            owned_text_20 = re::ReString(label_19);
            label_21 = page_label(s, text_pool, -424, menu_literal_251,
                                  {"HealthText", "Текст здоровья", "血量文字"});
            owned_text_22 = re::ReString(label_21);
            label_23 =
                page_label(s, text_pool, 32, menu_literal_382, {"Upkeep", "Содержание", "维护"});
            owned_text_24 = re::ReString(label_23);
            label_25 = page_label(s, text_pool, -472, menu_literal_383,
                                  {"ShowID", "Показать ID", "显示ID"});
            owned_text_26 = re::ReString(label_25);
            label_27 = page_label(s, text_pool, -528, menu_literal_384,
                                  {"DecayingOnly", "Только разрушающиеся", "仅显示腐烂中"});
            owned_text_28 = re::ReString(label_27);
            label_29 = page_label(s, text_pool, -424, menu_literal_385,
                                  {"TC Options", "Опции шкафа", "储物柜选项"});
            {
                MenuControlRequest control_30;
                control_30.role = MenuControlRole::multiselect;
                control_30.site = 0x340516;
                control_30.primitive = 0x387d18;
                control_30.label = re::ReString(label_29);
                control_30.value = 0x3f0658;
                control_30.choices = {owned_text_20, owned_text_22, owned_text_24, owned_text_26,
                                      owned_text_28};
                pressed_31 = control(a, control_30).pressed;
            }
        }
        label_32 = page_label(s, text_pool, -568, menu_literal_386,
                              {"CCTV Camera", "Камера видеонаблюдения", "监控摄像头"});
        {
            MenuControlRequest control_33;
            control_33.role = MenuControlRole::checkbox;
            control_33.site = 0x340581;
            control_33.primitive = 0x3bd114;
            control_33.label = re::ReString(label_32);
            control_33.value = 0x3e6ca8;
            control_33.key = 0;
            control_33.color = 0x3eae38;
            control_33.description = "";
            control_33.register_search = (0 != 0);
            pressed_34 = control(a, control_33).pressed;
        }
        label_35 = page_label(s, text_pool, -552, menu_literal_387,
                              {"Stashes Unhidden", "Тайники (видимые)", "藏匿点（可见）"});
        {
            MenuControlRequest control_36;
            control_36.role = MenuControlRole::checkbox;
            control_36.site = 0x3405e2;
            control_36.primitive = 0x3bd114;
            control_36.label = re::ReString(label_35);
            control_36.value = 0x3e8fa8;
            control_36.key = 0;
            control_36.color = 0x3eaef8;
            control_36.description = "";
            control_36.register_search = (0 != 0);
            pressed_37 = control(a, control_36).pressed;
        }
        label_38 = page_label(
            s, text_pool, -328, menu_literal_388,
            {"Saves the current position of the stash you are looking at. Will save this position "
             "to your config aswell. Saves per server that you join. You can also change the name "
             "of the stash in your config.",
             "Сохраняет текущую позицию тайника, на который вы смотрите. Эта позиция также будет "
             "сохранена в ваш конфиг. Сохраняется для каждого сервера, к которому вы "
             "присоединяетесь. Вы также можете изменить название тайника в конфиге.",
             "保存你正在查看的隐藏的藏匿点当前位置。此位置也会保存到你的配置文件中。按你加入的每个"
             "服务器分别保存。你也可以在配置文件中更改隐藏的名称。"});
        label_39 = page_label(s, text_pool, -528, menu_literal_389,
                              {"Local Stashes", "Локальные тайники", "本地藏匿点"});
        {
            MenuControlRequest control_40;
            control_40.role = MenuControlRole::checkbox;
            control_40.site = 0x340683;
            control_40.primitive = 0x3bd114;
            control_40.label = re::ReString(label_39);
            control_40.value = 0x3e8f58;
            control_40.key = 0;
            control_40.color = 0x3eaf58;
            control_40.description = re::ReString(label_38);
            control_40.register_search = (0 != 0);
            pressed_41 = control(a, control_40).pressed;
        }
        label_42 = page_label(s, text_pool, -528, menu_literal_390,
                              {"Sleeping Bag", "Спальный мешок", "睡袋"});
        {
            MenuControlRequest control_43;
            control_43.role = MenuControlRole::checkbox;
            control_43.site = 0x3406e4;
            control_43.primitive = 0x3bd114;
            control_43.label = re::ReString(label_42);
            control_43.value = 0x3e8f08;
            control_43.key = 0;
            control_43.color = 0x3eafb8;
            control_43.description = "";
            control_43.register_search = (0 != 0);
            pressed_44 = control(a, control_43).pressed;
        }
        label_45 = page_label(s, text_pool, -568, menu_literal_391,
                              {"RF receiver", "RF-приёмник", "射频接收器"});
        {
            MenuControlRequest control_46;
            control_46.role = MenuControlRole::checkbox;
            control_46.site = 0x340745;
            control_46.primitive = 0x3bd114;
            control_46.label = re::ReString(label_45);
            control_46.value = 0x3e9188;
            control_46.key = 0;
            control_46.color = 0x3eb018;
            control_46.description = "";
            control_46.register_search = (0 != 0);
            pressed_47 = control(a, control_46).pressed;
        }
        label_48 = page_label(s, text_pool, -488, menu_literal_392,
                              {"RF Broadcaster", "RF-передатчик", "射频发射器"});
        {
            MenuControlRequest control_49;
            control_49.role = MenuControlRole::checkbox;
            control_49.site = 0x3407a5;
            control_49.primitive = 0x3bd114;
            control_49.label = re::ReString(label_48);
            control_49.value = 0x3e9138;
            control_49.key = 0;
            control_49.color = 0x3eb078;
            control_49.description = "";
            control_49.register_search = (0 != 0);
            pressed_50 = control(a, control_49).pressed;
        }
        label_51 = page_label(s, text_pool, -568, menu_literal_393,
                              {"HBHF Sensor", "Датчик HBHF", "HBHF传感器"});
        {
            MenuControlRequest control_52;
            control_52.role = MenuControlRole::checkbox;
            control_52.site = 0x340806;
            control_52.primitive = 0x3bd114;
            control_52.label = re::ReString(label_51);
            control_52.value = 0x3e6d98;
            control_52.key = 0;
            control_52.color = 0x3ea898;
            control_52.description = "";
            control_52.register_search = (0 != 0);
            pressed_53 = control(a, control_52).pressed;
        }
        label_54 = page_label(s, text_pool, -488, menu_literal_394,
                              {"Seismic Sensor", "Сейсмический датчик", "地震传感器"});
        {
            MenuControlRequest control_55;
            control_55.role = MenuControlRole::checkbox;
            control_55.site = 0x340866;
            control_55.primitive = 0x3bd114;
            control_55.label = re::ReString(label_54);
            control_55.value = 0x3e6de8;
            control_55.key = 0;
            control_55.color = 0x3ea8f8;
            control_55.description = "";
            control_55.register_search = (0 != 0);
            pressed_56 = control(a, control_55).pressed;
        }
        label_57 = page_label(s, text_pool, -528, menu_literal_395,
                              {"Large Battery", "Большая батарея", "大型电池"});
        {
            MenuControlRequest control_58;
            control_58.role = MenuControlRole::checkbox;
            control_58.site = 0x3408c7;
            control_58.primitive = 0x3bd114;
            control_58.label = re::ReString(label_57);
            control_58.value = 0x3e6d48;
            control_58.key = 0;
            control_58.color = 0x3ea838;
            control_58.description = "";
            control_58.register_search = (0 != 0);
            pressed_59 = control(a, control_58).pressed;
        }
        label_60 = page_label(s, text_pool, 16, menu_literal_396, {"Tier3", "3 уровень", "三级台"});
        {
            MenuControlRequest control_61;
            control_61.role = MenuControlRole::checkbox;
            control_61.site = 0x34092a;
            control_61.primitive = 0x3bd114;
            control_61.label = re::ReString(label_60);
            control_61.value = 0x3e9048;
            control_61.key = 0;
            control_61.color = 0x3eb0d8;
            control_61.description = "";
            control_61.register_search = (0 != 0);
            pressed_62 = control(a, control_61).pressed;
        }
        label_63 = page_label(s, text_pool, 16, menu_literal_397, {"Tier2", "2 уровень", "二级台"});
        {
            MenuControlRequest control_64;
            control_64.role = MenuControlRole::checkbox;
            control_64.site = 0x34098d;
            control_64.primitive = 0x3bd114;
            control_64.label = re::ReString(label_63);
            control_64.value = 0x3e94a8;
            control_64.key = 0;
            control_64.color = 0x3eb138;
            control_64.description = "";
            control_64.register_search = (0 != 0);
            pressed_65 = control(a, control_64).pressed;
        }
        label_66 = page_label(s, text_pool, -552, menu_literal_398,
                              {"Deployable Chams", "Чамы построек", "可部署物品透视"});
        {
            MenuControlRequest control_67;
            control_67.role = MenuControlRole::checkbox;
            control_67.site = 0x3409ea;
            control_67.primitive = 0x3bd114;
            control_67.label = re::ReString(label_66);
            control_67.value = 0x3e8c38;
            control_67.key = 0;
            control_67.color = 0;
            control_67.description = "";
            control_67.register_search = (0 != 0);
            pressed_68 = control(a, control_67).pressed;
        }
        literal_69 = page_literal(text_pool, 24, menu_literal_60);
        label_70 = page_label(s, text_pool, -504, menu_literal_399,
                              {"Deploy Distance", "Дистанция построек", "部署距离"});
        {
            MenuControlRequest control_71;
            control_71.role = MenuControlRole::slider_integer;
            control_71.site = 0x340a6b;
            control_71.primitive = 0x3c4438;
            control_71.label = re::ReString(label_70);
            control_71.value = 0x3ee8d8;
            control_71.minimum = 0;
            control_71.maximum = 500;
            control_71.format = re::ReString(literal_69);
            control_71.flags = ReU32(0);
            pressed_72 = control(a, control_71).pressed;
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_73 = page_label(s, text_pool, 32, menu_literal_314, {"Traps", "Ловушки", "陷阱"});
        literal_74 = page_literal(text_pool, 24, menu_literal_400);
        owned_text_75 = re::ReString(literal_74);
        child(s, m, a, owned_text_75, re::ReString(label_73), Vec2{0.0f, -1.0f}, (1 != 0));
        literal_76 = page_literal(text_pool, -424, menu_literal_401);
        {
            MenuControlRequest control_77;
            control_77.role = MenuControlRole::checkbox;
            control_77.site = 0x340b4c;
            control_77.primitive = 0x3bd114;
            control_77.label = re::ReString(literal_76);
            control_77.value = 0x3e6c58;
            control_77.key = 0;
            control_77.color = 0;
            control_77.description = "";
            control_77.register_search = (0 != 0);
            pressed_78 = control(a, control_77).pressed;
        }
        value_79 = raw(s, 0x3e6c58) & 255u;
        if ((value_79 == 0)) {
        } else {
            literal_80 = page_literal(text_pool, 24, menu_literal_29);
            literal_81 = page_literal(text_pool, -552, menu_literal_402);
            {
                MenuControlRequest control_82;
                control_82.role = MenuControlRole::slider_float;
                control_82.site = 0x340bb5;
                control_82.primitive = 0x3c43f4;
                control_82.label = re::ReString(literal_81);
                control_82.value = 0x3ed578;
                control_82.minimum_float = 1.5f;
                control_82.maximum_float = 2.5f;
                control_82.format = re::ReString(literal_80);
                control_82.flags = ReU32(0);
                pressed_83 = control(a, control_82).pressed;
            }
        }
        label_84 = page_label(s, text_pool, -528, menu_literal_403,
                              {"Tuncan Alarm", "Жестяная банка", "罐头警报"});
        {
            MenuControlRequest control_85;
            control_85.role = MenuControlRole::checkbox;
            control_85.site = 0x340c16;
            control_85.primitive = 0x3bd114;
            control_85.label = re::ReString(label_84);
            control_85.value = 0x3e9e58;
            control_85.key = 0;
            control_85.color = 0x3ec398;
            control_85.description = "";
            control_85.register_search = (0 != 0);
            pressed_86 = control(a, control_85).pressed;
        }
        value_87 = raw(s, 0x3e9e58) & 255u;
        if ((value_87 == 0)) {
        } else {
            literal_88 = page_literal(text_pool, 24, menu_literal_60);
            label_89 = page_label(s, text_pool, -488, menu_literal_404,
                                  {"Alarm Distance", "Дистанция сигнализации", "警报距离"});
            {
                MenuControlRequest control_90;
                control_90.role = MenuControlRole::slider_integer;
                control_90.site = 0x340c99;
                control_90.primitive = 0x3c4438;
                control_90.label = re::ReString(label_89);
                control_90.value = 0x3eeba8;
                control_90.minimum = 0;
                control_90.maximum = 500;
                control_90.format = re::ReString(literal_88);
                control_90.flags = ReU32(0);
                pressed_91 = control(a, control_90).pressed;
            }
        }
        label_92 = page_label(s, text_pool, -424, menu_literal_405,
                              {"AutoTurret", "Автоматическая турель", "自动炮塔"});
        {
            MenuControlRequest control_93;
            control_93.role = MenuControlRole::checkbox;
            control_93.site = 0x340cf9;
            control_93.primitive = 0x3bd114;
            control_93.label = re::ReString(label_92);
            control_93.value = 0x3e86e8;
            control_93.key = 0;
            control_93.color = 0x3ec338;
            control_93.description = "";
            control_93.register_search = (0 != 0);
            pressed_94 = control(a, control_93).pressed;
        }
        value_95 = raw(s, 0x3e86e8) & 255u;
        if ((value_95 == 0)) {
        } else {
            label_96 = page_label(s, text_pool, -488, menu_literal_406,
                                  {"ViewDirection", "Направление взгляда", "视线方向"});
            owned_text_97 = re::ReString(label_96);
            label_98 = page_label(s, text_pool, -514, menu_literal_250,
                                  {"HealthBar", "Полоса здоровья", "血条"});
            owned_text_99 = re::ReString(label_98);
            label_100 = page_label(s, text_pool, -424, menu_literal_251,
                                   {"HealthText", "Текст здоровья", "血量文字"});
            owned_text_101 = re::ReString(label_100);
            label_102 = page_label(s, text_pool, 32, menu_literal_407, {"Flags", "Флаги", "标志"});
            owned_text_103 = re::ReString(label_102);
            label_104 = page_label(s, text_pool, -344, menu_literal_408,
                                   {"HideAuthed", "Скрыть авторизованных", "隐藏已授权"});
            owned_text_105 = re::ReString(label_104);
            label_106 = page_label(s, text_pool, -528, menu_literal_409,
                                   {"HideOffline", "Скрыть оффлайн", "隐藏离线"});
            owned_text_107 = re::ReString(label_106);
            label_108 = page_label(s, text_pool, -472, menu_literal_410,
                                   {"HideNoGun", "Скрыть без оружия", "隐藏无武器"});
            owned_text_109 = re::ReString(label_108);
            label_110 = page_label(s, text_pool, -568, menu_literal_411,
                                   {"WeaponName", "Название оружия", "武器名称"});
            owned_text_111 = re::ReString(label_110);
            label_112 = page_label(s, text_pool, -488, menu_literal_412,
                                   {"Turret Options", "Опции турели", "炮塔选项"});
            {
                MenuControlRequest control_113;
                control_113.role = MenuControlRole::multiselect;
                control_113.site = 0x341016;
                control_113.primitive = 0x387d18;
                control_113.label = re::ReString(label_112);
                control_113.value = 0x3f02f8;
                control_113.choices = {owned_text_97,  owned_text_99,  owned_text_101,
                                       owned_text_103, owned_text_105, owned_text_107,
                                       owned_text_109, owned_text_111};
                pressed_114 = control(a, control_113).pressed;
            }
            literal_115 = page_literal(text_pool, 24, menu_literal_60);
            label_116 = page_label(s, text_pool, -552, menu_literal_413,
                                   {"Turret Distance", "Дистанция турели", "炮塔距离"});
            {
                MenuControlRequest control_117;
                control_117.role = MenuControlRole::slider_integer;
                control_117.site = 0x341091;
                control_117.primitive = 0x3c4438;
                control_117.label = re::ReString(label_116);
                control_117.value = 0x3eeb58;
                control_117.minimum = 0;
                control_117.maximum = 500;
                control_117.format = re::ReString(literal_115);
                control_117.flags = ReU32(0);
                pressed_118 = control(a, control_117).pressed;
            }
        }
        label_119 = page_label(s, text_pool, -472, menu_literal_414,
                               {"Gun Trap", "Ловушка с ружьём", "喷子陷阱"});
        {
            MenuControlRequest control_120;
            control_120.role = MenuControlRole::checkbox;
            control_120.site = 0x3410fa;
            control_120.primitive = 0x3bd114;
            control_120.label = re::ReString(label_119);
            control_120.value = 0x3e8878;
            control_120.key = 0;
            control_120.color = 0x3ec3f8;
            control_120.description = "";
            control_120.register_search = (0 != 0);
            pressed_121 = control(a, control_120).pressed;
        }
        value_122 = raw(s, 0x3e8878) & 255u;
        if ((value_122 == 0)) {
        } else {
            label_123 = page_label(s, text_pool, -514, menu_literal_250,
                                   {"HealthBar", "Полоса здоровья", "血条"});
            owned_text_124 = re::ReString(label_123);
            label_125 = page_label(s, text_pool, -568, menu_literal_251,
                                   {"HealthText", "Текст здоровья", "血量文字"});
            owned_text_126 = re::ReString(label_125);
            label_127 = page_label(s, text_pool, -528, menu_literal_415,
                                   {"Gun Options", "Опции ружья", "喷子选项"});
            {
                MenuControlRequest control_128;
                control_128.role = MenuControlRole::multiselect;
                control_128.site = 0x34124b;
                control_128.primitive = 0x387d18;
                control_128.label = re::ReString(label_127);
                control_128.value = 0x3f0418;
                control_128.choices = {owned_text_124, owned_text_126};
                pressed_129 = control(a, control_128).pressed;
            }
            literal_130 = page_literal(text_pool, 24, menu_literal_60);
            label_131 = page_label(s, text_pool, -528, menu_literal_416,
                                   {"Gun Distance", "Дистанция ружья", "喷子距离"});
            {
                MenuControlRequest control_132;
                control_132.role = MenuControlRole::slider_integer;
                control_132.site = 0x3412c6;
                control_132.primitive = 0x3c4438;
                control_132.label = re::ReString(label_131);
                control_132.value = 0x3eec48;
                control_132.minimum = 0;
                control_132.maximum = 500;
                control_132.format = re::ReString(literal_130);
                control_132.flags = ReU32(0);
                pressed_133 = control(a, control_132).pressed;
            }
        }
        label_134 = page_label(s, text_pool, -568, menu_literal_417,
                               {"Flame Trap", "Огненная ловушка", "火焰陷阱"});
        {
            MenuControlRequest control_135;
            control_135.role = MenuControlRole::checkbox;
            control_135.site = 0x341330;
            control_135.primitive = 0x3bd114;
            control_135.label = re::ReString(label_134);
            control_135.value = 0x3e8738;
            control_135.key = 0;
            control_135.color = 0x3ec4b8;
            control_135.description = "";
            control_135.register_search = (0 != 0);
            pressed_136 = control(a, control_135).pressed;
        }
        value_137 = raw(s, 0x3e8738) & 255u;
        if ((value_137 == 0)) {
        } else {
            label_138 = page_label(s, text_pool, -514, menu_literal_250,
                                   {"HealthBar", "Полоса здоровья", "血条"});
            owned_text_139 = re::ReString(label_138);
            label_140 = page_label(s, text_pool, -568, menu_literal_251,
                                   {"HealthText", "Текст здоровья", "血量文字"});
            owned_text_141 = re::ReString(label_140);
            label_142 = page_label(s, text_pool, -488, menu_literal_418,
                                   {"Flame Options", "Опции огня", "火焰选项"});
            {
                MenuControlRequest control_143;
                control_143.role = MenuControlRole::multiselect;
                control_143.site = 0x341480;
                control_143.primitive = 0x387d18;
                control_143.label = re::ReString(label_142);
                control_143.value = 0x3f05c8;
                control_143.choices = {owned_text_139, owned_text_141};
                pressed_144 = control(a, control_143).pressed;
            }
            literal_145 = page_literal(text_pool, 24, menu_literal_60);
            label_146 = page_label(s, text_pool, -488, menu_literal_419,
                                   {"Flame Distance", "Дистанция огня", "火焰距离"});
            {
                MenuControlRequest control_147;
                control_147.role = MenuControlRole::slider_integer;
                control_147.site = 0x3414fa;
                control_147.primitive = 0x3c4438;
                control_147.label = re::ReString(label_146);
                control_147.value = 0x3eec98;
                control_147.minimum = 0;
                control_147.maximum = 500;
                control_147.format = re::ReString(literal_145);
                control_147.flags = ReU32(0);
                pressed_148 = control(a, control_147).pressed;
            }
        }
        label_149 =
            page_label(s, text_pool, -514, menu_literal_420, {"Snap Trap", "Капкан", "捕兽夹"});
        {
            MenuControlRequest control_150;
            control_150.role = MenuControlRole::checkbox;
            control_150.site = 0x341564;
            control_150.primitive = 0x3bd114;
            control_150.label = re::ReString(label_149);
            control_150.value = 0x3e8378;
            control_150.key = 0;
            control_150.color = 0x3ec518;
            control_150.description = "";
            control_150.register_search = (0 != 0);
            pressed_151 = control(a, control_150).pressed;
        }
        value_152 = raw(s, 0x3e8378) & 255u;
        if ((value_152 == 0)) {
        } else {
            literal_153 = page_literal(text_pool, 24, menu_literal_60);
            label_154 = page_label(s, text_pool, -488, menu_literal_421,
                                   {"Snap Distance", "Дистанция капкана", "捕兽夹距离"});
            {
                MenuControlRequest control_155;
                control_155.role = MenuControlRole::slider_integer;
                control_155.site = 0x3415e7;
                control_155.primitive = 0x3c4438;
                control_155.label = re::ReString(label_154);
                control_155.value = 0x3eeb08;
                control_155.minimum = 0;
                control_155.maximum = 500;
                control_155.format = re::ReString(literal_153);
                control_155.flags = ReU32(0);
                pressed_156 = control(a, control_155).pressed;
            }
        }
        label_157 = page_label(s, text_pool, 16, menu_literal_422,
                               {"Samsite", "Зенитная установка", "防空导弹"});
        {
            MenuControlRequest control_158;
            control_158.role = MenuControlRole::checkbox;
            control_158.site = 0x34164a;
            control_158.primitive = 0x3bd114;
            control_158.label = re::ReString(label_157);
            control_158.value = 0x3e87d8;
            control_158.key = 0;
            control_158.color = 0x3ec458;
            control_158.description = "";
            control_158.register_search = (0 != 0);
            pressed_159 = control(a, control_158).pressed;
        }
        value_160 = raw(s, 0x3e87d8) & 255u;
        if ((value_160 == 0)) {
        } else {
            label_161 = page_label(
                s, text_pool, -408, menu_literal_423,
                {"Will only draw samsites while you are in a flying vehicle",
                 "Отображает зенитные установки только когда вы находитесь в летательном аппарате",
                 "仅当你在飞行载具中时才绘制防空导弹"});
            label_162 = page_label(s, text_pool, -552, menu_literal_424,
                                   {"Only while mounted", "Только в транспорте", "仅在载具中"});
            {
                MenuControlRequest control_163;
                control_163.role = MenuControlRole::checkbox;
                control_163.site = 0x3416f4;
                control_163.primitive = 0x3bd114;
                control_163.label = re::ReString(label_162);
                control_163.value = 0x3fc5b8;
                control_163.key = 0;
                control_163.color = 0;
                control_163.description = re::ReString(label_161);
                control_163.register_search = (0 != 0);
                pressed_164 = control(a, control_163).pressed;
            }
            label_165 = page_label(
                s, text_pool, -552, menu_literal_425,
                {"Use Cached Positions", "Использовать кэшированные позиции", "使用缓存位置"});
            {
                MenuControlRequest control_166;
                control_166.role = MenuControlRole::checkbox;
                control_166.site = 0x341751;
                control_166.primitive = 0x3bd114;
                control_166.label = re::ReString(label_165);
                control_166.value = 0x3e8828;
                control_166.key = 0;
                control_166.color = 0;
                control_166.description = "";
                control_166.register_search = (0 != 0);
                pressed_167 = control(a, control_166).pressed;
            }
            label_168 = page_label(s, text_pool, -514, menu_literal_250,
                                   {"HealthBar", "Полоса здоровья", "血条"});
            owned_text_169 = re::ReString(label_168);
            label_170 = page_label(s, text_pool, -568, menu_literal_251,
                                   {"HealthText", "Текст здоровья", "血量文字"});
            owned_text_171 = re::ReString(label_170);
            label_172 = page_label(s, text_pool, 32, menu_literal_407, {"Flags", "Флаги", "标志"});
            owned_text_173 = re::ReString(label_172);
            label_174 = page_label(s, text_pool, -528, menu_literal_409,
                                   {"HideOffline", "Скрыть оффлайн", "隐藏离线"});
            owned_text_175 = re::ReString(label_174);
            label_176 = page_label(s, text_pool, -344, menu_literal_426,
                                   {"HideDefender", "Скрыть защитника", "隐藏防御者"});
            owned_text_177 = re::ReString(label_176);
            label_178 = page_label(s, text_pool, -528, menu_literal_427,
                                   {"Sam Options", "Опции зенитки", "防空选项"});
            {
                MenuControlRequest control_179;
                control_179.role = MenuControlRole::multiselect;
                control_179.site = 0x34197e;
                control_179.primitive = 0x387d18;
                control_179.label = re::ReString(label_178);
                control_179.value = 0x3f0388;
                control_179.choices = {owned_text_169, owned_text_171, owned_text_173,
                                       owned_text_175, owned_text_177};
                pressed_180 = control(a, control_179).pressed;
            }
            literal_181 = page_literal(text_pool, 24, menu_literal_60);
            label_182 = page_label(s, text_pool, -528, menu_literal_428,
                                   {"Sam Distance", "Дистанция зенитки", "防空距离"});
            {
                MenuControlRequest control_183;
                control_183.role = MenuControlRole::slider_integer;
                control_183.site = 0x3419fc;
                control_183.primitive = 0x3c4438;
                control_183.label = re::ReString(label_182);
                control_183.value = 0x3eebf8;
                control_183.minimum = 0;
                control_183.maximum = 1500;
                control_183.format = re::ReString(literal_181);
                control_183.flags = ReU32(0);
                pressed_184 = control(a, control_183).pressed;
            }
        }
        label_185 = page_label(s, text_pool, -514, menu_literal_429, {"Landmines", "Мины", "地雷"});
        {
            MenuControlRequest control_186;
            control_186.role = MenuControlRole::checkbox;
            control_186.site = 0x341a66;
            control_186.primitive = 0x3bd114;
            control_186.label = re::ReString(label_185);
            control_186.value = 0x3e8788;
            control_186.key = 0;
            control_186.color = 0x3ec578;
            control_186.description = "";
            control_186.register_search = (0 != 0);
            pressed_187 = control(a, control_186).pressed;
        }
        value_188 = raw(s, 0x3e8788) & 255u;
        if ((value_188 == 0)) {
        } else {
            literal_189 = page_literal(text_pool, 24, menu_literal_60);
            label_190 = page_label(s, text_pool, -552, menu_literal_430,
                                   {"Landmine Distance", "Дистанция мин", "地雷距离"});
            {
                MenuControlRequest control_191;
                control_191.role = MenuControlRole::slider_integer;
                control_191.site = 0x341aea;
                control_191.primitive = 0x3c4438;
                control_191.label = re::ReString(label_190);
                control_191.value = 0x3eeab8;
                control_191.minimum = 0;
                control_191.maximum = 500;
                control_191.format = re::ReString(literal_189);
                control_191.flags = ReU32(0);
                pressed_192 = control(a, control_191).pressed;
            }
        }
        label_193 = page_label(s, text_pool, -568, menu_literal_431,
                               {"Trap Chams", "Чамы ловушек", "陷阱透视"});
        {
            MenuControlRequest control_194;
            control_194.role = MenuControlRole::checkbox;
            control_194.site = 0x341b47;
            control_194.primitive = 0x3bd114;
            control_194.label = re::ReString(label_193);
            control_194.value = 0x3e8be8;
            control_194.key = 0;
            control_194.color = 0;
            control_194.description = "";
            control_194.register_search = (0 != 0);
            pressed_195 = control(a, control_194).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_341bd8(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x341bd8..0x34296d.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef label_4{};
        [[maybe_unused]] bool pressed_6{};
        [[maybe_unused]] MenuPageTextRef label_7{};
        [[maybe_unused]] bool pressed_9{};
        [[maybe_unused]] MenuPageTextRef label_10{};
        [[maybe_unused]] bool pressed_12{};
        [[maybe_unused]] MenuPageTextRef label_13{};
        [[maybe_unused]] bool pressed_15{};
        [[maybe_unused]] MenuPageTextRef label_16{};
        [[maybe_unused]] bool pressed_18{};
        [[maybe_unused]] MenuPageTextRef label_19{};
        [[maybe_unused]] bool pressed_21{};
        [[maybe_unused]] MenuPageTextRef label_22{};
        [[maybe_unused]] bool pressed_24{};
        [[maybe_unused]] MenuPageTextRef label_25{};
        [[maybe_unused]] bool pressed_27{};
        [[maybe_unused]] MenuPageTextRef label_28{};
        [[maybe_unused]] MenuPageTextRef label_29{};
        [[maybe_unused]] MenuPageTextRef label_30{};
        [[maybe_unused]] bool pressed_32{};
        [[maybe_unused]] MenuPageTextRef label_33{};
        [[maybe_unused]] bool pressed_35{};
        [[maybe_unused]] MenuPageTextRef label_36{};
        [[maybe_unused]] bool pressed_38{};
        [[maybe_unused]] MenuPageTextRef label_39{};
        [[maybe_unused]] bool pressed_41{};
        [[maybe_unused]] MenuPageTextRef label_42{};
        [[maybe_unused]] MenuPageTextRef label_43{};
        [[maybe_unused]] MenuPageTextRef label_44{};
        [[maybe_unused]] bool pressed_46{};
        [[maybe_unused]] ReU32 value_47{};
        [[maybe_unused]] MenuPageTextRef label_48{};
        [[maybe_unused]] bool pressed_50{};
        [[maybe_unused]] MenuPageTextRef label_51{};
        [[maybe_unused]] MenuPageTextRef label_52{};
        [[maybe_unused]] bool pressed_54{};
        [[maybe_unused]] MenuPageTextRef literal_55{};
        [[maybe_unused]] MenuPageTextRef literal_56{};
        [[maybe_unused]] bool pressed_58{};
        [[maybe_unused]] MenuPageTextRef label_59{};
        [[maybe_unused]] MenuPageTextRef literal_60{};
        [[maybe_unused]] re::ReString owned_text_61{};
        [[maybe_unused]] MenuPageTextRef literal_62{};
        [[maybe_unused]] MenuPageTextRef label_63{};
        [[maybe_unused]] bool pressed_65{};
        [[maybe_unused]] MenuPageTextRef literal_66{};
        [[maybe_unused]] MenuPageTextRef label_67{};
        [[maybe_unused]] bool pressed_69{};
        [[maybe_unused]] MenuPageTextRef literal_70{};
        [[maybe_unused]] MenuPageTextRef label_71{};
        [[maybe_unused]] bool pressed_73{};
        [[maybe_unused]] MenuPageTextRef literal_74{};
        [[maybe_unused]] MenuPageTextRef label_75{};
        [[maybe_unused]] bool pressed_77{};
        [[maybe_unused]] MenuPageTextRef literal_78{};
        [[maybe_unused]] MenuPageTextRef label_79{};
        [[maybe_unused]] bool pressed_81{};
        [[maybe_unused]] MenuPageTextRef literal_82{};
        [[maybe_unused]] MenuPageTextRef label_83{};
        [[maybe_unused]] bool pressed_85{};
        [[maybe_unused]] MenuPageTextRef literal_86{};
        [[maybe_unused]] MenuPageTextRef label_87{};
        [[maybe_unused]] bool pressed_89{};
        [[maybe_unused]] MenuPageTextRef literal_90{};
        [[maybe_unused]] MenuPageTextRef label_91{};
        [[maybe_unused]] bool pressed_93{};
        [[maybe_unused]] MenuPageTextRef label_94{};
        [[maybe_unused]] MenuPageTextRef literal_95{};
        [[maybe_unused]] MenuPageTextRef label_96{};
        [[maybe_unused]] bool pressed_98{};
        [[maybe_unused]] MenuPageTextRef label_99{};
        [[maybe_unused]] MenuPageTextRef literal_100{};
        [[maybe_unused]] MenuPageTextRef label_101{};
        [[maybe_unused]] bool pressed_103{};
        label_1 = page_label(s, text_pool, 32, menu_literal_432, {"Radar", "Радар", "雷达"});
        literal_2 = page_literal(text_pool, 24, menu_literal_433);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        label_4 = page_label(s, text_pool, -248, menu_literal_434,
                             {"EnableRadar", "Включить радар", "启用雷达"});
        {
            MenuControlRequest control_5;
            control_5.role = MenuControlRole::checkbox;
            control_5.site = 0x341ced;
            control_5.primitive = 0x3bd114;
            control_5.label = re::ReString(label_4);
            control_5.value = 0x3ea038;
            control_5.key = 0;
            control_5.color = 0;
            control_5.description = "";
            control_5.register_search = (0 != 0);
            pressed_6 = control(a, control_5).pressed;
        }
        label_7 = page_label(s, text_pool, -248, menu_literal_435,
                             {"Draw Scientist", "Отображать учёных", "显示科学家"});
        {
            MenuControlRequest control_8;
            control_8.role = MenuControlRole::checkbox;
            control_8.site = 0x341d47;
            control_8.primitive = 0x3bd114;
            control_8.label = re::ReString(label_7);
            control_8.value = 0x3ea088;
            control_8.key = 0;
            control_8.color = 0;
            control_8.description = "";
            control_8.register_search = (0 != 0);
            pressed_9 = control(a, control_8).pressed;
        }
        label_10 =
            page_label(s, text_pool, -248, menu_literal_436,
                       {"Draw Other Entities", "Отображать другие сущности", "显示其他实体"});
        {
            MenuControlRequest control_11;
            control_11.role = MenuControlRole::checkbox;
            control_11.site = 0x341da1;
            control_11.primitive = 0x3bd114;
            control_11.label = re::ReString(label_10);
            control_11.value = 0x3e83c8;
            control_11.key = 0;
            control_11.color = 0;
            control_11.description = "";
            control_11.register_search = (0 != 0);
            pressed_12 = control(a, control_11).pressed;
        }
        label_13 = page_label(s, text_pool, -248, menu_literal_437,
                              {"Draw Cross", "Отображать крест", "显示十字"});
        {
            MenuControlRequest control_14;
            control_14.role = MenuControlRole::checkbox;
            control_14.site = 0x341dff;
            control_14.primitive = 0x3bd114;
            control_14.label = re::ReString(label_13);
            control_14.value = 0x3ea128;
            control_14.key = 0;
            control_14.color = 0x3eaa18;
            control_14.description = "";
            control_14.register_search = (0 != 0);
            pressed_15 = control(a, control_14).pressed;
        }
        label_16 = page_label(s, text_pool, -248, menu_literal_438,
                              {"Draw Background", "Отображать фон", "显示背景"});
        {
            MenuControlRequest control_17;
            control_17.role = MenuControlRole::checkbox;
            control_17.site = 0x341e5d;
            control_17.primitive = 0x3bd114;
            control_17.label = re::ReString(label_16);
            control_17.value = 0x3ea4e8;
            control_17.key = 0;
            control_17.color = 0x3eaa78;
            control_17.description = "";
            control_17.register_search = (0 != 0);
            pressed_18 = control(a, control_17).pressed;
        }
        label_19 = page_label(s, text_pool, -248, menu_literal_439,
                              {"Draw Circles", "Отображать круги", "显示圆圈"});
        {
            MenuControlRequest control_20;
            control_20.role = MenuControlRole::checkbox;
            control_20.site = 0x341ebb;
            control_20.primitive = 0x3bd114;
            control_20.label = re::ReString(label_19);
            control_20.value = 0x3e9ef8;
            control_20.key = 0;
            control_20.color = 0x3ea9b8;
            control_20.description = "";
            control_20.register_search = (0 != 0);
            pressed_21 = control(a, control_20).pressed;
        }
        label_22 = page_label(s, text_pool, -248, menu_literal_440,
                              {"Draw Text", "Отображать текст", "显示文本"});
        {
            MenuControlRequest control_23;
            control_23.role = MenuControlRole::checkbox;
            control_23.site = 0x341f15;
            control_23.primitive = 0x3bd114;
            control_23.label = re::ReString(label_22);
            control_23.value = 0x3ea3a8;
            control_23.key = 0;
            control_23.color = 0;
            control_23.description = "";
            control_23.register_search = (0 != 0);
            pressed_24 = control(a, control_23).pressed;
        }
        label_25 = page_label(s, text_pool, -248, menu_literal_441,
                              {"Draw Direction", "Отображать направление", "显示方向"});
        {
            MenuControlRequest control_26;
            control_26.role = MenuControlRole::checkbox;
            control_26.site = 0x341f6f;
            control_26.primitive = 0x3bd114;
            control_26.label = re::ReString(label_25);
            control_26.value = 0x3ea358;
            control_26.key = 0;
            control_26.color = 0;
            control_26.description = "";
            control_26.register_search = (0 != 0);
            pressed_27 = control(a, control_26).pressed;
        }
        label_28 = page_label(s, text_pool, -248, menu_literal_442,
                              {"Ingame Radar", "Радар в игре", "游戏内雷达"});
        call(a, 0x3c4e90, {re::ReString(label_28)});
        label_29 = page_label(
            s, text_pool, -184, menu_literal_443,
            {"While pressing G or your ingame map hotkey, the cheat will draw players on the map.",
             "При нажатии G или горячей клавиши карты чит будет отображать игроков на карте.",
             "按下G键或游戏内地图快捷键时，作弊将在地图上绘制玩家。"});
        label_30 = page_label(s, text_pool, -248, menu_literal_444,
                              {"Ingame Map Players", "Игроки на карте", "地图玩家"});
        {
            MenuControlRequest control_31;
            control_31.role = MenuControlRole::checkbox;
            control_31.site = 0x342049;
            control_31.primitive = 0x3bd114;
            control_31.label = re::ReString(label_30);
            control_31.value = 0x3ea218;
            control_31.key = 0;
            control_31.color = 0;
            control_31.description = re::ReString(label_29);
            control_31.register_search = (0 != 0);
            pressed_32 = control(a, control_31).pressed;
        }
        label_33 = page_label(s, text_pool, -248, menu_literal_445,
                              {"Ingame Map Scientist", "Учёные на карте", "地图科学家"});
        {
            MenuControlRequest control_34;
            control_34.role = MenuControlRole::checkbox;
            control_34.site = 0x3420a3;
            control_34.primitive = 0x3bd114;
            control_34.label = re::ReString(label_33);
            control_34.value = 0x3ea0d8;
            control_34.key = 0;
            control_34.color = 0;
            control_34.description = "";
            control_34.register_search = (0 != 0);
            pressed_35 = control(a, control_34).pressed;
        }
        label_36 = page_label(s, text_pool, 16, menu_literal_446, {"Text", "Текст", "文本"});
        {
            MenuControlRequest control_37;
            control_37.role = MenuControlRole::checkbox;
            control_37.site = 0x3420fc;
            control_37.primitive = 0x3bd114;
            control_37.label = re::ReString(label_36);
            control_37.value = 0x3ea448;
            control_37.key = 0;
            control_37.color = 0;
            control_37.description = "";
            control_37.register_search = (0 != 0);
            pressed_38 = control(a, control_37).pressed;
        }
        label_39 =
            page_label(s, text_pool, -248, menu_literal_447, {"Direction", "Направление", "方向"});
        {
            MenuControlRequest control_40;
            control_40.role = MenuControlRole::checkbox;
            control_40.site = 0x342156;
            control_40.primitive = 0x3bd114;
            control_40.label = re::ReString(label_39);
            control_40.value = 0x3ea3f8;
            control_40.key = 0;
            control_40.color = 0;
            control_40.description = "";
            control_40.register_search = (0 != 0);
            pressed_41 = control(a, control_40).pressed;
        }
        label_42 = page_label(s, text_pool, -248, menu_literal_448,
                              {"Ingame Radar Entities", "Сущности радара", "雷达实体"});
        call(a, 0x3c4e90, {re::ReString(label_42)});
        label_43 =
            page_label(s, text_pool, -184, menu_literal_449,
                       {"This will draw enabled entities on the ingame map when you press G, or "
                        "your ingame map hotkey.",
                        "Это отобразит включенные объекты на карте в игре при нажатии G или "
                        "горячей клавиши карты.",
                        "当你按下G键或游戏内地图快捷键时，这将在游戏地图上绘制已启用的实体。"});
        label_44 =
            page_label(s, text_pool, -248, menu_literal_450,
                       {"Ingame Map Entities", "Сущности на карте в игре", "游戏内地图实体"});
        {
            MenuControlRequest control_45;
            control_45.role = MenuControlRole::checkbox;
            control_45.site = 0x342230;
            control_45.primitive = 0x3bd114;
            control_45.label = re::ReString(label_44);
            control_45.value = 0x3ea2b8;
            control_45.key = 0;
            control_45.color = 0;
            control_45.description = re::ReString(label_43);
            control_45.register_search = (0 != 0);
            pressed_46 = control(a, control_45).pressed;
        }
        value_47 = raw(s, 0x3ea2b8) & 255u;
        if ((value_47 == 0)) {
        } else {
            label_48 = page_label(s, text_pool, -248, menu_literal_165,
                                  {"Use Icons", "Использовать иконки", "使用图标"});
            {
                MenuControlRequest control_49;
                control_49.role = MenuControlRole::checkbox;
                control_49.site = 0x342293;
                control_49.primitive = 0x3bd114;
                control_49.label = re::ReString(label_48);
                control_49.value = 0x3ea308;
                control_49.key = 0;
                control_49.color = 0;
                control_49.description = "";
                control_49.register_search = (0 != 0);
                pressed_50 = control(a, control_49).pressed;
            }
        }
        label_51 = page_label(
            s, text_pool, -184, menu_literal_451,
            {"This will draw your saved local stashes on the ingame map when you press G, or your "
             "ingame map hotkey.",
             "Это отобразит ваши сохранённые локальные тайники на игровой карте при нажатии G или "
             "горячей клавиши карты.",
             "当你按下G键或游戏内地图快捷键时，这将在游戏地图上绘制你保存的本地隐藏的藏匿盒。"});
        label_52 =
            page_label(s, text_pool, -248, menu_literal_452,
                       {"Ingame Map LocalStashes", "Локальные тайники на карте", "地图本地藏匿"});
        {
            MenuControlRequest control_53;
            control_53.role = MenuControlRole::checkbox;
            control_53.site = 0x34232a;
            control_53.primitive = 0x3bd114;
            control_53.label = re::ReString(label_52);
            control_53.value = 0x3ea268;
            control_53.key = 0;
            control_53.color = 0;
            control_53.description = re::ReString(label_51);
            control_53.register_search = (0 != 0);
            pressed_54 = control(a, control_53).pressed;
        }
        call(a, 0x398bec, {ReI32(1), ReI32(4278190335)});
        literal_55 = page_literal(text_pool, -184, menu_literal_453);
        literal_56 = page_literal(text_pool, -248, menu_literal_454);
        {
            MenuControlRequest control_57;
            control_57.role = MenuControlRole::checkbox;
            control_57.site = 0x342383;
            control_57.primitive = 0x3bd114;
            control_57.label = re::ReString(literal_56);
            control_57.value = 0x3f3d88;
            control_57.key = 0;
            control_57.color = 0;
            control_57.description = re::ReString(literal_55);
            control_57.register_search = (0 != 0);
            pressed_58 = control(a, control_57).pressed;
        }
        call(a, 0x39890c, {ReI32(1)});
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_59 = page_label(s, text_pool, -248, menu_literal_455,
                              {"Radar Modifications", "Модификации радара", "雷达修改"});
        literal_60 = page_literal(text_pool, 24, menu_literal_20);
        owned_text_61 = re::ReString(literal_60);
        child(s, m, a, owned_text_61, re::ReString(label_59), Vec2{0.0f, -1.0f}, (1 != 0));
        literal_62 = page_literal(text_pool, 24, menu_literal_25);
        label_63 = page_label(s, text_pool, -248, menu_literal_456,
                              {"Radar Size", "Размер радара", "雷达大小"});
        {
            MenuControlRequest control_64;
            control_64.role = MenuControlRole::slider_float;
            control_64.site = 0x34249b;
            control_64.primitive = 0x3c43f4;
            control_64.label = re::ReString(label_63);
            control_64.value = 0x3ed938;
            control_64.minimum_float = 50.0f;
            control_64.maximum_float = 300.0f;
            control_64.format = re::ReString(literal_62);
            control_64.flags = ReU32(0);
            pressed_65 = control(a, control_64).pressed;
        }
        literal_66 = page_literal(text_pool, 24, menu_literal_25);
        label_67 = page_label(s, text_pool, -248, menu_literal_457,
                              {"Players Length", "Длина игрока", "玩家长度"});
        {
            MenuControlRequest control_68;
            control_68.role = MenuControlRole::slider_float;
            control_68.site = 0x34251d;
            control_68.primitive = 0x3c43f4;
            control_68.label = re::ReString(label_67);
            control_68.value = 0x3edb68;
            control_68.minimum_float = 15.0f;
            control_68.maximum_float = 200.0f;
            control_68.format = re::ReString(literal_66);
            control_68.flags = ReU32(0);
            pressed_69 = control(a, control_68).pressed;
        }
        literal_70 = page_literal(text_pool, 24, menu_literal_25);
        label_71 = page_label(s, text_pool, -248, menu_literal_458,
                              {"NPC Length", "Длина NPC", "NPC长度"});
        {
            MenuControlRequest control_72;
            control_72.role = MenuControlRole::slider_float;
            control_72.site = 0x34258f;
            control_72.primitive = 0x3c43f4;
            control_72.label = re::ReString(label_71);
            control_72.value = 0x3edb18;
            control_72.minimum_float = 15.0f;
            control_72.maximum_float = 200.0f;
            control_72.format = re::ReString(literal_70);
            control_72.flags = ReU32(0);
            pressed_73 = control(a, control_72).pressed;
        }
        literal_74 = page_literal(text_pool, 24, menu_literal_25);
        label_75 = page_label(s, text_pool, -248, menu_literal_459,
                              {"Player Thickness", "Толщина игрока", "玩家粗细"});
        {
            MenuControlRequest control_76;
            control_76.role = MenuControlRole::slider_float;
            control_76.site = 0x342609;
            control_76.primitive = 0x3c43f4;
            control_76.label = re::ReString(label_75);
            control_76.value = 0x3edc08;
            control_76.minimum_float = 0.0f;
            control_76.maximum_float = 10.0f;
            control_76.format = re::ReString(literal_74);
            control_76.flags = ReU32(0);
            pressed_77 = control(a, control_76).pressed;
        }
        literal_78 = page_literal(text_pool, 24, menu_literal_25);
        label_79 = page_label(s, text_pool, -248, menu_literal_460,
                              {"NPC Thickness", "Толщина NPC", "NPC粗细"});
        {
            MenuControlRequest control_80;
            control_80.role = MenuControlRole::slider_float;
            control_80.site = 0x34267b;
            control_80.primitive = 0x3c43f4;
            control_80.label = re::ReString(label_79);
            control_80.value = 0x3edbb8;
            control_80.minimum_float = 0.0f;
            control_80.maximum_float = 10.0f;
            control_80.format = re::ReString(literal_78);
            control_80.flags = ReU32(0);
            pressed_81 = control(a, control_80).pressed;
        }
        literal_82 = page_literal(text_pool, 24, menu_literal_25);
        label_83 = page_label(s, text_pool, -248, menu_literal_461,
                              {"Player Circle Size", "Размер круга игрока", "玩家圆圈大小"});
        {
            MenuControlRequest control_84;
            control_84.role = MenuControlRole::slider_float;
            control_84.site = 0x3426ed;
            control_84.primitive = 0x3c43f4;
            control_84.label = re::ReString(label_83);
            control_84.value = 0x3ed9d8;
            control_84.minimum_float = 0.0f;
            control_84.maximum_float = 15.0f;
            control_84.format = re::ReString(literal_82);
            control_84.flags = ReU32(0);
            pressed_85 = control(a, control_84).pressed;
        }
        literal_86 = page_literal(text_pool, 24, menu_literal_25);
        label_87 = page_label(s, text_pool, -248, menu_literal_462,
                              {"NPC Circle Size", "Размер круга NPC", "NPC圆圈大小"});
        {
            MenuControlRequest control_88;
            control_88.role = MenuControlRole::slider_float;
            control_88.site = 0x34275f;
            control_88.primitive = 0x3c43f4;
            control_88.label = re::ReString(label_87);
            control_88.value = 0x3ed988;
            control_88.minimum_float = 0.0f;
            control_88.maximum_float = 15.0f;
            control_88.format = re::ReString(literal_86);
            control_88.flags = ReU32(0);
            pressed_89 = control(a, control_88).pressed;
        }
        literal_90 = page_literal(text_pool, 24, menu_literal_25);
        label_91 = page_label(s, text_pool, -248, menu_literal_463,
                              {"Entity Circle Size", "Размер круга сущности", "实体圆圈大小"});
        {
            MenuControlRequest control_92;
            control_92.role = MenuControlRole::slider_float;
            control_92.site = 0x3427d1;
            control_92.primitive = 0x3c43f4;
            control_92.label = re::ReString(label_91);
            control_92.value = 0x3eda28;
            control_92.minimum_float = 0.0f;
            control_92.maximum_float = 15.0f;
            control_92.format = re::ReString(literal_90);
            control_92.flags = ReU32(0);
            pressed_93 = control(a, control_92).pressed;
        }
        label_94 = page_label(s, text_pool, -248, menu_literal_464,
                              {"Ingame Radar Sliders", "Ползунки радара", "雷达滑块"});
        call(a, 0x3c4e90, {re::ReString(label_94)});
        literal_95 = page_literal(text_pool, 24, menu_literal_25);
        label_96 = page_label(s, text_pool, -248, menu_literal_465,
                              {"Map Circle Size", "Размер круга на карте", "地图圆圈大小"});
        {
            MenuControlRequest control_97;
            control_97.role = MenuControlRole::slider_float;
            control_97.site = 0x34288e;
            control_97.primitive = 0x3c43f4;
            control_97.label = re::ReString(label_96);
            control_97.value = 0x3eda78;
            control_97.minimum_float = 7.0f;
            control_97.maximum_float = 15.0f;
            control_97.format = re::ReString(literal_95);
            control_97.flags = ReU32(0);
            pressed_98 = control(a, control_97).pressed;
        }
        label_99 = page_label(s, text_pool, -248, menu_literal_466,
                              {"Ingame Radar Entity Sliders", "Ползунки сущностей", "实体滑块"});
        call(a, 0x3c4e90, {re::ReString(label_99)});
        literal_100 = page_literal(text_pool, 24, menu_literal_25);
        label_101 = page_label(
            s, text_pool, -248, menu_literal_467,
            {"Ent Map Circle Size", "Размер круга сущности на карте", "地图实体圆圈大小"});
        {
            MenuControlRequest control_102;
            control_102.role = MenuControlRole::slider_float;
            control_102.site = 0x342943;
            control_102.primitive = 0x3c43f4;
            control_102.label = re::ReString(label_101);
            control_102.value = 0x3edac8;
            control_102.minimum_float = 7.0f;
            control_102.maximum_float = 15.0f;
            control_102.format = re::ReString(literal_100);
            control_102.flags = ReU32(0);
            pressed_103 = control(a, control_102).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_3429f4(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x3429f4..0x3452c4.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef label_4{};
        [[maybe_unused]] MenuPageTextRef label_5{};
        [[maybe_unused]] bool pressed_7{};
        [[maybe_unused]] ReU32 value_8{};
        [[maybe_unused]] MenuPageTextRef literal_9{};
        [[maybe_unused]] MenuPageTextRef label_10{};
        [[maybe_unused]] bool pressed_12{};
        [[maybe_unused]] MenuPageTextRef label_13{};
        [[maybe_unused]] MenuPageTextRef label_14{};
        [[maybe_unused]] bool pressed_16{};
        [[maybe_unused]] ReU32 value_17{};
        [[maybe_unused]] MenuPageTextRef label_18{};
        [[maybe_unused]] MenuPageTextRef label_19{};
        [[maybe_unused]] bool pressed_21{};
        [[maybe_unused]] MenuPageTextRef label_22{};
        [[maybe_unused]] MenuPageTextRef label_23{};
        [[maybe_unused]] bool pressed_25{};
        [[maybe_unused]] MenuPageTextRef label_26{};
        [[maybe_unused]] MenuPageTextRef label_27{};
        [[maybe_unused]] bool pressed_29{};
        [[maybe_unused]] ReU32 value_30{};
        [[maybe_unused]] MenuPageTextRef label_31{};
        [[maybe_unused]] MenuPageTextRef label_32{};
        [[maybe_unused]] bool pressed_34{};
        [[maybe_unused]] MenuPageTextRef label_35{};
        [[maybe_unused]] MenuPageTextRef label_36{};
        [[maybe_unused]] bool pressed_38{};
        [[maybe_unused]] MenuPageTextRef label_39{};
        [[maybe_unused]] MenuPageTextRef label_40{};
        [[maybe_unused]] bool pressed_42{};
        [[maybe_unused]] ReU32 value_43{};
        [[maybe_unused]] MenuPageTextRef label_44{};
        [[maybe_unused]] re::ReString owned_text_45{};
        [[maybe_unused]] MenuPageTextRef label_46{};
        [[maybe_unused]] re::ReString owned_text_47{};
        [[maybe_unused]] MenuPageTextRef label_48{};
        [[maybe_unused]] re::ReString owned_text_49{};
        [[maybe_unused]] MenuPageTextRef label_50{};
        [[maybe_unused]] re::ReString owned_text_51{};
        [[maybe_unused]] MenuPageTextRef label_52{};
        [[maybe_unused]] re::ReString owned_text_53{};
        [[maybe_unused]] MenuPageTextRef label_54{};
        [[maybe_unused]] re::ReString owned_text_55{};
        [[maybe_unused]] MenuPageTextRef label_56{};
        [[maybe_unused]] re::ReString owned_text_57{};
        [[maybe_unused]] MenuPageTextRef label_58{};
        [[maybe_unused]] re::ReString owned_text_59{};
        [[maybe_unused]] MenuPageTextRef label_60{};
        [[maybe_unused]] re::ReString owned_text_61{};
        [[maybe_unused]] MenuPageTextRef label_62{};
        [[maybe_unused]] re::ReString owned_text_63{};
        [[maybe_unused]] MenuPageTextRef label_64{};
        [[maybe_unused]] re::ReString owned_text_65{};
        [[maybe_unused]] MenuPageTextRef label_66{};
        [[maybe_unused]] re::ReString owned_text_67{};
        [[maybe_unused]] MenuPageTextRef label_68{};
        [[maybe_unused]] re::ReString owned_text_69{};
        [[maybe_unused]] MenuPageTextRef label_70{};
        [[maybe_unused]] bool pressed_72{};
        [[maybe_unused]] MenuPageTextRef label_73{};
        [[maybe_unused]] MenuPageTextRef label_74{};
        [[maybe_unused]] bool pressed_76{};
        [[maybe_unused]] ReU32 value_77{};
        [[maybe_unused]] MenuPageTextRef label_78{};
        [[maybe_unused]] MenuPageTextRef label_79{};
        [[maybe_unused]] bool pressed_81{};
        [[maybe_unused]] MenuPageTextRef label_82{};
        [[maybe_unused]] re::ReString owned_text_83{};
        [[maybe_unused]] MenuPageTextRef label_84{};
        [[maybe_unused]] re::ReString owned_text_85{};
        [[maybe_unused]] MenuPageTextRef label_86{};
        [[maybe_unused]] re::ReString owned_text_87{};
        [[maybe_unused]] MenuPageTextRef label_88{};
        [[maybe_unused]] re::ReString owned_text_89{};
        [[maybe_unused]] MenuPageTextRef label_90{};
        [[maybe_unused]] bool pressed_92{};
        [[maybe_unused]] MenuPageTextRef label_93{};
        [[maybe_unused]] re::ReString owned_text_94{};
        [[maybe_unused]] MenuPageTextRef label_95{};
        [[maybe_unused]] re::ReString owned_text_96{};
        [[maybe_unused]] MenuPageTextRef label_97{};
        [[maybe_unused]] re::ReString owned_text_98{};
        [[maybe_unused]] MenuPageTextRef label_99{};
        [[maybe_unused]] re::ReString owned_text_100{};
        [[maybe_unused]] MenuPageTextRef label_101{};
        [[maybe_unused]] re::ReString owned_text_102{};
        [[maybe_unused]] MenuPageTextRef label_103{};
        [[maybe_unused]] bool pressed_105{};
        [[maybe_unused]] MenuPageTextRef label_106{};
        [[maybe_unused]] MenuPageTextRef label_107{};
        [[maybe_unused]] bool pressed_109{};
        [[maybe_unused]] MenuPageTextRef label_110{};
        [[maybe_unused]] MenuPageTextRef label_111{};
        [[maybe_unused]] bool pressed_113{};
        [[maybe_unused]] MenuPageTextRef label_114{};
        [[maybe_unused]] MenuPageTextRef label_115{};
        [[maybe_unused]] bool pressed_117{};
        [[maybe_unused]] MenuPageTextRef label_118{};
        [[maybe_unused]] MenuPageTextRef label_119{};
        [[maybe_unused]] bool pressed_121{};
        [[maybe_unused]] ReU32 value_122{};
        [[maybe_unused]] MenuPageTextRef label_123{};
        [[maybe_unused]] MenuPageTextRef label_124{};
        [[maybe_unused]] bool pressed_126{};
        [[maybe_unused]] MenuPageTextRef label_127{};
        [[maybe_unused]] re::ReString owned_text_128{};
        [[maybe_unused]] MenuPageTextRef label_129{};
        [[maybe_unused]] re::ReString owned_text_130{};
        [[maybe_unused]] MenuPageTextRef label_131{};
        [[maybe_unused]] re::ReString owned_text_132{};
        [[maybe_unused]] MenuPageTextRef label_133{};
        [[maybe_unused]] re::ReString owned_text_134{};
        [[maybe_unused]] MenuPageTextRef label_135{};
        [[maybe_unused]] re::ReString owned_text_136{};
        [[maybe_unused]] MenuPageTextRef label_137{};
        [[maybe_unused]] re::ReString owned_text_138{};
        [[maybe_unused]] MenuPageTextRef label_139{};
        [[maybe_unused]] re::ReString owned_text_140{};
        [[maybe_unused]] MenuPageTextRef label_141{};
        [[maybe_unused]] re::ReString owned_text_142{};
        [[maybe_unused]] MenuPageTextRef label_143{};
        [[maybe_unused]] re::ReString owned_text_144{};
        [[maybe_unused]] MenuPageTextRef label_145{};
        [[maybe_unused]] re::ReString owned_text_146{};
        [[maybe_unused]] MenuPageTextRef label_147{};
        [[maybe_unused]] re::ReString owned_text_148{};
        [[maybe_unused]] MenuPageTextRef label_149{};
        [[maybe_unused]] re::ReString owned_text_150{};
        [[maybe_unused]] MenuPageTextRef label_151{};
        [[maybe_unused]] re::ReString owned_text_152{};
        [[maybe_unused]] MenuPageTextRef label_153{};
        [[maybe_unused]] re::ReString owned_text_154{};
        [[maybe_unused]] MenuPageTextRef label_155{};
        [[maybe_unused]] re::ReString owned_text_156{};
        [[maybe_unused]] MenuPageTextRef label_157{};
        [[maybe_unused]] re::ReString owned_text_158{};
        [[maybe_unused]] MenuPageTextRef label_159{};
        [[maybe_unused]] re::ReString owned_text_160{};
        [[maybe_unused]] MenuPageTextRef label_161{};
        [[maybe_unused]] re::ReString owned_text_162{};
        [[maybe_unused]] MenuPageTextRef label_163{};
        [[maybe_unused]] bool pressed_165{};
        [[maybe_unused]] MenuPageTextRef label_166{};
        [[maybe_unused]] MenuPageTextRef literal_167{};
        [[maybe_unused]] re::ReString owned_text_168{};
        [[maybe_unused]] MenuPageTextRef label_169{};
        [[maybe_unused]] MenuPageTextRef label_170{};
        [[maybe_unused]] bool pressed_172{};
        [[maybe_unused]] ReU32 value_173{};
        [[maybe_unused]] MenuPageTextRef label_174{};
        [[maybe_unused]] MenuPageTextRef label_175{};
        [[maybe_unused]] bool pressed_177{};
        [[maybe_unused]] MenuPageTextRef label_178{};
        [[maybe_unused]] re::ReString owned_text_179{};
        [[maybe_unused]] MenuPageTextRef label_180{};
        [[maybe_unused]] re::ReString owned_text_181{};
        [[maybe_unused]] MenuPageTextRef label_182{};
        [[maybe_unused]] re::ReString owned_text_183{};
        [[maybe_unused]] MenuPageTextRef label_184{};
        [[maybe_unused]] re::ReString owned_text_185{};
        [[maybe_unused]] MenuPageTextRef label_186{};
        [[maybe_unused]] re::ReString owned_text_187{};
        [[maybe_unused]] MenuPageTextRef label_188{};
        [[maybe_unused]] re::ReString owned_text_189{};
        [[maybe_unused]] MenuPageTextRef label_190{};
        [[maybe_unused]] re::ReString owned_text_191{};
        [[maybe_unused]] MenuPageTextRef label_192{};
        [[maybe_unused]] re::ReString owned_text_193{};
        [[maybe_unused]] MenuPageTextRef label_194{};
        [[maybe_unused]] bool pressed_196{};
        [[maybe_unused]] MenuPageTextRef label_197{};
        [[maybe_unused]] MenuPageTextRef label_198{};
        [[maybe_unused]] bool pressed_200{};
        [[maybe_unused]] ReU32 value_201{};
        [[maybe_unused]] re::ReString copied_text_202{};
        [[maybe_unused]] Vec2 available_203{};
        [[maybe_unused]] float value_204{};
        [[maybe_unused]] Address value_205{};
        [[maybe_unused]] MenuPageTextRef label_206{};
        [[maybe_unused]] MenuPageTextRef label_207{};
        [[maybe_unused]] bool value_208{};
        [[maybe_unused]] bool value_209{};
        [[maybe_unused]] MenuPageTextRef label_210{};
        [[maybe_unused]] MenuPageTextRef label_211{};
        [[maybe_unused]] bool pressed_213{};
        [[maybe_unused]] MenuPageTextRef label_214{};
        [[maybe_unused]] MenuPageTextRef label_215{};
        [[maybe_unused]] bool pressed_217{};
        [[maybe_unused]] ReU32 value_218{};
        [[maybe_unused]] re::ReString copied_text_219{};
        [[maybe_unused]] Vec2 available_220{};
        [[maybe_unused]] float value_221{};
        [[maybe_unused]] Address value_222{};
        [[maybe_unused]] MenuPageTextRef label_223{};
        [[maybe_unused]] MenuPageTextRef label_224{};
        [[maybe_unused]] bool value_225{};
        [[maybe_unused]] bool value_226{};
        [[maybe_unused]] MenuPageTextRef label_227{};
        [[maybe_unused]] MenuPageTextRef label_228{};
        [[maybe_unused]] bool pressed_230{};
        [[maybe_unused]] MenuPageTextRef label_231{};
        [[maybe_unused]] MenuPageTextRef label_232{};
        [[maybe_unused]] bool pressed_234{};
        [[maybe_unused]] MenuPageTextRef label_235{};
        [[maybe_unused]] MenuPageTextRef label_236{};
        [[maybe_unused]] bool pressed_238{};
        [[maybe_unused]] MenuPageTextRef label_239{};
        [[maybe_unused]] MenuPageTextRef label_240{};
        [[maybe_unused]] bool pressed_242{};
        [[maybe_unused]] MenuPageTextRef label_243{};
        [[maybe_unused]] MenuPageTextRef label_244{};
        [[maybe_unused]] bool pressed_246{};
        [[maybe_unused]] MenuPageTextRef label_247{};
        [[maybe_unused]] MenuPageTextRef label_248{};
        [[maybe_unused]] bool pressed_250{};
        [[maybe_unused]] MenuPageTextRef label_251{};
        [[maybe_unused]] MenuPageTextRef label_252{};
        [[maybe_unused]] bool pressed_254{};
        [[maybe_unused]] MenuPageTextRef label_255{};
        [[maybe_unused]] MenuPageTextRef label_256{};
        [[maybe_unused]] bool pressed_258{};
        label_1 = page_label(s, text_pool, -834, menu_literal_468,
                             {"Automations", "Автоматизация", "自动化"});
        literal_2 = page_literal(text_pool, 24, menu_literal_469);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        label_4 = page_label(s, text_pool, -920, menu_literal_470,
                             {"This will automatically reel the fish in for you",
                              "Автоматически подсекает рыбу за вас", "自动为你收鱼"});
        label_5 = page_label(s, text_pool, -855, menu_literal_471,
                             {"Auto Reel Fish", "Авто подсечка рыбы", "自动收鱼"});
        {
            MenuControlRequest control_6;
            control_6.role = MenuControlRole::checkbox;
            control_6.site = 0x342b52;
            control_6.primitive = 0x3bd114;
            control_6.label = re::ReString(label_5);
            control_6.value = 0x3e4108;
            control_6.key = 0;
            control_6.color = 0;
            control_6.description = re::ReString(label_4);
            control_6.register_search = (0 != 0);
            pressed_7 = control(a, control_6).pressed;
        }
        value_8 = raw(s, 0x3e4108) & 255u;
        if ((value_8 == 0)) {
        } else {
            literal_9 = page_literal(text_pool, 24, menu_literal_29);
            label_10 = page_label(s, text_pool, -984, menu_literal_472,
                                  {"Max Strain", "Макс. нагрузка", "最大张力"});
            {
                MenuControlRequest control_11;
                control_11.role = MenuControlRole::slider_float;
                control_11.site = 0x342be6;
                control_11.primitive = 0x3c43f4;
                control_11.label = re::ReString(label_10);
                control_11.value = 0x3fcaa8;
                control_11.minimum_float = 0.5f;
                control_11.maximum_float = 0.949999988079071f;
                control_11.format = re::ReString(literal_9);
                control_11.flags = ReU32(0);
                pressed_12 = control(a, control_11).pressed;
            }
            label_13 = page_label(s, text_pool, -920, menu_literal_473,
                                  {"This will automatically cast your rod",
                                   "Автоматически забрасывает вашу удочку", "自动抛出你的鱼竿"});
            label_14 = page_label(s, text_pool, -855, menu_literal_474,
                                  {"Auto Cast Rod", "Авто заброс удочки", "自动抛竿"});
            {
                MenuControlRequest control_15;
                control_15.role = MenuControlRole::checkbox;
                control_15.site = 0x342c86;
                control_15.primitive = 0x3bd114;
                control_15.label = re::ReString(label_14);
                control_15.value = 0x3fc6f8;
                control_15.key = 0;
                control_15.color = 0;
                control_15.description = re::ReString(label_13);
                control_15.register_search = (0 != 0);
                pressed_16 = control(a, control_15).pressed;
            }
            value_17 = raw(s, 0x3fc6f8) & 255u;
            if ((value_17 == 0)) {
            } else {
                label_18 =
                    page_label(s, text_pool, -696, menu_literal_475,
                               {"This will allow you to fish slower, at the cost of looking legit",
                                "Позволяет рыбачить медленнее, но выглядеть легитимно",
                                "让你钓鱼更慢，但看起来更合法"});
                label_19 = page_label(s, text_pool, -984, menu_literal_55,
                                      {"Legit Mode", "Легитимный режим", "合法模式"});
                {
                    MenuControlRequest control_20;
                    control_20.role = MenuControlRole::checkbox;
                    control_20.site = 0x342d34;
                    control_20.primitive = 0x3bd114;
                    control_20.label = re::ReString(label_19);
                    control_20.value = 0x3fc748;
                    control_20.key = 0;
                    control_20.color = 0;
                    control_20.description = re::ReString(label_18);
                    control_20.register_search = (0 != 0);
                    pressed_21 = control(a, control_20).pressed;
                }
            }
            label_22 = page_label(s, text_pool, -920, menu_literal_476,
                                  {"This will draw how close your line is to snapping",
                                   "Показывает, насколько близка ваша леска к обрыву",
                                   "显示你的鱼线距离断裂有多近"});
            label_23 = page_label(s, text_pool, -760, menu_literal_477,
                                  {"Visualize Tension", "Визуализация напряжения", "张力可视化"});
            {
                MenuControlRequest control_24;
                control_24.role = MenuControlRole::checkbox;
                control_24.site = 0x342dd4;
                control_24.primitive = 0x3bd114;
                control_24.label = re::ReString(label_23);
                control_24.value = 0x3e9c78;
                control_24.key = 0;
                control_24.color = 0;
                control_24.description = re::ReString(label_22);
                control_24.register_search = (0 != 0);
                pressed_25 = control(a, control_24).pressed;
            }
            label_26 = page_label(
                s, text_pool, -696, menu_literal_478,
                {"This will automatically deposit fish in the box of your choice. To add a new box "
                 "to the list, press F4 while looking at it. The first box you select will be your "
                 "Bait/Pole box. The next ones will be deposit boxes",
                 "Автоматически складывает рыбу в выбранный ящик. Чтобы добавить новый ящик в "
                 "список, нажмите F4, глядя на него. Первый выбранный ящик станет ящиком для "
                 "приманки/удочек. Следующие будут ящиками для хранения",
                 "自动将鱼存放到你选择的箱子中。要将新箱子添加到列表中，请在看着它时按F4。你选择的"
                 "第一个箱子将成为你的鱼饵/鱼竿箱。接下来的将是存放箱"});
            label_27 = page_label(s, text_pool, -760, menu_literal_479,
                                  {"Auto Deposit Fish", "Авто складывание рыбы", "自动存放鱼"});
            {
                MenuControlRequest control_28;
                control_28.role = MenuControlRole::checkbox;
                control_28.site = 0x342e74;
                control_28.primitive = 0x3bd114;
                control_28.label = re::ReString(label_27);
                control_28.value = 0x3e4158;
                control_28.key = 0;
                control_28.color = 0;
                control_28.description = re::ReString(label_26);
                control_28.register_search = (0 != 0);
                pressed_29 = control(a, control_28).pressed;
            }
            value_30 = raw(s, 0x3e4158) & 255u;
            if ((value_30 == 0)) {
            } else {
                label_31 = page_label(s, text_pool, -696, menu_literal_480,
                                      {"This will automatically deposit broken rods into your box",
                                       "Автоматически складывает сломанные удочки в ваш ящик",
                                       "自动将断掉的鱼竿存放到你的箱子中"});
                label_32 = page_label(s, text_pool, -920, menu_literal_481,
                                      {"Auto Deposit Broke Rods",
                                       "Авто складывание сломанных удочек", "自动存放断竿"});
                {
                    MenuControlRequest control_33;
                    control_33.role = MenuControlRole::checkbox;
                    control_33.site = 0x342f21;
                    control_33.primitive = 0x3bd114;
                    control_33.label = re::ReString(label_32);
                    control_33.value = 0x3e9c28;
                    control_33.key = 0;
                    control_33.color = 0;
                    control_33.description = re::ReString(label_31);
                    control_33.register_search = (0 != 0);
                    pressed_34 = control(a, control_33).pressed;
                }
                label_35 =
                    page_label(s, text_pool, -696, menu_literal_482,
                               {"This will automatically loot a rod from the box when you need it",
                                "Автоматически берёт удочку из ящика, когда она вам нужна",
                                "当你需要时自动从箱子中拾取鱼竿"});
                label_36 = page_label(s, text_pool, -855, menu_literal_483,
                                      {"Auto Loot Rods", "Авто подбор удочек", "自动拾取鱼竿"});
                {
                    MenuControlRequest control_37;
                    control_37.role = MenuControlRole::checkbox;
                    control_37.site = 0x342fc1;
                    control_37.primitive = 0x3bd114;
                    control_37.label = re::ReString(label_36);
                    control_37.value = 0x3e9bd8;
                    control_37.key = 0;
                    control_37.color = 0;
                    control_37.description = re::ReString(label_35);
                    control_37.register_search = (0 != 0);
                    pressed_38 = control(a, control_37).pressed;
                }
            }
            label_39 =
                page_label(s, text_pool, -696, menu_literal_484,
                           {"This will automatically fill your rod with bait when you need it",
                            "Автоматически заполняет вашу удочку приманкой, когда это необходимо",
                            "当你需要时自动为你的鱼竿装填鱼饵"});
            label_40 =
                page_label(s, text_pool, -816, menu_literal_485,
                           {"Auto Reload Bait", "Авто перезарядка приманки", "自动重新装填鱼饵"});
            {
                MenuControlRequest control_41;
                control_41.role = MenuControlRole::checkbox;
                control_41.site = 0x343061;
                control_41.primitive = 0x3bd114;
                control_41.label = re::ReString(label_40);
                control_41.value = 0x3e41a8;
                control_41.key = 0;
                control_41.color = 0;
                control_41.description = re::ReString(label_39);
                control_41.register_search = (0 != 0);
                pressed_42 = control(a, control_41).pressed;
            }
            value_43 = raw(s, 0x3e41a8) & 255u;
            if ((value_43 == 0)) {
            } else {
                label_44 = page_label(s, text_pool, -834, menu_literal_486,
                                      {"Small Trout", "Маленькая форель", "小鳟鱼"});
                owned_text_45 = re::ReString(label_44);
                label_46 = page_label(s, text_pool, -936, menu_literal_487,
                                      {"Yellow Perch", "Жёлтый окунь", "黄鲈鱼"});
                owned_text_47 = re::ReString(label_46);
                label_48 =
                    page_label(s, text_pool, 32, menu_literal_488, {"Grub", "Личинка", "蛆虫"});
                owned_text_49 = re::ReString(label_48);
                label_50 =
                    page_label(s, text_pool, -973, menu_literal_489, {"Worm", "Червь", "蚯蚓"});
                owned_text_51 = re::ReString(label_50);
                label_52 = page_label(s, text_pool, -984, menu_literal_490,
                                      {"Snake Meat", "Мясо змеи", "蛇肉"});
                owned_text_53 = re::ReString(label_52);
                label_54 = page_label(s, text_pool, -864, menu_literal_491,
                                      {"Raw Pork", "Сырая свинина", "生猪肉"});
                owned_text_55 = re::ReString(label_54);
                label_56 = page_label(s, text_pool, -792, menu_literal_492,
                                      {"Raw Horse Meat", "Сырая конина", "生马肉"});
                owned_text_57 = re::ReString(label_56);
                label_58 = page_label(s, text_pool, -855, menu_literal_493,
                                      {"Raw Wolf Meat", "Сырое волчье мясо", "生狼肉"});
                owned_text_59 = re::ReString(label_58);
                label_60 = page_label(s, text_pool, -92, menu_literal_494,
                                      {"Raw Deer Meat", "Сырое оленье мясо", "生鹿肉"});
                owned_text_61 = re::ReString(label_60);
                label_62 = page_label(s, text_pool, -729, menu_literal_495,
                                      {"Raw Croc Meat", "Сырое крокодилье мясо", "生鳄鱼肉"});
                owned_text_63 = re::ReString(label_62);
                label_64 = page_label(s, text_pool, -760, menu_literal_496,
                                      {"Raw Chicken Meat", "Сырое куриное мясо", "生鸡肉"});
                owned_text_65 = re::ReString(label_64);
                label_66 = page_label(s, text_pool, -715, menu_literal_497,
                                      {"Big Cat Meat", "Мясо крупной кошки", "大型猫科动物肉"});
                owned_text_67 = re::ReString(label_66);
                label_68 = page_label(s, text_pool, -106, menu_literal_498,
                                      {"Raw Bear Meat", "Сырое медвежье мясо", "生熊肉"});
                owned_text_69 = re::ReString(label_68);
                label_70 = page_label(s, text_pool, -936, menu_literal_499,
                                      {"Bait Options", "Опции приманки", "鱼饵选项"});
                {
                    MenuControlRequest control_71;
                    control_71.role = MenuControlRole::multiselect;
                    control_71.site = 0x343525;
                    control_71.primitive = 0x387d18;
                    control_71.label = re::ReString(label_70);
                    control_71.value = 0x3e5668;
                    control_71.choices = {
                        owned_text_45, owned_text_47, owned_text_49, owned_text_51, owned_text_53,
                        owned_text_55, owned_text_57, owned_text_59, owned_text_61, owned_text_63,
                        owned_text_65, owned_text_67, owned_text_69};
                    pressed_72 = control(a, control_71).pressed;
                }
            }
        }
        label_73 = page_label(s, text_pool, -696, menu_literal_500,
                              {"Automatically upgrades the building you are looking at",
                               "Автоматически улучшает строение, на которое вы смотрите",
                               "自动升级你正在查看的建筑"});
        label_74 = page_label(s, text_pool, -936, menu_literal_501,
                              {"Auto Upgrade", "Авто улучшение", "自动升级"});
        {
            MenuControlRequest control_75;
            control_75.role = MenuControlRole::checkbox;
            control_75.site = 0x3435d3;
            control_75.primitive = 0x3bd114;
            control_75.label = re::ReString(label_74);
            control_75.value = 0x3f38d8;
            control_75.key = 0x3e5468;
            control_75.color = 0;
            control_75.description = re::ReString(label_73);
            control_75.register_search = (0 != 0);
            pressed_76 = control(a, control_75).pressed;
        }
        value_77 = raw(s, 0x3f38d8) & 255u;
        if ((value_77 == 0)) {
        } else {
            label_78 = page_label(s, text_pool, -696, menu_literal_502,
                                  {"This will make the feature only work when a hammer is out",
                                   "Функция будет работать только когда молоток доставлен",
                                   "只有拿出锤子时此功能才会生效"});
            label_79 = page_label(s, text_pool, -792, menu_literal_503,
                                  {"Require Hammer", "Требовать молоток", "需要锤子"});
            {
                MenuControlRequest control_80;
                control_80.role = MenuControlRole::checkbox;
                control_80.site = 0x34368e;
                control_80.primitive = 0x3bd114;
                control_80.label = re::ReString(label_79);
                control_80.value = 0x3e5138;
                control_80.key = 0;
                control_80.color = 0;
                control_80.description = re::ReString(label_78);
                control_80.register_search = (0 != 0);
                pressed_81 = control(a, control_80).pressed;
            }
            label_82 = page_label(s, text_pool, 32, menu_literal_504, {"Twig", "Ветка", "茅草"});
            owned_text_83 = re::ReString(label_82);
            label_84 = page_label(s, text_pool, -973, menu_literal_94, {"Wood", "Дерево", "木头"});
            owned_text_85 = re::ReString(label_84);
            label_86 =
                page_label(s, text_pool, -968, menu_literal_197, {"Stone", "Камень", "石头"});
            owned_text_87 = re::ReString(label_86);
            label_88 = page_label(s, text_pool, -840, menu_literal_93, {"Metal", "Металл", "金属"});
            owned_text_89 = re::ReString(label_88);
            label_90 = page_label(s, text_pool, -984, menu_literal_505,
                                  {"From Grade", "С уровня", "从等级"});
            {
                MenuControlRequest control_91;
                control_91.role = MenuControlRole::combo_strings;
                control_91.site = 0x343852;
                control_91.primitive = 0x3bf008;
                control_91.label = re::ReString(label_90);
                control_91.value = 0x3e53b8;
                control_91.choices = {owned_text_83, owned_text_85, owned_text_87, owned_text_89};
                pressed_92 = control(a, control_91).pressed;
            }
            label_93 = page_label(s, text_pool, -973, menu_literal_504, {"Twig", "Ветка", "茅草"});
            owned_text_94 = re::ReString(label_93);
            label_95 = page_label(s, text_pool, -968, menu_literal_94, {"Wood", "Дерево", "木头"});
            owned_text_96 = re::ReString(label_95);
            label_97 =
                page_label(s, text_pool, -840, menu_literal_197, {"Stone", "Камень", "石头"});
            owned_text_98 = re::ReString(label_97);
            label_99 = page_label(s, text_pool, -777, menu_literal_93, {"Metal", "Металл", "金属"});
            owned_text_100 = re::ReString(label_99);
            label_101 = page_label(s, text_pool, 32, menu_literal_506, {"Hqm", "ВКМ", "高质金属"});
            owned_text_102 = re::ReString(label_101);
            label_103 = page_label(s, text_pool, -864, menu_literal_507,
                                   {"To Grade", "До уровня", "到等级"});
            {
                MenuControlRequest control_104;
                control_104.role = MenuControlRole::combo_strings;
                control_104.site = 0x343a7c;
                control_104.primitive = 0x3bf008;
                control_104.label = re::ReString(label_103);
                control_104.value = 0x3e5368;
                control_104.choices = {owned_text_94, owned_text_96, owned_text_98, owned_text_100,
                                       owned_text_102};
                pressed_105 = control(a, control_104).pressed;
            }
        }
        label_106 = page_label(s, text_pool, -920, menu_literal_508,
                               {"Automatically heal when your health is low",
                                "Автоматически лечит при низком здоровье", "生命值低时自动治疗"});
        label_107 = page_label(s, text_pool, -729, menu_literal_509,
                               {"Auto Heal", "Авто лечение", "自动治疗"});
        {
            MenuControlRequest control_108;
            control_108.role = MenuControlRole::checkbox;
            control_108.site = 0x343b35;
            control_108.primitive = 0x3bd114;
            control_108.label = re::ReString(label_107);
            control_108.value = 0x3f2fc8;
            control_108.key = 0;
            control_108.color = 0;
            control_108.description = re::ReString(label_106);
            control_108.register_search = (0 != 0);
            pressed_109 = control(a, control_108).pressed;
        }
        label_110 =
            page_label(s, text_pool, -696, menu_literal_510,
                       {"Automatically turns your torch off and on instantly(works underwater)",
                        "Автоматически мгновенно включает и выключает фонарик (работает под водой)",
                        "自动瞬间开关手电筒（水下有效）"});
        label_111 = page_label(s, text_pool, -984, menu_literal_511,
                               {"Spam Torch", "Спам фонариком", "手电筒连点"});
        {
            MenuControlRequest control_112;
            control_112.role = MenuControlRole::checkbox;
            control_112.site = 0x343bd6;
            control_112.primitive = 0x3bd114;
            control_112.label = re::ReString(label_111);
            control_112.value = 0x3f3748;
            control_112.key = 0;
            control_112.color = 0;
            control_112.description = re::ReString(label_110);
            control_112.register_search = (0 != 0);
            pressed_113 = control(a, control_112).pressed;
        }
        label_114 = page_label(
            s, text_pool, -696, menu_literal_512,
            {"Automatically spams the door you are looking at with knocks and code inputs",
             "Автоматически стучит и вводит коды в дверь, на которую вы смотрите",
             "自动对你正在查看的门进行敲击和密码输入"});
        label_115 = page_label(s, text_pool, -984, menu_literal_513,
                               {"Spam Doors", "Спам дверей", "门连点"});
        {
            MenuControlRequest control_116;
            control_116.role = MenuControlRole::checkbox;
            control_116.site = 0x343c77;
            control_116.primitive = 0x3bd114;
            control_116.label = re::ReString(label_115);
            control_116.value = 0x3f3798;
            control_116.key = 0;
            control_116.color = 0;
            control_116.description = re::ReString(label_114);
            control_116.register_search = (0 != 0);
            pressed_117 = control(a, control_116).pressed;
        }
        label_118 = page_label(s, text_pool, -696, menu_literal_514,
                               {"Automatically collect entities from the dropdown below. The ESP "
                                "for the collectable MUST be enabled.",
                                "Автоматически собирает сущности из выпадающего списка ниже. ESP "
                                "для собираемых предметов ДОЛЖЕН быть включён.",
                                "自动从下面的下拉菜单中采集实体。可采集物品的ESP必须启用。"});
        label_119 = page_label(s, text_pool, -936, menu_literal_515,
                               {"Auto Collect", "Авто сбор", "自动采集"});
        {
            MenuControlRequest control_120;
            control_120.role = MenuControlRole::checkbox;
            control_120.site = 0x343d1c;
            control_120.primitive = 0x3bd114;
            control_120.label = re::ReString(label_119);
            control_120.value = 0x3e9958;
            control_120.key = 0x3ef478;
            control_120.color = 0;
            control_120.description = re::ReString(label_118);
            control_120.register_search = (0 != 0);
            pressed_121 = control(a, control_120).pressed;
        }
        value_122 = raw(s, 0x3e9958) & 255u;
        if ((value_122 == 0)) {
        } else {
            label_123 = page_label(s, text_pool, -696, menu_literal_516,
                                   {"Automatically eat entities from the dropdown below",
                                    "Автоматически ест сущности из выпадающего списка ниже",
                                    "自动食用下面下拉菜单中的实体"});
            label_124 = page_label(s, text_pool, -864, menu_literal_517,
                                   {"Auto Eat", "Авто еда", "自动进食"});
            {
                MenuControlRequest control_125;
                control_125.role = MenuControlRole::checkbox;
                control_125.site = 0x343dc9;
                control_125.primitive = 0x3bd114;
                control_125.label = re::ReString(label_124);
                control_125.value = 0x3e99a8;
                control_125.key = 0;
                control_125.color = 0;
                control_125.description = re::ReString(label_123);
                control_125.register_search = (0 != 0);
                pressed_126 = control(a, control_125).pressed;
            }
            label_127 = page_label(s, text_pool, 32, menu_literal_193, {"Hemp", "Конопля", "麻"});
            owned_text_128 = re::ReString(label_127);
            label_129 =
                page_label(s, text_pool, -777, menu_literal_197, {"Stone", "Камень", "石头"});
            owned_text_130 = re::ReString(label_129);
            label_131 =
                page_label(s, text_pool, -840, menu_literal_93, {"Metal", "Металл", "金属"});
            owned_text_132 = re::ReString(label_131);
            label_133 =
                page_label(s, text_pool, -120, menu_literal_198, {"Sulfur", "Сера", "硫磺"});
            owned_text_134 = re::ReString(label_133);
            label_135 = page_label(s, text_pool, -968, menu_literal_94, {"Wood", "Дерево", "木头"});
            owned_text_136 = re::ReString(label_135);
            label_137 =
                page_label(s, text_pool, -113, menu_literal_199, {"Diesel", "Дизель", "柴油"});
            owned_text_138 = re::ReString(label_137);
            label_139 =
                page_label(s, text_pool, -92, menu_literal_200, {"BlackBerry", "Ежевика", "黑莓"});
            owned_text_140 = re::ReString(label_139);
            label_141 =
                page_label(s, text_pool, -984, menu_literal_201, {"BlueBerry", "Черника", "蓝莓"});
            owned_text_142 = re::ReString(label_141);
            label_143 = page_label(s, text_pool, -715, menu_literal_202,
                                   {"GreenBerry", "Зелёная ягода", "绿莓"});
            owned_text_144 = re::ReString(label_143);
            label_145 = page_label(s, text_pool, -106, menu_literal_203,
                                   {"RedBerry", "Красная ягода", "红莓"});
            owned_text_146 = re::ReString(label_145);
            label_147 = page_label(s, text_pool, -834, menu_literal_204,
                                   {"WhiteBerry", "Белая ягода", "白莓"});
            owned_text_148 = re::ReString(label_147);
            label_149 = page_label(s, text_pool, -936, menu_literal_205,
                                   {"YellowBerry", "Жёлтая ягода", "黄莓"});
            owned_text_150 = re::ReString(label_149);
            label_151 =
                page_label(s, text_pool, -771, menu_literal_206, {"Candy", "Конфета", "糖果"});
            owned_text_152 = re::ReString(label_151);
            label_153 =
                page_label(s, text_pool, -864, menu_literal_215, {"Pumpkin", "Тыква", "南瓜"});
            owned_text_154 = re::ReString(label_153);
            label_155 =
                page_label(s, text_pool, -729, menu_literal_214, {"Mushroom", "Гриб", "蘑菇"});
            owned_text_156 = re::ReString(label_155);
            label_157 =
                page_label(s, text_pool, -973, menu_literal_213, {"Corn", "Кукуруза", "玉米"});
            owned_text_158 = re::ReString(label_157);
            label_159 =
                page_label(s, text_pool, -736, menu_literal_216, {"Potato", "Картофель", "土豆"});
            owned_text_160 = re::ReString(label_159);
            label_161 = page_label(s, text_pool, -855, menu_literal_518,
                                   {"DroppedItems", "Выброшенные предметы", "掉落物品"});
            owned_text_162 = re::ReString(label_161);
            label_163 = page_label(s, text_pool, -816, menu_literal_519,
                                   {"Collect Options", "Опции сбора", "采集选项"});
            {
                MenuControlRequest control_164;
                control_164.role = MenuControlRole::multiselect;
                control_164.site = 0x344404;
                control_164.primitive = 0x387d18;
                control_164.label = re::ReString(label_163);
                control_164.value = 0x3f06e8;
                control_164.choices = {
                    owned_text_128, owned_text_130, owned_text_132, owned_text_134, owned_text_136,
                    owned_text_138, owned_text_140, owned_text_142, owned_text_144, owned_text_146,
                    owned_text_148, owned_text_150, owned_text_152, owned_text_154, owned_text_156,
                    owned_text_158, owned_text_160, owned_text_162};
                pressed_165 = control(a, control_164).pressed;
            }
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_166 = page_label(s, text_pool, -855, menu_literal_520,
                               {"Automations2", "Автоматизация2", "自动化2"});
        literal_167 = page_literal(text_pool, 24, menu_literal_469);
        owned_text_168 = re::ReString(literal_167);
        child(s, m, a, owned_text_168, re::ReString(label_166), Vec2{0.0f, -1.0f}, (1 != 0));
        label_169 = page_label(
            s, text_pool, -696, menu_literal_521,
            {"Automatically loots containers based on the selected items in your dropdown below",
             "Автоматически грабит контейнеры на основе выбранных предметов в выпадающем списке "
             "ниже",
             "根据下面下拉菜单中选择的物品自动掠夺容器"});
        label_170 =
            page_label(s, text_pool, -984, menu_literal_522, {"Auto Loot", "Авто лут", "自动拾取"});
        {
            MenuControlRequest control_171;
            control_171.role = MenuControlRole::checkbox;
            control_171.site = 0x34455e;
            control_171.primitive = 0x3bd114;
            control_171.label = re::ReString(label_170);
            control_171.value = 0x3e4f58;
            control_171.key = 0x3e5588;
            control_171.color = 0;
            control_171.description = re::ReString(label_169);
            control_171.register_search = (1 != 0);
            pressed_172 = control(a, control_171).pressed;
        }
        value_173 = raw(s, 0x3e4f58) & 255u;
        if ((value_173 == 0)) {
            s.values[0x3e41f8] = ReU32(0);
        } else {
            label_174 = page_label(s, text_pool, -696, menu_literal_523,
                                   {"This will auto open boxes without the UI showing, and it'll "
                                    "loot them automatically apon keypress",
                                    "Автоматически открывает ящики без отображения интерфейса и "
                                    "автоматически грабит их при нажатии клавиши",
                                    "自动打开箱子而不显示UI，并在按键时自动拾取"});
            label_175 = page_label(s, text_pool, -936, menu_literal_524,
                                   {"Silent Loot", "Тихий лут", "静默拾取"});
            {
                MenuControlRequest control_176;
                control_176.role = MenuControlRole::checkbox;
                control_176.site = 0x34460c;
                control_176.primitive = 0x3bd114;
                control_176.label = re::ReString(label_175);
                control_176.value = 0x3e41f8;
                control_176.key = 0;
                control_176.color = 0;
                control_176.description = re::ReString(label_174);
                control_176.register_search = (0 != 0);
                pressed_177 = control(a, control_176).pressed;
            }
            label_178 =
                page_label(s, text_pool, -736, menu_literal_306, {"Weapon", "Оружие", "武器"});
            owned_text_179 = re::ReString(label_178);
            label_180 =
                page_label(s, text_pool, -984, menu_literal_309, {"Resources", "Ресурсы", "资源"});
            owned_text_181 = re::ReString(label_180);
            label_182 =
                page_label(s, text_pool, -864, menu_literal_312, {"Medical", "Медицина", "医疗"});
            owned_text_183 = re::ReString(label_182);
            label_184 = page_label(s, text_pool, -968, menu_literal_209, {"Food", "Еда", "食物"});
            owned_text_185 = re::ReString(label_184);
            label_186 =
                page_label(s, text_pool, -973, menu_literal_313, {"Ammo", "Боеприпасы", "弹药"});
            owned_text_187 = re::ReString(label_186);
            label_188 = page_label(s, text_pool, -834, menu_literal_316,
                                   {"Components", "Компоненты", "组件"});
            owned_text_189 = re::ReString(label_188);
            label_190 =
                page_label(s, text_pool, -771, menu_literal_311, {"Tools", "Инструменты", "工具"});
            owned_text_191 = re::ReString(label_190);
            label_192 = page_label(s, text_pool, 32, menu_literal_320, {"All", "Всё", "全部"});
            owned_text_193 = re::ReString(label_192);
            label_194 = page_label(s, text_pool, -984, menu_literal_525,
                                   {"Lootables", "Лутаемое", "可拾取物品"});
            {
                MenuControlRequest control_195;
                control_195.role = MenuControlRole::multiselect;
                control_195.site = 0x344937;
                control_195.primitive = 0x387d18;
                control_195.label = re::ReString(label_194);
                control_195.value = 0x3e56f8;
                control_195.choices = {owned_text_179, owned_text_181, owned_text_183,
                                       owned_text_185, owned_text_187, owned_text_189,
                                       owned_text_191, owned_text_193};
                pressed_196 = control(a, control_195).pressed;
            }
        }
        label_197 =
            page_label(s, text_pool, -920, menu_literal_526,
                       {"Automatically locks any unlocked codelocks nearby",
                        "Автоматически закрывает любые разблокированные кодовые замки поблизости",
                        "自动锁定附近任何未上锁的密码锁"});
        label_198 = page_label(s, text_pool, -984, menu_literal_527,
                               {"Auto Lock", "Авто замок", "自动上锁"});
        {
            MenuControlRequest control_199;
            control_199.role = MenuControlRole::checkbox;
            control_199.site = 0x3449ea;
            control_199.primitive = 0x3bd114;
            control_199.label = re::ReString(label_198);
            control_199.value = 0x3e9db8;
            control_199.key = 0;
            control_199.color = 0;
            control_199.description = re::ReString(label_197);
            control_199.register_search = (0 != 0);
            pressed_200 = control(a, control_199).pressed;
        }
        value_201 = raw(s, 0x3e9db8) & 255u;
        if ((value_201 == 0)) {
        } else {
            copied_text_202 = s.strings[0x3f4698];
            available_203 = get<Vec2>(a, 0x39233c);
            value_204 = get<float>(a, 0x3925cc);
            value_205 = Address(copied_text_202.size());
            label_206 = page_label(s, text_pool, -936, menu_literal_528,
                                   {"Lock Code..", "Код замка..", "锁码.."});
            label_207 = page_label(s, text_pool, -834, menu_literal_529,
                                   {"##Lock Code", "##Код замка", "##锁码"});
            value_208 = get<bool>(a, 0x3c0538,
                                  {re::ReString(label_207), re::ReString(label_206), copied_text_202,
                                   ReI32(value_205),
                                   Vec2{((available_203.x * 0.5f) - 30.0f), value_204},
                                   ReI32(20480), Address(0), Address(0)});
            value_209 = get<bool>(a, 0x39408c);
            s.values[0x3fd4f8] = ReU32(value_209);
            label_210 = page_label(s, text_pool, -696, menu_literal_530,
                                   {"If a player is unlocking a door for whatever reason, it'll "
                                    "automatically change the code, then lock it",
                                    "Если игрок по какой-либо причине открывает дверь, "
                                    "автоматически изменит код и закроет её",
                                    "如果玩家因任何原因正在解锁门，将自动更改密码然后锁定"});
            label_211 = page_label(s, text_pool, -792, menu_literal_531,
                                   {"Steal Unlocked", "Красть открытые", "上锁已解锁"});
            {
                MenuControlRequest control_212;
                control_212.role = MenuControlRole::checkbox;
                control_212.site = 0x344bb2;
                control_212.primitive = 0x3bd114;
                control_212.label = re::ReString(label_211);
                control_212.value = 0x3f3158;
                control_212.key = 0;
                control_212.color = 0;
                control_212.description = re::ReString(label_210);
                control_212.register_search = (0 != 0);
                pressed_213 = control(a, control_212).pressed;
            }
        }
        label_214 = page_label(
            s, text_pool, -696, menu_literal_532,
            {"Automatically auths on any codelocks nearby that you are not already authed on",
             "Автоматически авторизуется на любых кодовых замках поблизости, на которых вы ещё не "
             "авторизованы",
             "自动授权到附近任何你尚未授权的密码锁"});
        label_215 = page_label(s, text_pool, -984, menu_literal_533,
                               {"Auto Auth", "Авто авторизация", "自动授权"});
        {
            MenuControlRequest control_216;
            control_216.role = MenuControlRole::checkbox;
            control_216.site = 0x344c60;
            control_216.primitive = 0x3bd114;
            control_216.label = re::ReString(label_215);
            control_216.value = 0x3f3b58;
            control_216.key = 0x3ef598;
            control_216.color = 0;
            control_216.description = re::ReString(label_214);
            control_216.register_search = (0 != 0);
            pressed_217 = control(a, control_216).pressed;
        }
        value_218 = raw(s, 0x3f3b58) & 255u;
        if ((value_218 == 0)) {
        } else {
            copied_text_219 = s.strings[0x3f4628];
            available_220 = get<Vec2>(a, 0x39233c);
            value_221 = get<float>(a, 0x3925cc);
            value_222 = Address(copied_text_219.size());
            label_223 = page_label(s, text_pool, -936, menu_literal_534,
                                   {"Auth Code..", "Код авторизации..", "授权码.."});
            label_224 = page_label(s, text_pool, -834, menu_literal_535,
                                   {"##Auth Code", "##Код авторизации", "##授权码"});
            value_225 = get<bool>(a, 0x3c0538,
                                  {re::ReString(label_224), re::ReString(label_223), copied_text_219,
                                   ReI32(value_222),
                                   Vec2{((available_220.x * 0.5f) - 30.0f), value_221},
                                   ReI32(20480), Address(0), Address(0)});
            value_226 = get<bool>(a, 0x39408c);
            s.values[0x3fd4f6] = ReU32(value_226);
        }
        label_227 = page_label(s, text_pool, -920, menu_literal_536,
                               {"Automatically respawns you when you die",
                                "Автоматически возрождает вас при смерти", "死亡时自动重生"});
        label_228 = page_label(s, text_pool, -855, menu_literal_537,
                               {"Auto Respawn", "Авто возрождение", "自动重生"});
        {
            MenuControlRequest control_229;
            control_229.role = MenuControlRole::checkbox;
            control_229.site = 0x344e31;
            control_229.primitive = 0x3bd114;
            control_229.label = re::ReString(label_228);
            control_229.value = 0x3f3978;
            control_229.key = 0;
            control_229.color = 0;
            control_229.description = re::ReString(label_227);
            control_229.register_search = (0 != 0);
            pressed_230 = control(a, control_229).pressed;
        }
        label_231 = page_label(s, text_pool, -696, menu_literal_538,
                               {"Automatically resets the timer for the item you are crafting",
                                "Автоматически сбрасывает таймер для предмета, который вы создаёте",
                                "自动重置你正在制作物品的计时器"});
        label_232 = page_label(s, text_pool, -792, menu_literal_539,
                               {"Reset Crafting", "Сброс крафта", "重置制作"});
        {
            MenuControlRequest control_233;
            control_233.role = MenuControlRole::checkbox;
            control_233.site = 0x344ed5;
            control_233.primitive = 0x3bd114;
            control_233.label = re::ReString(label_232);
            control_233.value = 0x3f2f28;
            control_233.key = 0x3ef538;
            control_233.color = 0;
            control_233.description = re::ReString(label_231);
            control_233.register_search = (0 != 0);
            pressed_234 = control(a, control_233).pressed;
        }
        label_235 = page_label(s, text_pool, -696, menu_literal_540,
                               {"Automatically cancles everything that you are currently crafting",
                                "Автоматически отменяет всё, что вы сейчас создаёте",
                                "自动取消你当前正在制作的所有物品"});
        label_236 = page_label(s, text_pool, -816, menu_literal_541,
                               {"Cancel Crafting", "Отмена крафта", "取消制作"});
        {
            MenuControlRequest control_237;
            control_237.role = MenuControlRole::checkbox;
            control_237.site = 0x344f79;
            control_237.primitive = 0x3bd114;
            control_237.label = re::ReString(label_236);
            control_237.value = 0x3f2f78;
            control_237.key = 0x3f4318;
            control_237.color = 0;
            control_237.description = re::ReString(label_235);
            control_237.register_search = (1 != 0);
            pressed_238 = control(a, control_237).pressed;
        }
        label_239 =
            page_label(s, text_pool, -696, menu_literal_542,
                       {"Automatically drops your full inventory when you press your custom hotkey",
                        "Автоматически выбрасывает весь ваш инвентарь при нажатии пользовательской "
                        "горячей клавиши",
                        "按下自定义快捷键时自动丢弃你的全部库存"});
        label_240 = page_label(s, text_pool, -792, menu_literal_543,
                               {"Drop Inventory", "Выброс инвентаря", "丢弃背包"});
        {
            MenuControlRequest control_241;
            control_241.role = MenuControlRole::checkbox;
            control_241.site = 0x34501d;
            control_241.primitive = 0x3bd114;
            control_241.label = re::ReString(label_240);
            control_241.value = 0x3e52c8;
            control_241.key = 0x3e55e8;
            control_241.color = 0;
            control_241.description = re::ReString(label_239);
            control_241.register_search = (1 != 0);
            pressed_242 = control(a, control_241).pressed;
        }
        label_243 =
            page_label(s, text_pool, -696, menu_literal_544,
                       {"Automatically drops the items in the container you are looting",
                        "Автоматически выбрасывает предметы из контейнера, который вы грабите",
                        "自动丢弃你正在掠夺的容器中的物品"});
        label_244 = page_label(s, text_pool, -792, menu_literal_545,
                               {"Drop Container", "Выброс контейнера", "丢弃箱子"});
        {
            MenuControlRequest control_245;
            control_245.role = MenuControlRole::checkbox;
            control_245.site = 0x3450c1;
            control_245.primitive = 0x3bd114;
            control_245.label = re::ReString(label_244);
            control_245.value = 0x3e5188;
            control_245.key = 0x3e5528;
            control_245.color = 0;
            control_245.description = re::ReString(label_243);
            control_245.register_search = (1 != 0);
            pressed_246 = control(a, control_245).pressed;
        }
        label_247 = page_label(s, text_pool, -696, menu_literal_546,
                               {"Automatically refills your jackhammer while near a workbench, "
                                "only when its on low health. If a jackhammer breaks it will swap "
                                "your jackhammer to another one in your hotbar",
                                "Автоматически перезаправляет ваш отбойный молоток возле верстака, "
                                "только когда у него мало прочности. Если отбойный молоток "
                                "ломается, он заменит его другим из вашей панели быстрого доступа",
                                "在工作台附近自动为你的电稿补充燃料，仅在其耐久度低时。如果电稿损坏"
                                "，它会将你的电稿替换为快捷栏中的另一个"});
        label_248 =
            page_label(s, text_pool, -760, menu_literal_547,
                       {"Refill Jackhammer", "Перезаправка отбойного молотка", "自动补充电稿"});
        {
            MenuControlRequest control_249;
            control_249.role = MenuControlRole::checkbox;
            control_249.site = 0x345161;
            control_249.primitive = 0x3bd114;
            control_249.label = re::ReString(label_248);
            control_249.value = 0x3e4fa8;
            control_249.key = 0;
            control_249.color = 0;
            control_249.description = re::ReString(label_247);
            control_249.register_search = (0 != 0);
            pressed_250 = control(a, control_249).pressed;
        }
        label_251 = page_label(
            s, text_pool, -696, menu_literal_548,
            {"This will automatically keep players mounted around you, it'll auto reset their "
             "timer aswell as put a mask off and on their head over and over",
             "Автоматически удерживает игроков, прикованных к вам, автоматически сбрасывает их "
             "таймер и постоянно надевает и снимает маску на их голову",
             "自动保持你周围被铐住的玩家，自动重置他们的计时器并反复给他们戴上面具和摘下面具"});
        label_252 = page_label(s, text_pool, -760, menu_literal_549,
                               {"Keep In Handcuffs", "Удерживать в наручниках", "保持手铐状态"});
        {
            MenuControlRequest control_253;
            control_253.role = MenuControlRole::checkbox;
            control_253.site = 0x345201;
            control_253.primitive = 0x3bd114;
            control_253.label = re::ReString(label_252);
            control_253.value = 0x3e98b8;
            control_253.key = 0;
            control_253.color = 0;
            control_253.description = re::ReString(label_251);
            control_253.register_search = (0 != 0);
            pressed_254 = control(a, control_253).pressed;
        }
        label_255 = page_label(s, text_pool, -696, menu_literal_550,
                               {"This will automatically mount players to your vehicle that are "
                                "near you, you can press F to reset the handcuff timer",
                                "Автоматически приковывает игроков к вашему транспорту, если они "
                                "рядом. Нажмите F, чтобы сбросить таймер наручников",
                                "自动将你附近的玩家铐到你的载具上，你可以按F重置手铐计时器"});
        label_256 = page_label(s, text_pool, -855, menu_literal_551,
                               {"Steal Players", "Красть игроков", "偷窃玩家"});
        {
            MenuControlRequest control_257;
            control_257.role = MenuControlRole::checkbox;
            control_257.site = 0x3452a1;
            control_257.primitive = 0x3bd114;
            control_257.label = re::ReString(label_256);
            control_257.value = 0x3f36f8;
            control_257.key = 0;
            control_257.color = 0;
            control_257.description = re::ReString(label_255);
            control_257.register_search = (0 != 0);
            pressed_258 = control(a, control_257).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_3455b4(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x3455b4..0x346c80.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef label_4{};
        [[maybe_unused]] MenuPageTextRef label_5{};
        [[maybe_unused]] bool pressed_7{};
        [[maybe_unused]] MenuPageTextRef label_8{};
        [[maybe_unused]] MenuPageTextRef label_9{};
        [[maybe_unused]] bool pressed_11{};
        [[maybe_unused]] ReU32 value_12{};
        [[maybe_unused]] re::ReString copied_text_13{};
        [[maybe_unused]] Vec2 available_14{};
        [[maybe_unused]] float value_15{};
        [[maybe_unused]] Address value_16{};
        [[maybe_unused]] MenuPageTextRef label_17{};
        [[maybe_unused]] MenuPageTextRef label_18{};
        [[maybe_unused]] bool value_19{};
        [[maybe_unused]] bool value_20{};
        [[maybe_unused]] MenuPageTextRef label_21{};
        [[maybe_unused]] MenuPageTextRef label_22{};
        [[maybe_unused]] bool pressed_24{};
        [[maybe_unused]] ReU32 value_25{};
        [[maybe_unused]] MenuPageTextRef label_26{};
        [[maybe_unused]] MenuPageTextRef label_27{};
        [[maybe_unused]] bool pressed_29{};
        [[maybe_unused]] ReU32 value_30{};
        [[maybe_unused]] MenuPageTextRef label_31{};
        [[maybe_unused]] MenuPageTextRef label_32{};
        [[maybe_unused]] bool pressed_34{};
        [[maybe_unused]] ReU32 value_35{};
        [[maybe_unused]] MenuPageTextRef label_36{};
        [[maybe_unused]] MenuPageTextRef label_37{};
        [[maybe_unused]] bool pressed_39{};
        [[maybe_unused]] MenuPageTextRef label_40{};
        [[maybe_unused]] re::ReString owned_text_41{};
        [[maybe_unused]] MenuPageTextRef label_42{};
        [[maybe_unused]] re::ReString owned_text_43{};
        [[maybe_unused]] MenuPageTextRef label_44{};
        [[maybe_unused]] re::ReString owned_text_45{};
        [[maybe_unused]] MenuPageTextRef label_46{};
        [[maybe_unused]] re::ReString owned_text_47{};
        [[maybe_unused]] MenuPageTextRef label_48{};
        [[maybe_unused]] bool pressed_50{};
        [[maybe_unused]] MenuPageTextRef label_51{};
        [[maybe_unused]] re::ReString owned_text_52{};
        [[maybe_unused]] MenuPageTextRef label_53{};
        [[maybe_unused]] re::ReString owned_text_54{};
        [[maybe_unused]] MenuPageTextRef label_55{};
        [[maybe_unused]] re::ReString owned_text_56{};
        [[maybe_unused]] MenuPageTextRef label_57{};
        [[maybe_unused]] re::ReString owned_text_58{};
        [[maybe_unused]] MenuPageTextRef label_59{};
        [[maybe_unused]] re::ReString owned_text_60{};
        [[maybe_unused]] MenuPageTextRef label_61{};
        [[maybe_unused]] bool pressed_63{};
        [[maybe_unused]] MenuPageTextRef label_64{};
        [[maybe_unused]] MenuPageTextRef label_65{};
        [[maybe_unused]] bool pressed_67{};
        [[maybe_unused]] MenuPageTextRef label_68{};
        [[maybe_unused]] MenuPageTextRef label_69{};
        [[maybe_unused]] bool pressed_71{};
        [[maybe_unused]] MenuPageTextRef label_72{};
        [[maybe_unused]] MenuPageTextRef label_73{};
        [[maybe_unused]] bool pressed_75{};
        [[maybe_unused]] MenuPageTextRef label_76{};
        [[maybe_unused]] MenuPageTextRef label_77{};
        [[maybe_unused]] bool pressed_79{};
        [[maybe_unused]] ReU32 value_80{};
        [[maybe_unused]] re::ReString copied_text_81{};
        [[maybe_unused]] Vec2 available_82{};
        [[maybe_unused]] float value_83{};
        [[maybe_unused]] Address value_84{};
        [[maybe_unused]] MenuPageTextRef label_85{};
        [[maybe_unused]] MenuPageTextRef label_86{};
        [[maybe_unused]] bool value_87{};
        [[maybe_unused]] ReU32 value_88{};
        [[maybe_unused]] bool value_89{};
        [[maybe_unused]] float value_90{};
        [[maybe_unused]] MenuPageTextRef label_91{};
        [[maybe_unused]] bool pressed_93{};
        [[maybe_unused]] MenuPageTextRef label_94{};
        [[maybe_unused]] MenuPageTextRef label_95{};
        [[maybe_unused]] bool pressed_97{};
        [[maybe_unused]] MenuPageTextRef label_98{};
        [[maybe_unused]] MenuPageTextRef label_99{};
        [[maybe_unused]] bool pressed_101{};
        [[maybe_unused]] ReU32 value_102{};
        [[maybe_unused]] MenuPageTextRef label_103{};
        [[maybe_unused]] re::ReString owned_text_104{};
        [[maybe_unused]] MenuPageTextRef label_105{};
        [[maybe_unused]] re::ReString owned_text_106{};
        [[maybe_unused]] MenuPageTextRef label_107{};
        [[maybe_unused]] bool pressed_109{};
        [[maybe_unused]] MenuPageTextRef label_110{};
        [[maybe_unused]] MenuPageTextRef label_111{};
        [[maybe_unused]] bool pressed_113{};
        [[maybe_unused]] MenuPageTextRef label_114{};
        [[maybe_unused]] MenuPageTextRef label_115{};
        [[maybe_unused]] bool pressed_117{};
        [[maybe_unused]] MenuPageTextRef label_118{};
        [[maybe_unused]] MenuPageTextRef label_119{};
        [[maybe_unused]] bool pressed_121{};
        [[maybe_unused]] MenuPageTextRef label_122{};
        [[maybe_unused]] MenuPageTextRef label_123{};
        [[maybe_unused]] bool pressed_125{};
        [[maybe_unused]] MenuPageTextRef label_126{};
        [[maybe_unused]] MenuPageTextRef label_127{};
        [[maybe_unused]] bool pressed_129{};
        [[maybe_unused]] MenuPageTextRef label_130{};
        [[maybe_unused]] MenuPageTextRef label_131{};
        [[maybe_unused]] bool pressed_133{};
        [[maybe_unused]] MenuPageTextRef label_134{};
        [[maybe_unused]] MenuPageTextRef label_135{};
        [[maybe_unused]] bool pressed_137{};
        [[maybe_unused]] MenuPageTextRef label_138{};
        [[maybe_unused]] MenuPageTextRef literal_139{};
        [[maybe_unused]] re::ReString owned_text_140{};
        [[maybe_unused]] MenuPageTextRef label_141{};
        [[maybe_unused]] MenuPageTextRef label_142{};
        [[maybe_unused]] bool pressed_144{};
        label_1 =
            page_label(s, text_pool, -484, menu_literal_552, {"Utility", "Утилиты", "实用工具"});
        literal_2 = page_literal(text_pool, 24, menu_literal_553);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        label_4 = page_label(s, text_pool, -440, menu_literal_554,
                             {"Place a JPG Image named Image inside of C:Program Files "
                              "(x86)SteamsteamappscommonRust",
                              "Рисует вывеску", "绘制招牌"});
        label_5 = page_label(s, text_pool, -632, menu_literal_555,
                             {"Sign Painter", "Художник по вывескам", "招牌画师"});
        {
            MenuControlRequest control_6;
            control_6.role = MenuControlRole::checkbox;
            control_6.site = 0x345715;
            control_6.primitive = 0x3bd114;
            control_6.label = re::ReString(label_5);
            control_6.value = 0x3e9fe8;
            control_6.key = 0x3f4198;
            control_6.color = 0;
            control_6.description = re::ReString(label_4);
            control_6.register_search = (1 != 0);
            pressed_7 = control(a, control_6).pressed;
        }
        label_8 = page_label(s, text_pool, -520, menu_literal_556,
                             {"Begins a demo recording", "Начинает запись демо", "开始演示录像"});
        label_9 = page_label(s, text_pool, -632, menu_literal_557,
                             {"Demo Record", "Запись демо", "演示录像"});
        {
            MenuControlRequest control_10;
            control_10.role = MenuControlRole::checkbox;
            control_10.site = 0x3457ba;
            control_10.primitive = 0x3bd114;
            control_10.label = re::ReString(label_9);
            control_10.value = 0x3f31a8;
            control_10.key = 0x3f41f8;
            control_10.color = 0;
            control_10.description = re::ReString(label_8);
            control_10.register_search = (1 != 0);
            pressed_11 = control(a, control_10).pressed;
        }
        value_12 = raw(s, 0x3f31a8) & 255u;
        if ((value_12 == 0)) {
        } else {
            copied_text_13 = s.strings[0x3f45b8];
            available_14 = get<Vec2>(a, 0x39233c);
            value_15 = get<float>(a, 0x3925cc);
            value_16 = Address(copied_text_13.size());
            label_17 = page_label(s, text_pool, -632, menu_literal_558,
                                  {"Demo Name..", "Имя демо..", "演示名称.."});
            label_18 = page_label(s, text_pool, -520, menu_literal_559,
                                  {"##Demo Recordings", "##Записи демо", "##演示录像"});
            value_19 = get<bool>(a, 0x3c0538,
                                 {re::ReString(label_18), re::ReString(label_17), copied_text_13,
                                  ReI32(value_16),
                                  Vec2{((available_14.x * 0.5f) - 30.0f), value_15},
                                  ReI32(20480), Address(0), Address(0)});
            value_20 = get<bool>(a, 0x39408c);
            s.values[0x3fd4f7] = ReU32(value_20);
        }
        label_21 = page_label(s, text_pool, -608, menu_literal_560,
                              {"Frees your camera position so you can look around",
                               "Освобождает позицию камеры, чтобы вы могли осмотреться",
                               "释放你的摄像机位置，让你可以环顾四周"});
        label_22 = page_label(s, text_pool, -632, menu_literal_561,
                              {"Debug Camera", "Камера отладки", "调试摄像机"});
        {
            MenuControlRequest control_23;
            control_23.role = MenuControlRole::checkbox;
            control_23.site = 0x345998;
            control_23.primitive = 0x3bd114;
            control_23.label = re::ReString(label_22);
            control_23.value = 0x3f3298;
            control_23.key = 0x3f44f8;
            control_23.color = 0;
            control_23.description = re::ReString(label_21);
            control_23.register_search = (1 != 0);
            pressed_24 = control(a, control_23).pressed;
        }
        value_25 = raw(s, 0x3f3298) & 255u;
        if ((value_25 == 0)) {
        } else {
            label_26 =
                page_label(s, text_pool, -440, menu_literal_562,
                           {"Simulates things that can be done in interactive. Press F to open and "
                            "close doors while in debug, as well as turn furnaces on and off",
                            "Симулирует действия, которые можно выполнить в интерактивном режиме. "
                            "Нажмите F, чтобы открывать и закрывать двери в режиме отладки, а "
                            "также включать и выключать печи",
                            "模拟交互模式中可以执行的操作。在调试模式下按F来开关门，以及开关熔炉"});
            label_27 =
                page_label(s, text_pool, -520, menu_literal_563,
                           {"Simulate Interactions", "Симуляция взаимодействий", "模拟交互"});
            {
                MenuControlRequest control_28;
                control_28.role = MenuControlRole::checkbox;
                control_28.site = 0x345a4a;
                control_28.primitive = 0x3bd114;
                control_28.label = re::ReString(label_27);
                control_28.value = 0x3f3608;
                control_28.key = 0;
                control_28.color = 0;
                control_28.description = re::ReString(label_26);
                control_28.register_search = (1 != 0);
                pressed_29 = control(a, control_28).pressed;
            }
            value_30 = raw(s, 0x3f3608) & 255u;
            if ((value_30 == 0)) {
            } else {
                label_31 = page_label(
                    s, text_pool, -440, menu_literal_564,
                    {"Automatically upgrades the building you are looking at in debug",
                     "Автоматически улучшает строение, на которое вы смотрите в режиме отладки",
                     "在调试模式下自动升级你正在查看的建筑"});
                label_32 = page_label(s, text_pool, -632, menu_literal_501,
                                      {"Auto Upgrade", "Авто улучшение", "自动升级"});
                {
                    MenuControlRequest control_33;
                    control_33.role = MenuControlRole::checkbox;
                    control_33.site = 0x345afc;
                    control_33.primitive = 0x3bd114;
                    control_33.label = re::ReString(label_32);
                    control_33.value = 0x3f3928;
                    control_33.key = 0x3f4258;
                    control_33.color = 0;
                    control_33.description = re::ReString(label_31);
                    control_33.register_search = (0 != 0);
                    pressed_34 = control(a, control_33).pressed;
                }
                value_35 = raw(s, 0x3f3928) & 255u;
                if ((value_35 == 0)) {
                } else {
                    label_36 =
                        page_label(s, text_pool, -608, menu_literal_502,
                                   {"This will make the feature only work when a hammer is out",
                                    "Функция будет работать только когда молоток доставлен",
                                    "只有拿出锤子时此功能才会生效"});
                    label_37 = page_label(s, text_pool, -632, menu_literal_503,
                                          {"Require Hammer", "Требовать молоток", "需要锤子"});
                    {
                        MenuControlRequest control_38;
                        control_38.role = MenuControlRole::checkbox;
                        control_38.site = 0x345bab;
                        control_38.primitive = 0x3bd114;
                        control_38.label = re::ReString(label_37);
                        control_38.value = 0x3e5138;
                        control_38.key = 0;
                        control_38.color = 0;
                        control_38.description = re::ReString(label_36);
                        control_38.register_search = (0 != 0);
                        pressed_39 = control(a, control_38).pressed;
                    }
                    label_40 =
                        page_label(s, text_pool, 32, menu_literal_504, {"Twig", "Ветка", "树枝"});
                    owned_text_41 = re::ReString(label_40);
                    label_42 =
                        page_label(s, text_pool, -617, menu_literal_94, {"Wood", "Дерево", "木头"});
                    owned_text_43 = re::ReString(label_42);
                    label_44 = page_label(s, text_pool, -496, menu_literal_197,
                                          {"Stone", "Камень", "石头"});
                    owned_text_45 = re::ReString(label_44);
                    label_46 = page_label(s, text_pool, -490, menu_literal_93,
                                          {"Metal", "Металл", "金属"});
                    owned_text_47 = re::ReString(label_46);
                    label_48 = page_label(s, text_pool, -632, menu_literal_505,
                                          {"From Grade", "С уровня", "从等级"});
                    {
                        MenuControlRequest control_49;
                        control_49.role = MenuControlRole::combo_strings;
                        control_49.site = 0x345d6b;
                        control_49.primitive = 0x3bf008;
                        control_49.label = re::ReString(label_48);
                        control_49.value = 0x3e53b8;
                        control_49.choices = {owned_text_41, owned_text_43, owned_text_45,
                                              owned_text_47};
                        pressed_50 = control(a, control_49).pressed;
                    }
                    label_51 =
                        page_label(s, text_pool, -617, menu_literal_504, {"Twig", "Ветка", "树枝"});
                    owned_text_52 = re::ReString(label_51);
                    label_53 =
                        page_label(s, text_pool, -496, menu_literal_94, {"Wood", "Дерево", "木头"});
                    owned_text_54 = re::ReString(label_53);
                    label_55 = page_label(s, text_pool, -490, menu_literal_197,
                                          {"Stone", "Камень", "石头"});
                    owned_text_56 = re::ReString(label_55);
                    label_57 = page_label(s, text_pool, -484, menu_literal_93,
                                          {"Metal", "Металл", "金属"});
                    owned_text_58 = re::ReString(label_57);
                    label_59 =
                        page_label(s, text_pool, 32, menu_literal_506, {"Hqm", "ВКМ", "高质金属"});
                    owned_text_60 = re::ReString(label_59);
                    label_61 = page_label(s, text_pool, -632, menu_literal_507,
                                          {"To Grade", "До уровня", "到等级"});
                    {
                        MenuControlRequest control_62;
                        control_62.role = MenuControlRole::combo_strings;
                        control_62.site = 0x345f92;
                        control_62.primitive = 0x3bf008;
                        control_62.label = re::ReString(label_61);
                        control_62.value = 0x3e5368;
                        control_62.choices = {owned_text_52, owned_text_54, owned_text_56,
                                              owned_text_58, owned_text_60};
                        pressed_63 = control(a, control_62).pressed;
                    }
                }
                label_64 = page_label(s, text_pool, 16, menu_literal_565, {"", "", ""});
                label_65 =
                    page_label(s, text_pool, -632, menu_literal_566, {"Demolish", "Снос", "拆除"});
                {
                    MenuControlRequest control_66;
                    control_66.role = MenuControlRole::checkbox;
                    control_66.site = 0x34604d;
                    control_66.primitive = 0x3bd114;
                    control_66.label = re::ReString(label_65);
                    control_66.value = 0x3f32e8;
                    control_66.key = 0x3f4378;
                    control_66.color = 0;
                    control_66.description = re::ReString(label_64);
                    control_66.register_search = (1 != 0);
                    pressed_67 = control(a, control_66).pressed;
                }
                label_68 = page_label(s, text_pool, 16, menu_literal_565, {"", "", ""});
                label_69 =
                    page_label(s, text_pool, 32, menu_literal_567, {"Rotate", "Поворот", "旋转"});
                {
                    MenuControlRequest control_70;
                    control_70.role = MenuControlRole::checkbox;
                    control_70.site = 0x3460ea;
                    control_70.primitive = 0x3bd114;
                    control_70.label = re::ReString(label_69);
                    control_70.value = 0x3f3338;
                    control_70.key = 0x3f43d8;
                    control_70.color = 0;
                    control_70.description = re::ReString(label_68);
                    control_70.register_search = (1 != 0);
                    pressed_71 = control(a, control_70).pressed;
                }
            }
        }
        label_72 = page_label(s, text_pool, -608, menu_literal_568,
                              {"Use your arrowkeys to rotate buildings and placeables",
                               "Используйте стрелки для поворота построек и размещаемых предметов",
                               "使用方向键旋转建筑和可放置物品"});
        label_73 = page_label(s, text_pool, -520, menu_literal_569,
                              {"Rotate Buildings", "Поворот построек", "旋转建筑"});
        {
            MenuControlRequest control_74;
            control_74.role = MenuControlRole::checkbox;
            control_74.site = 0x34618b;
            control_74.primitive = 0x3bd114;
            control_74.label = re::ReString(label_73);
            control_74.value = 0x3f33d8;
            control_74.key = 0;
            control_74.color = 0;
            control_74.description = re::ReString(label_72);
            control_74.register_search = (1 != 0);
            pressed_75 = control(a, control_74).pressed;
        }
        label_76 = page_label(
            s, text_pool, -440, menu_literal_570,
            {"This will enter in codes in the best order so that you can coderaid a base. It will "
             "draw information regarding the codelocks aswell, such as a timer, and the amount of "
             "damage each try will do to you. Once you get the correct code it will be displayed "
             "on your screen. It goes through the most commonly used codes.",
             "Вводит коды в оптимальном порядке для рейда базы. Также отображает информацию о "
             "кодовых замках, такую как таймер и урон от каждой попытки. При нахождении "
             "правильного кода он отобразится на экране. Использует наиболее распространённые "
             "коды.",
             "以最佳顺序输入密码，以便对基地进行密码突袭。还会显示有关密码锁的信息，例如计时器和每"
             "次尝试对你造成的伤害量。一旦获得正确密码，它将显示在屏幕上。它会遍历最常用的密码。"});
        label_77 =
            page_label(s, text_pool, -520, menu_literal_571,
                       {"BruteForce Codelocks", "Брутфорс кодовых замков", "暴力破解密码锁"});
        {
            MenuControlRequest control_78;
            control_78.role = MenuControlRole::checkbox;
            control_78.site = 0x34622b;
            control_78.primitive = 0x3bd114;
            control_78.label = re::ReString(label_77);
            control_78.value = 0x3e9598;
            control_78.key = 0;
            control_78.color = 0;
            control_78.description = re::ReString(label_76);
            control_78.register_search = (0 != 0);
            pressed_79 = control(a, control_78).pressed;
        }
        value_80 = raw(s, 0x3e9598) & 255u;
        if ((value_80 == 0)) {
        } else {
            copied_text_81 = s.strings[0x3fd258];
            available_82 = get<Vec2>(a, 0x39233c);
            value_83 = get<float>(a, 0x3925cc);
            value_84 = Address(copied_text_81.size());
            label_85 = page_label(s, text_pool, -632, menu_literal_572,
                                  {"Start Point", "Начальная точка", "起始点"});
            label_86 = page_label(s, text_pool, -484, menu_literal_573,
                                  {"##Start Point", "##Начальная точка", "##起始点"});
            value_87 = get<bool>(a, 0x3c0538,
                                 {re::ReString(label_86), re::ReString(label_85), copied_text_81,
                                  ReI32(value_84),
                                  Vec2{((available_82.x * 0.5f) - 30.0f), value_83},
                                  ReI32(20480), Address(0), Address(0)});
            value_88 = re::re_bit_cast<ReU32>(
                frame_parse_integer_2d8cc0(copied_text_81, ReI32(10)));
            s.values[0x3f2b0c] = ReU32(value_88);
            value_89 = get<bool>(a, 0x39408c);
            s.values[0x3fd4f9] = ReU32(value_89);
            value_90 = get<float>(a, 0x392f34);
            label_91 = page_label(s, text_pool, -632, menu_literal_574,
                                  {"Clear Codes", "Очистить коды", "清除密码"});
            {
                MenuControlRequest control_92;
                control_92.role = MenuControlRole::button;
                control_92.site = 0x3463e7;
                control_92.primitive = 0x3bc7d8;
                control_92.label = re::ReString(label_91);
                control_92.size = Vec2{((value_90 * 0.5f) - 30.0f), 30.0f};
                pressed_93 = control(a, control_92).pressed;
            }
            if ((pressed_93 == 0)) {
            } else {
                s.values[0x3e5de8] = ReU32(0);
                clear_strings(a, 0x248e98);
            }
        }
        label_94 = page_label(s, text_pool, -608, menu_literal_575,
                              {"This will decrease the time for placing high walls",
                               "Уменьшает время размещения высоких стен", "减少放置高墙的时间"});
        label_95 = page_label(s, text_pool, -632, menu_literal_576,
                              {"Fast Place", "Быстрое размещение", "快速放置"});
        {
            MenuControlRequest control_96;
            control_96.role = MenuControlRole::checkbox;
            control_96.site = 0x3464af;
            control_96.primitive = 0x3bd114;
            control_96.label = re::ReString(label_95);
            control_96.value = 0x3f2ed8;
            control_96.key = 0;
            control_96.color = 0;
            control_96.description = re::ReString(label_94);
            control_96.register_search = (0 != 0);
            pressed_97 = control(a, control_96).pressed;
        }
        label_98 =
            page_label(s, text_pool, -608, menu_literal_577,
                       {"Instantly revive players when you press E on them",
                        "Мгновенно воскрешает игроков при нажатии E", "按下E键时立即复活玩家"});
        label_99 = page_label(s, text_pool, -632, menu_literal_578,
                              {"Instant Revive", "Мгновенное воскрешение", "即时复活"});
        {
            MenuControlRequest control_100;
            control_100.role = MenuControlRole::checkbox;
            control_100.site = 0x346551;
            control_100.primitive = 0x3bd114;
            control_100.label = re::ReString(label_99);
            control_100.value = 0x3f3388;
            control_100.key = 0;
            control_100.color = 0;
            control_100.description = re::ReString(label_98);
            control_100.register_search = (0 != 0);
            pressed_101 = control(a, control_100).pressed;
        }
        value_102 = raw(s, 0x3f3388) & 255u;
        if ((value_102 == 0)) {
        } else {
            label_103 =
                page_label(s, text_pool, -632, menu_literal_579, {"Everyone", "Все", "所有人"});
            owned_text_104 = re::ReString(label_103);
            label_105 = page_label(s, text_pool, -484, menu_literal_580,
                                   {"Friends Only", "Только друзья", "仅限好友"});
            owned_text_106 = re::ReString(label_105);
            label_107 = page_label(s, text_pool, -536, menu_literal_581,
                                   {"Revive Options", "Опции воскрешения", "复活选项"});
            {
                MenuControlRequest control_108;
                control_108.role = MenuControlRole::combo_strings;
                control_108.site = 0x346682;
                control_108.primitive = 0x3bf008;
                control_108.label = re::ReString(label_107);
                control_108.value = 0x3f40a8;
                control_108.choices = {owned_text_104, owned_text_106};
                pressed_109 = control(a, control_108).pressed;
            }
        }
        label_110 = page_label(s, text_pool, -440, menu_literal_582,
                               {"This will allow you to instantly close or open doors while "
                                "wounded. Just press E on the door",
                                "Позволяет мгновенно закрывать или открывать двери в состоянии "
                                "ранения. Просто нажмите E на двери",
                                "允许你在受伤状态下立即开关门。只需在门上按E键"});
        label_111 = page_label(
            s, text_pool, -608, menu_literal_583,
            {"Instant Close/Open Door", "Мгновенное закрытие/открытие двери", "即时开关门"});
        {
            MenuControlRequest control_112;
            control_112.role = MenuControlRole::checkbox;
            control_112.site = 0x346739;
            control_112.primitive = 0x3bd114;
            control_112.label = re::ReString(label_111);
            control_112.value = 0x3f3c98;
            control_112.key = 0;
            control_112.color = 0;
            control_112.description = re::ReString(label_110);
            control_112.register_search = (0 != 0);
            pressed_113 = control(a, control_112).pressed;
        }
        label_114 = page_label(
            s, text_pool, -440, menu_literal_584,
            {"Instantly picks up the door you are looking at and replaces it with the door you are "
             "holding. Must look at the codelock or keylock first. It will use the lock that is "
             "currently on the door to relock it. Must have a door selected in your hotbar before "
             "using the feature. If the door has a codelock and not a keylock, please enable auto "
             "lock, and choose a code to use.",
             "Мгновенно подбирает дверь, на которую вы смотрите, и заменяет её на дверь, которую "
             "вы держите. Сначала нужно смотреть на кодовый или ключевой замок. Будет использован "
             "замок, который сейчас на двери, для повторной блокировки. Перед использованием "
             "функции должна быть выбрана дверь",
             "立即拾取你正在查看的门，并用你手持的门替换它。必须先看向密码锁或钥匙锁。它将使用门上"
             "当前的锁重新锁定。使用此功能前，快捷栏中必须已选择一扇门。如果门上有密码锁而不是钥匙"
             "锁，请启用自动上锁并选择要使用的密码。"});
        label_115 = page_label(s, text_pool, -632, menu_literal_585,
                               {"Replace Door", "Замена двери", "替换门"});
        {
            MenuControlRequest control_116;
            control_116.role = MenuControlRole::checkbox;
            control_116.site = 0x3467de;
            control_116.primitive = 0x3bd114;
            control_116.label = re::ReString(label_115);
            control_116.value = 0x3e51d8;
            control_116.key = 0x3e54c8;
            control_116.color = 0;
            control_116.description = re::ReString(label_114);
            control_116.register_search = (1 != 0);
            pressed_117 = control(a, control_116).pressed;
        }
        label_118 =
            page_label(s, text_pool, -608, menu_literal_586,
                       {"Break your legs to suicide while pressing a key",
                        "Ломает ноги для суицида при нажатии клавиши", "按下按键时折断双腿自杀"});
        label_119 =
            page_label(s, text_pool, 24, menu_literal_587, {"Suicide", "Суицид", "快速自杀"});
        {
            MenuControlRequest control_120;
            control_120.role = MenuControlRole::checkbox;
            control_120.site = 0x346886;
            control_120.primitive = 0x3bd114;
            control_120.label = re::ReString(label_119);
            control_120.value = 0x3f39c8;
            control_120.key = 0x3f42b8;
            control_120.color = 0;
            control_120.description = re::ReString(label_118);
            control_120.register_search = (1 != 0);
            pressed_121 = control(a, control_120).pressed;
        }
        label_122 = page_label(s, text_pool, -608, menu_literal_588,
                               {"This will allow you to instantly loot items from boxes",
                                "Позволяет мгновенно грабить предметы из ящиков",
                                "允许你立即从箱子中拾取物品"});
        label_123 = page_label(s, text_pool, -632, menu_literal_589,
                               {"Instant Loot", "Мгновенный лут", "即时拾取"});
        {
            MenuControlRequest control_124;
            control_124.role = MenuControlRole::checkbox;
            control_124.site = 0x346928;
            control_124.primitive = 0x3bd114;
            control_124.label = re::ReString(label_123);
            control_124.value = 0x3f1a48;
            control_124.key = 0;
            control_124.color = 0;
            control_124.description = re::ReString(label_122);
            control_124.register_search = (0 != 0);
            pressed_125 = control(a, control_124).pressed;
        }
        label_126 = page_label(
            s, text_pool, -608, menu_literal_590,
            {"Removes all but 2 shopfront contents and scam the other user",
             "Удаляет всё содержимое витрины, кроме 2 предметов, и обманывает другого пользователя",
             "移除橱窗中除2个物品外的所有内容，欺骗其他玩家"});
        label_127 = page_label(s, text_pool, -520, menu_literal_591,
                               {"Shopfront Stealer", "Вор витрин", "商店窃贼"});
        {
            MenuControlRequest control_128;
            control_128.role = MenuControlRole::checkbox;
            control_128.site = 0x3469cd;
            control_128.primitive = 0x3bd114;
            control_128.label = re::ReString(label_127);
            control_128.value = 0x3e4e68;
            control_128.key = 0x3e5408;
            control_128.color = 0;
            control_128.description = re::ReString(label_126);
            control_128.register_search = (1 != 0);
            pressed_129 = control(a, control_128).pressed;
        }
        label_130 = page_label(
            s, text_pool, -440, menu_literal_592,
            {"Instantly uncuff your localplayer whenever someone handcuffs you",
             "Мгновенно снимает наручники с вашего локального игрока, когда кто-то вас заковывает",
             "每当有人给你上手铐时，立即解除你本地玩家的手铐"});
        label_131 = page_label(
            s, text_pool, -608, menu_literal_593,
            {"Instant Handcuff Release", "Мгновенное снятие наручников", "即时手铐解除"});
        {
            MenuControlRequest control_132;
            control_132.role = MenuControlRole::checkbox;
            control_132.site = 0x346a6e;
            control_132.primitive = 0x3bd114;
            control_132.label = re::ReString(label_131);
            control_132.value = 0x3f36a8;
            control_132.key = 0;
            control_132.color = 0;
            control_132.description = re::ReString(label_130);
            control_132.register_search = (0 != 0);
            pressed_133 = control(a, control_132).pressed;
        }
        label_134 =
            page_label(s, text_pool, -440, menu_literal_594,
                       {"When your localplayer has handcuffs on, this feature will make them emit "
                        "a noise that everyone can hear",
                        "Когда на вашем локальном игроке наручники, эта функция заставит их "
                        "издавать звук, который слышат все",
                        "当你的本地玩家戴着手铐时，此功能会使他们发出所有人都能听到的声音"});
        label_135 = page_label(s, text_pool, -536, menu_literal_595,
                               {"Spam Handcuffs", "Спам наручников", "手铐连点"});
        {
            MenuControlRequest control_136;
            control_136.role = MenuControlRole::checkbox;
            control_136.site = 0x346b0e;
            control_136.primitive = 0x3bd114;
            control_136.label = re::ReString(label_135);
            control_136.value = 0x3f3658;
            control_136.key = 0;
            control_136.color = 0;
            control_136.description = re::ReString(label_134);
            control_136.register_search = (0 != 0);
            pressed_137 = control(a, control_136).pressed;
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_138 =
            page_label(s, text_pool, -632, menu_literal_596, {"Removals", "Удаления", "移除"});
        literal_139 = page_literal(text_pool, 24, menu_literal_597);
        owned_text_140 = re::ReString(literal_139);
        child(s, m, a, owned_text_140, re::ReString(label_138), Vec2{0.0f, -1.0f}, (1 != 0));
        label_141 =
            page_label(s, text_pool, -440, menu_literal_598,
                       {"Let's you walk on top of landmines, highwalls, etc without taking damage",
                        "Позволяет ходить по минам, высоким стенам и т.д. без получения урона",
                        "让你可以在地雷、高墙上行走而不受伤害"});
        label_142 = page_label(s, text_pool, -608, menu_literal_599,
                               {"No Spike/Landmine Collision", "Нет столкновений со шипами/минами",
                                "无视尖刺/地雷碰撞"});
        {
            MenuControlRequest control_143;
            control_143.role = MenuControlRole::checkbox;
            control_143.site = 0x346c5d;
            control_143.primitive = 0x3bd114;
            control_143.label = re::ReString(label_142);
            control_143.value = 0x3e9818;
            control_143.key = 0;
            control_143.color = 0;
            control_143.description = re::ReString(label_141);
            control_143.register_search = (0 != 0);
            pressed_144 = control(a, control_143).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_346ccc(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x346ccc..0x3483ea.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef label_4{};
        [[maybe_unused]] MenuPageTextRef label_5{};
        [[maybe_unused]] bool pressed_7{};
        [[maybe_unused]] ReU32 value_8{};
        [[maybe_unused]] MenuPageTextRef label_9{};
        [[maybe_unused]] re::ReString owned_text_10{};
        [[maybe_unused]] MenuPageTextRef label_11{};
        [[maybe_unused]] re::ReString owned_text_12{};
        [[maybe_unused]] MenuPageTextRef label_13{};
        [[maybe_unused]] re::ReString owned_text_14{};
        [[maybe_unused]] MenuPageTextRef label_15{};
        [[maybe_unused]] re::ReString owned_text_16{};
        [[maybe_unused]] MenuPageTextRef label_17{};
        [[maybe_unused]] re::ReString owned_text_18{};
        [[maybe_unused]] MenuPageTextRef label_19{};
        [[maybe_unused]] re::ReString owned_text_20{};
        [[maybe_unused]] MenuPageTextRef label_21{};
        [[maybe_unused]] bool pressed_23{};
        [[maybe_unused]] bool value_24{};
        [[maybe_unused]] bool value_25{};
        [[maybe_unused]] MenuPageTextRef label_26{};
        [[maybe_unused]] re::ReString owned_text_27{};
        [[maybe_unused]] MenuPageTextRef label_28{};
        [[maybe_unused]] re::ReString owned_text_29{};
        [[maybe_unused]] MenuPageTextRef label_30{};
        [[maybe_unused]] re::ReString owned_text_31{};
        [[maybe_unused]] MenuPageTextRef label_32{};
        [[maybe_unused]] re::ReString owned_text_33{};
        [[maybe_unused]] MenuPageTextRef label_34{};
        [[maybe_unused]] bool pressed_36{};
        [[maybe_unused]] MenuPageTextRef label_37{};
        [[maybe_unused]] re::ReString owned_text_38{};
        [[maybe_unused]] MenuPageTextRef label_39{};
        [[maybe_unused]] re::ReString owned_text_40{};
        [[maybe_unused]] MenuPageTextRef label_41{};
        [[maybe_unused]] re::ReString owned_text_42{};
        [[maybe_unused]] MenuPageTextRef label_43{};
        [[maybe_unused]] re::ReString owned_text_44{};
        [[maybe_unused]] MenuPageTextRef label_45{};
        [[maybe_unused]] bool pressed_47{};
        [[maybe_unused]] ReU32 value_48{};
        [[maybe_unused]] MenuPageTextRef literal_49{};
        [[maybe_unused]] MenuPageTextRef label_50{};
        [[maybe_unused]] bool pressed_52{};
        [[maybe_unused]] MenuPageTextRef label_53{};
        [[maybe_unused]] MenuPageTextRef label_54{};
        [[maybe_unused]] bool pressed_56{};
        [[maybe_unused]] ReU32 value_57{};
        [[maybe_unused]] MenuPageTextRef literal_58{};
        [[maybe_unused]] MenuPageTextRef label_59{};
        [[maybe_unused]] bool pressed_61{};
        [[maybe_unused]] MenuPageTextRef literal_62{};
        [[maybe_unused]] MenuPageTextRef label_63{};
        [[maybe_unused]] bool pressed_65{};
        [[maybe_unused]] float value_66{};
        [[maybe_unused]] MenuPageTextRef literal_67{};
        [[maybe_unused]] re::ReString owned_text_68{};
        [[maybe_unused]] MenuPageTextRef label_69{};
        [[maybe_unused]] MenuPageTextRef literal_70{};
        [[maybe_unused]] MenuPageTextRef literal_71{};
        [[maybe_unused]] MenuPageTextRef label_72{};
        [[maybe_unused]] bool pressed_74{};
        [[maybe_unused]] float value_75{};
        [[maybe_unused]] MenuPageTextRef literal_76{};
        [[maybe_unused]] re::ReString owned_text_77{};
        [[maybe_unused]] MenuPageTextRef label_78{};
        [[maybe_unused]] MenuPageTextRef literal_79{};
        [[maybe_unused]] MenuPageTextRef label_80{};
        [[maybe_unused]] MenuPageTextRef label_81{};
        [[maybe_unused]] bool pressed_83{};
        [[maybe_unused]] MenuPageTextRef label_84{};
        [[maybe_unused]] MenuPageTextRef label_85{};
        [[maybe_unused]] bool pressed_87{};
        [[maybe_unused]] ReU32 value_88{};
        [[maybe_unused]] MenuPageTextRef label_89{};
        [[maybe_unused]] MenuPageTextRef label_90{};
        [[maybe_unused]] bool pressed_92{};
        [[maybe_unused]] MenuPageTextRef literal_93{};
        [[maybe_unused]] MenuPageTextRef label_94{};
        [[maybe_unused]] bool pressed_96{};
        [[maybe_unused]] MenuPageTextRef literal_97{};
        [[maybe_unused]] MenuPageTextRef label_98{};
        [[maybe_unused]] bool pressed_100{};
        [[maybe_unused]] MenuPageTextRef literal_101{};
        [[maybe_unused]] MenuPageTextRef label_102{};
        [[maybe_unused]] bool pressed_104{};
        [[maybe_unused]] MenuPageTextRef label_105{};
        [[maybe_unused]] MenuPageTextRef label_106{};
        [[maybe_unused]] bool pressed_108{};
        [[maybe_unused]] ReU32 value_109{};
        [[maybe_unused]] MenuPageTextRef literal_110{};
        [[maybe_unused]] MenuPageTextRef label_111{};
        [[maybe_unused]] bool pressed_113{};
        [[maybe_unused]] MenuPageTextRef literal_114{};
        [[maybe_unused]] MenuPageTextRef label_115{};
        [[maybe_unused]] bool pressed_117{};
        [[maybe_unused]] MenuPageTextRef label_118{};
        [[maybe_unused]] MenuPageTextRef label_119{};
        [[maybe_unused]] bool pressed_121{};
        [[maybe_unused]] MenuPageTextRef label_122{};
        [[maybe_unused]] MenuPageTextRef label_123{};
        [[maybe_unused]] bool pressed_125{};
        [[maybe_unused]] ReU32 value_126{};
        [[maybe_unused]] MenuPageTextRef label_127{};
        [[maybe_unused]] MenuPageTextRef label_128{};
        [[maybe_unused]] bool pressed_130{};
        [[maybe_unused]] MenuPageTextRef label_131{};
        [[maybe_unused]] MenuPageTextRef label_132{};
        [[maybe_unused]] bool pressed_134{};
        [[maybe_unused]] MenuPageTextRef label_135{};
        [[maybe_unused]] MenuPageTextRef label_136{};
        [[maybe_unused]] bool pressed_138{};
        [[maybe_unused]] MenuPageTextRef label_139{};
        [[maybe_unused]] MenuPageTextRef label_140{};
        [[maybe_unused]] bool pressed_142{};
        [[maybe_unused]] MenuPageTextRef label_143{};
        [[maybe_unused]] MenuPageTextRef label_144{};
        [[maybe_unused]] bool pressed_146{};
        [[maybe_unused]] MenuPageTextRef label_147{};
        [[maybe_unused]] MenuPageTextRef label_148{};
        [[maybe_unused]] bool pressed_150{};
        [[maybe_unused]] MenuPageTextRef label_151{};
        [[maybe_unused]] MenuPageTextRef literal_152{};
        [[maybe_unused]] re::ReString owned_text_153{};
        [[maybe_unused]] MenuPageTextRef label_154{};
        [[maybe_unused]] MenuPageTextRef label_155{};
        [[maybe_unused]] bool pressed_157{};
        [[maybe_unused]] MenuPageTextRef label_158{};
        [[maybe_unused]] bool pressed_160{};
        [[maybe_unused]] MenuPageTextRef label_161{};
        [[maybe_unused]] MenuPageTextRef label_162{};
        [[maybe_unused]] bool pressed_164{};
        label_1 =
            page_label(s, text_pool, -552, menu_literal_600, {"Movement", "Передвижение", "移动"});
        literal_2 = page_literal(text_pool, 24, menu_literal_601);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        label_4 = page_label(s, text_pool, -472, menu_literal_602,
                             {"Stops you from generating violations on the server",
                              "Предотвращает генерацию нарушений на сервере",
                              "阻止你在服务器上产生违规"});
        label_5 = page_label(s, text_pool, -488, menu_literal_603,
                             {"Anti Violations", "Анти-нарушения", "反违规"});
        {
            MenuControlRequest control_6;
            control_6.role = MenuControlRole::checkbox;
            control_6.site = 0x346e27;
            control_6.primitive = 0x3bd114;
            control_6.label = re::ReString(label_5);
            control_6.value = 0x3e9ea8;
            control_6.key = 0;
            control_6.color = 0;
            control_6.description = re::ReString(label_4);
            control_6.register_search = (0 != 0);
            pressed_7 = control(a, control_6).pressed;
        }
        value_8 = raw(s, 0x3e9ea8) & 255u;
        if ((value_8 == 0)) {
        } else {
            label_9 = page_label(s, text_pool, -361, menu_literal_604,
                                 {"Flyhack", "Флайхак", "飞行作弊"});
            owned_text_10 = re::ReString(label_9);
            label_11 = page_label(s, text_pool, -542, menu_literal_605,
                                  {"DrawFlyBar", "Индикатор полёта", "飞行条"});
            owned_text_12 = re::ReString(label_11);
            label_13 =
                page_label(s, text_pool, -368, menu_literal_606, {"Noclip", "Ноклип", "穿墙"});
            owned_text_14 = re::ReString(label_13);
            label_15 =
                page_label(s, text_pool, 32, menu_literal_607, {"Speed", "Скорость", "速度"});
            owned_text_16 = re::ReString(label_15);
            label_17 = page_label(s, text_pool, -530, menu_literal_608,
                                  {"DrawSpeedBar", "Индикатор скорости", "速度条"});
            owned_text_18 = re::ReString(label_17);
            label_19 =
                page_label(s, text_pool, -552, menu_literal_609, {"Terrain", "Террейн", "地形"});
            owned_text_20 = re::ReString(label_19);
            label_21 = page_label(s, text_pool, -542, menu_literal_610,
                                  {"Violations", "Нарушения", "违规"});
            {
                MenuControlRequest control_22;
                control_22.role = MenuControlRole::multiselect;
                control_22.site = 0x3470b4;
                control_22.primitive = 0x387d18;
                control_22.label = re::ReString(label_21);
                control_22.value = 0x3f0268;
                control_22.choices = {owned_text_10, owned_text_12, owned_text_14,
                                      owned_text_16, owned_text_18, owned_text_20};
                pressed_23 = control(a, control_22).pressed;
            }
            value_24 = bit(a, 0x3f0268, ReUSize(1));
            if ((value_24 != 0)) {
                label_37 = page_label(s, text_pool, -530, menu_literal_611,
                                      {"Pulsating Bar", "Пульсирующая полоса", "脉冲条"});
                owned_text_38 = re::ReString(label_37);
                label_39 = page_label(s, text_pool, -542, menu_literal_612,
                                      {"Normal Bar", "Обычная полоса", "普通条"});
                owned_text_40 = re::ReString(label_39);
                label_41 = page_label(s, text_pool, -361, menu_literal_613,
                                      {"Segmented Bar", "Сегментированная полоса", "分段条"});
                owned_text_42 = re::ReString(label_41);
                label_43 =
                    page_label(s, text_pool, 32, menu_literal_614, {"Circle", "Круг", "圆形"});
                owned_text_44 = re::ReString(label_43);
                label_45 = page_label(s, text_pool, -552, menu_literal_615,
                                      {"Bar Type", "Тип индикатора", "条形类型"});
                {
                    MenuControlRequest control_46;
                    control_46.role = MenuControlRole::combo_strings;
                    control_46.site = 0x3472b5;
                    control_46.primitive = 0x3bf008;
                    control_46.label = re::ReString(label_45);
                    control_46.value = 0x3eece8;
                    control_46.choices = {owned_text_38, owned_text_40, owned_text_42,
                                          owned_text_44};
                    pressed_47 = control(a, control_46).pressed;
                }
            } else {
                value_25 = bit(a, 0x3f0268, ReUSize(4));
                if ((value_25 == 0)) {
                } else {
                    label_26 = page_label(s, text_pool, -530, menu_literal_611,
                                          {"Pulsating Bar", "Пульсирующая полоса", "脉冲条"});
                    owned_text_27 = re::ReString(label_26);
                    label_28 = page_label(s, text_pool, -542, menu_literal_612,
                                          {"Normal Bar", "Обычная полоса", "普通条"});
                    owned_text_29 = re::ReString(label_28);
                    label_30 = page_label(s, text_pool, -361, menu_literal_613,
                                          {"Segmented Bar", "Сегментированная полоса", "分段条"});
                    owned_text_31 = re::ReString(label_30);
                    label_32 =
                        page_label(s, text_pool, 32, menu_literal_614, {"Circle", "Круг", "圆形"});
                    owned_text_33 = re::ReString(label_32);
                    label_34 = page_label(s, text_pool, -552, menu_literal_615,
                                          {"Bar Type", "Тип индикатора", "条形类型"});
                    {
                        MenuControlRequest control_35;
                        control_35.role = MenuControlRole::combo_strings;
                        control_35.site = 0x3472b5;
                        control_35.primitive = 0x3bf008;
                        control_35.label = re::ReString(label_34);
                        control_35.value = 0x3eece8;
                        control_35.choices = {owned_text_27, owned_text_29, owned_text_31,
                                              owned_text_33};
                        pressed_36 = control(a, control_35).pressed;
                    }
                }
            }
            value_48 = raw(s, 0x3eece8);
            if ((value_48 != 3)) {
            } else {
                literal_49 = page_literal(text_pool, 24, menu_literal_29);
                label_50 = page_label(s, text_pool, -512, menu_literal_616,
                                      {"Circle Distance", "Дистанция круга", "圆形距离"});
                {
                    MenuControlRequest control_51;
                    control_51.role = MenuControlRole::slider_float;
                    control_51.site = 0x347360;
                    control_51.primitive = 0x3c43f4;
                    control_51.label = re::ReString(label_50);
                    control_51.value = 0x3ed668;
                    control_51.minimum_float = 0.1509999930858612f;
                    control_51.maximum_float = 0.9909999966621399f;
                    control_51.format = re::ReString(literal_49);
                    control_51.flags = ReU32(0);
                    pressed_52 = control(a, control_51).pressed;
                }
            }
        }
        label_53 = page_label(
            s, text_pool, -152, menu_literal_617,
            {"Automatically limits your speed based on your current speedhack levels",
             "Автоматически ограничивает вашу скорость на основе текущего уровня спидхака",
             "根据你当前的加速等级自动限制你的速度"});
        label_54 =
            page_label(s, text_pool, -472, menu_literal_618,
                       {"Auto Adjusting Speedhack", "Авто регулировка спидхака", "自动调整加速"});
        {
            MenuControlRequest control_55;
            control_55.role = MenuControlRole::checkbox;
            control_55.site = 0x34740b;
            control_55.primitive = 0x3bd114;
            control_55.label = re::ReString(label_54);
            control_55.value = 0x3e9f98;
            control_55.key = 0;
            control_55.color = 0;
            control_55.description = re::ReString(label_53);
            control_55.register_search = (0 != 0);
            pressed_56 = control(a, control_55).pressed;
        }
        value_57 = raw(s, 0x3e9f98) & 255u;
        if ((value_57 == 0)) {
        } else {
            literal_58 = page_literal(text_pool, 24, menu_literal_29);
            label_59 = page_label(s, text_pool, -542, menu_literal_619,
                                  {"Speed Limit", "Лимит скорости", "速度限制"});
            {
                MenuControlRequest control_60;
                control_60.role = MenuControlRole::slider_float;
                control_60.site = 0x347498;
                control_60.primitive = 0x3c43f4;
                control_60.label = re::ReString(label_59);
                control_60.value = 0x3edc58;
                control_60.minimum_float = 0.0f;
                control_60.maximum_float = 5.300000190734863f;
                control_60.format = re::ReString(literal_58);
                control_60.flags = ReU32(0);
                pressed_61 = control(a, control_60).pressed;
            }
            literal_62 = page_literal(text_pool, 24, menu_literal_29);
            label_63 = page_label(s, text_pool, -542, menu_literal_620,
                                  {"Fast Speed", "Высокая скорость", "快速"});
            {
                MenuControlRequest control_64;
                control_64.role = MenuControlRole::slider_float;
                control_64.site = 0x347518;
                control_64.primitive = 0x3c43f4;
                control_64.label = re::ReString(label_63);
                control_64.value = 0x3edcf8;
                control_64.minimum_float = 0.0f;
                control_64.maximum_float = 3.0f;
                control_64.format = re::ReString(literal_62);
                control_64.flags = ReU32(0);
                pressed_65 = control(a, control_64).pressed;
            }
            call(a, 0x39ac04, {0.0f, -1.0f});
            value_66 = get<float>(a, 0x392424);
            call(a, 0x39b410, {(value_66 - 195.0f)});
            literal_67 = page_literal(text_pool, 24, menu_literal_40);
            owned_text_68 = re::ReString(literal_67);
            label_69 = page_label(s, text_pool, -552, menu_literal_621,
                                  {"Fast Key", "Клавиша быстрой", "快速键"});
            literal_70 = page_literal(text_pool, 32, menu_literal_41);
            keybind(a,
                    (re::ReString((re::ReString(owned_text_68) + re::ReString(label_69))) +
                     re::ReString(literal_70)),
                    0x3ef8f8, (1 != 0), 0x3475ef);
            literal_71 = page_literal(text_pool, 24, menu_literal_29);
            label_72 = page_label(s, text_pool, -542, menu_literal_622,
                                  {"Slow Speed", "Низкая скорость", "慢速"});
            {
                MenuControlRequest control_73;
                control_73.role = MenuControlRole::slider_float;
                control_73.site = 0x347678;
                control_73.primitive = 0x3c43f4;
                control_73.label = re::ReString(label_72);
                control_73.value = 0x3edca8;
                control_73.minimum_float = 0.0f;
                control_73.maximum_float = 0.800000011920929f;
                control_73.format = re::ReString(literal_71);
                control_73.flags = ReU32(0);
                pressed_74 = control(a, control_73).pressed;
            }
            call(a, 0x39ac04, {0.0f, -1.0f});
            value_75 = get<float>(a, 0x392424);
            call(a, 0x39b410, {(value_75 - 195.0f)});
            literal_76 = page_literal(text_pool, 24, menu_literal_40);
            owned_text_77 = re::ReString(literal_76);
            label_78 = page_label(s, text_pool, -552, menu_literal_623,
                                  {"Slow Key", "Клавиша медленной", "慢速键"});
            literal_79 = page_literal(text_pool, 32, menu_literal_41);
            keybind(a,
                    (re::ReString((re::ReString(owned_text_77) + re::ReString(label_78))) +
                     re::ReString(literal_79)),
                    0x3ef958, (1 != 0), 0x347747);
        }
        call(a, 0x398bec, {ReI32(1), ReI32(4278190335)});
        label_80 = page_label(
            s, text_pool, -472, menu_literal_624,
            {"Allows you to walk on water", "Позволяет ходить по воде", "允许你在水上行走"});
        label_81 = page_label(s, text_pool, -530, menu_literal_625,
                              {"Walk on water", "Хождение по воде", "水上行走"});
        {
            MenuControlRequest control_82;
            control_82.role = MenuControlRole::checkbox;
            control_82.site = 0x3477f9;
            control_82.primitive = 0x3bd114;
            control_82.label = re::ReString(label_81);
            control_82.value = 0x3f3478;
            control_82.key = 0;
            control_82.color = 0;
            control_82.description = re::ReString(label_80);
            control_82.register_search = (0 != 0);
            pressed_83 = control(a, control_82).pressed;
        }
        label_84 = page_label(s, text_pool, -472, menu_literal_626,
                              {"Allows you to fly around with your WASD keys",
                               "Позволяет летать с помощью клавиш WASD", "允许你使用WASD键飞行"});
        label_85 =
            page_label(s, text_pool, 24, menu_literal_604, {"Flyhack", "Флайхак", "飞行作弊"});
        {
            MenuControlRequest control_86;
            control_86.role = MenuControlRole::checkbox;
            control_86.site = 0x34789c;
            control_86.primitive = 0x3bd114;
            control_86.label = re::ReString(label_85);
            control_86.value = 0x3f35b8;
            control_86.key = 0x3efa78;
            control_86.color = 0;
            control_86.description = re::ReString(label_84);
            control_86.register_search = (0 != 0);
            pressed_87 = control(a, control_86).pressed;
        }
        value_88 = raw(s, 0x3f35b8) & 255u;
        if ((value_88 == 0)) {
        } else {
            label_89 = page_label(s, text_pool, -472, menu_literal_627,
                                  {"Allows you to clip into objects with flyhack",
                                   "Позволяет проходить сквозь объекты с флайхаком",
                                   "允许你使用飞行作弊穿过物体"});
            label_90 = page_label(s, text_pool, -512, menu_literal_628,
                                  {"Disable Collisions", "Отключить коллизии", "禁用碰撞"});
            {
                MenuControlRequest control_91;
                control_91.role = MenuControlRole::checkbox;
                control_91.site = 0x34794a;
                control_91.primitive = 0x3bd114;
                control_91.label = re::ReString(label_90);
                control_91.value = 0x3f2488;
                control_91.key = 0x3ef838;
                control_91.color = 0;
                control_91.description = re::ReString(label_89);
                control_91.register_search = (0 != 0);
                pressed_92 = control(a, control_91).pressed;
            }
            literal_93 = page_literal(text_pool, 24, menu_literal_29);
            label_94 = page_label(s, text_pool, -552, menu_literal_629,
                                  {"Fly Speed", "Скорость полёта", "飞行速度"});
            {
                MenuControlRequest control_95;
                control_95.role = MenuControlRole::slider_float;
                control_95.site = 0x3479cd;
                control_95.primitive = 0x3c43f4;
                control_95.label = re::ReString(label_94);
                control_95.value = 0x3f3e28;
                control_95.minimum_float = 0.0f;
                control_95.maximum_float = 75.0f;
                control_95.format = re::ReString(literal_93);
                control_95.flags = ReU32(0);
                pressed_96 = control(a, control_95).pressed;
            }
            literal_97 = page_literal(text_pool, 24, menu_literal_29);
            label_98 =
                page_label(s, text_pool, -512, menu_literal_630,
                           {"Shift Fly Speed", "Скорость полёта (Shift)", "飞行速度（Shift）"});
            {
                MenuControlRequest control_99;
                control_99.role = MenuControlRole::slider_float;
                control_99.site = 0x347a48;
                control_99.primitive = 0x3c43f4;
                control_99.label = re::ReString(label_98);
                control_99.value = 0x3f3ec8;
                control_99.minimum_float = 0.0f;
                control_99.maximum_float = 75.0f;
                control_99.format = re::ReString(literal_97);
                control_99.flags = ReU32(0);
                pressed_100 = control(a, control_99).pressed;
            }
            literal_101 = page_literal(text_pool, 24, menu_literal_29);
            label_102 =
                page_label(s, text_pool, -530, menu_literal_631,
                           {"Ctrl Fly Speed", "Скорость полёта (Ctrl)", "飞行速度（Ctrl）"});
            {
                MenuControlRequest control_103;
                control_103.role = MenuControlRole::slider_float;
                control_103.site = 0x347ac3;
                control_103.primitive = 0x3c43f4;
                control_103.label = re::ReString(label_102);
                control_103.value = 0x3f3e78;
                control_103.minimum_float = 0.0f;
                control_103.maximum_float = 75.0f;
                control_103.format = re::ReString(literal_101);
                control_103.flags = ReU32(0);
                pressed_104 = control(a, control_103).pressed;
            }
        }
        label_105 = page_label(s, text_pool, -472, menu_literal_632,
                               {"Allows you to flyhack freely and interact with doors/furnaces ETC "
                                "through walls at small distances",
                                "Позволяет свободно использовать флайхак и взаимодействовать с "
                                "дверями/печами и т.д. сквозь стены на небольших расстояниях",
                                "允许你自由使用飞行作弊，并在短距离内透过墙壁与门/熔炉等交互"});
        label_106 = page_label(s, text_pool, -542, menu_literal_633,
                               {"Interactive", "Интерактивный", "交互式"});
        {
            MenuControlRequest control_107;
            control_107.role = MenuControlRole::checkbox;
            control_107.site = 0x347b64;
            control_107.primitive = 0x3bd114;
            control_107.label = re::ReString(label_106);
            control_107.value = 0x3f3b08;
            control_107.key = 0x3d8298;
            control_107.color = 0;
            control_107.description = re::ReString(label_105);
            control_107.register_search = (0 != 0);
            pressed_108 = control(a, control_107).pressed;
        }
        value_109 = raw(s, 0x3f3b08) & 255u;
        if ((value_109 == 0)) {
        } else {
            literal_110 = page_literal(text_pool, 24, menu_literal_29);
            label_111 = page_label(s, text_pool, -542, menu_literal_620,
                                   {"Fast Speed", "Высокая скорость", "快速"});
            {
                MenuControlRequest control_112;
                control_112.role = MenuControlRole::slider_float;
                control_112.site = 0x347bf4;
                control_112.primitive = 0x3c43f4;
                control_112.label = re::ReString(label_111);
                control_112.value = 0x3f3fb8;
                control_112.minimum_float = 0.0f;
                control_112.maximum_float = 200.0f;
                control_112.format = re::ReString(literal_110);
                control_112.flags = ReU32(0);
                pressed_113 = control(a, control_112).pressed;
            }
            literal_114 = page_literal(text_pool, 24, menu_literal_29);
            label_115 = page_label(s, text_pool, -530, menu_literal_634,
                                   {"Normal Speed", "Нормальная скорость", "普通速度"});
            {
                MenuControlRequest control_116;
                control_116.role = MenuControlRole::slider_float;
                control_116.site = 0x347c6f;
                control_116.primitive = 0x3c43f4;
                control_116.label = re::ReString(label_115);
                control_116.value = 0x3f3f18;
                control_116.minimum_float = 0.0f;
                control_116.maximum_float = 200.0f;
                control_116.format = re::ReString(literal_114);
                control_116.flags = ReU32(0);
                pressed_117 = control(a, control_116).pressed;
            }
        }
        label_118 =
            page_label(s, text_pool, -152, menu_literal_635,
                       {"Allows you to sprint in any direction",
                        "Позволяет спринтовать в любом направлении", "允许你在任何方向冲刺"});
        label_119 =
            page_label(s, text_pool, -472, menu_literal_636,
                       {"Omni Directional Sprint", "Спринт в любом направлении", "全向冲刺"});
        {
            MenuControlRequest control_120;
            control_120.role = MenuControlRole::checkbox;
            control_120.site = 0x347d0e;
            control_120.primitive = 0x3bd114;
            control_120.label = re::ReString(label_119);
            control_120.value = 0x3f3888;
            control_120.key = 0;
            control_120.color = 0;
            control_120.description = re::ReString(label_118);
            control_120.register_search = (0 != 0);
            pressed_121 = control(a, control_120).pressed;
        }
        label_122 =
            page_label(s, text_pool, -472, menu_literal_637,
                       {"Spoofs your modelstate to OnLadder(your footsteps cannot be heard)",
                        "Подделывает состояние модели как 'На лестнице' (ваши шаги не слышны)",
                        "伪造你的模型状态为'在梯子上'（你的脚步声不会被听到）"});
        label_123 = page_label(s, text_pool, -552, menu_literal_638,
                               {"On Ladder", "На лестнице", "梯子模式"});
        {
            MenuControlRequest control_124;
            control_124.role = MenuControlRole::checkbox;
            control_124.site = 0x347daf;
            control_124.primitive = 0x3bd114;
            control_124.label = re::ReString(label_123);
            control_124.value = 0x3f3a68;
            control_124.key = 0x3efb98;
            control_124.color = 0;
            control_124.description = re::ReString(label_122);
            control_124.register_search = (0 != 0);
            pressed_125 = control(a, control_124).pressed;
        }
        value_126 = raw(s, 0x3f3a68) & 255u;
        if ((value_126 == 0)) {
        } else {
            label_127 = page_label(s, text_pool, -472, menu_literal_639,
                                   {"Changes the effect of your onladder mode(must touch a ladder "
                                    "one time on the server beforehand)",
                                    "Изменяет эффект режима 'на лестнице' (нужно один раз "
                                    "коснуться лестницы на сервере)",
                                    "改变你的行动模式效果（必须先在服务器上接触一次梯子）"});
            label_128 = page_label(s, text_pool, -552, menu_literal_640,
                                   {"Dick mode", "Режим 'члена'", "静步模式"});
            {
                MenuControlRequest control_129;
                control_129.role = MenuControlRole::checkbox;
                control_129.site = 0x347e59;
                control_129.primitive = 0x3bd114;
                control_129.label = re::ReString(label_128);
                control_129.value = 0x3f3018;
                control_129.key = 0;
                control_129.color = 0;
                control_129.description = re::ReString(label_127);
                control_129.register_search = (0 != 0);
                pressed_130 = control(a, control_129).pressed;
            }
        }
        label_131 = page_label(
            s, text_pool, -344, menu_literal_641,
            {"Allows you to teleport 5 meters, once the cheat says you've reached 66 mark, itll "
             "auto teleport you back, so make sure not to pass it up!",
             "Позволяет телепортироваться на 5 метров. Когда чит скажет, что вы достигли отметки "
             "66, он автоматически телепортирует вас обратно, так что не пропустите момент!",
             "允许你传送5米，一旦作弊提示你达到极限位置标记，它会自动将你传送回来，所以确保不要错过"
             "！"});
        label_132 =
            page_label(s, text_pool, -552, menu_literal_642, {"Teleport", "Телепорт", "传送"});
        {
            MenuControlRequest control_133;
            control_133.role = MenuControlRole::checkbox;
            control_133.site = 0x347efa;
            control_133.primitive = 0x3bd114;
            control_133.label = re::ReString(label_132);
            control_133.value = 0x3f3838;
            control_133.key = 0x3efb38;
            control_133.color = 0;
            control_133.description = re::ReString(label_131);
            control_133.register_search = (0 != 0);
            pressed_134 = control(a, control_133).pressed;
        }
        call(a, 0x39890c, {ReI32(1)});
        label_135 = page_label(s, text_pool, -472, menu_literal_643,
                               {"Sets your player as crouching, you can go full speed.",
                                "Устанавливает вашего игрока в положение приседания, вы можете "
                                "двигаться на полной скорости.",
                                "将你的玩家设置为蹲伏状态，你可以全速移动。"});
        label_136 = page_label(s, text_pool, -542, menu_literal_644,
                               {"Crouch Mode", "Режим приседания", "蹲伏模式"});
        {
            MenuControlRequest control_137;
            control_137.role = MenuControlRole::checkbox;
            control_137.site = 0x347fa2;
            control_137.primitive = 0x3bd114;
            control_137.label = re::ReString(label_136);
            control_137.value = 0x3f3ab8;
            control_137.key = 0x3ef658;
            control_137.color = 0;
            control_137.description = re::ReString(label_135);
            control_137.register_search = (0 != 0);
            pressed_138 = control(a, control_137).pressed;
        }
        label_139 =
            page_label(s, text_pool, -472, menu_literal_645,
                       {"Allows you climb walls like SPOODERMAN",
                        "Позволяет лазить по стенам как ЧЕЛОВЕК-ПАУК", "允许你像蜘蛛侠一样爬墙"});
        label_140 = page_label(s, text_pool, -552, menu_literal_646,
                               {"Spiderman", "Человек-паук", "蜘蛛侠"});
        {
            MenuControlRequest control_141;
            control_141.role = MenuControlRole::checkbox;
            control_141.site = 0x348043;
            control_141.primitive = 0x3bd114;
            control_141.label = re::ReString(label_140);
            control_141.value = 0x3f3248;
            control_141.key = 0x3efad8;
            control_141.color = 0;
            control_141.description = re::ReString(label_139);
            control_141.register_search = (0 != 0);
            pressed_142 = control(a, control_141).pressed;
        }
        label_143 = page_label(s, text_pool, -472, menu_literal_647,
                               {"Lets you jump instantly after another jump",
                                "Позволяет мгновенно прыгать после другого прыжка",
                                "让你在跳跃后立即再次跳跃"});
        label_144 = page_label(s, text_pool, -552, menu_literal_648,
                               {"Inf Jump", "Бесконечный прыжок", "无限跳跃"});
        {
            MenuControlRequest control_145;
            control_145.role = MenuControlRole::checkbox;
            control_145.site = 0x3480e4;
            control_145.primitive = 0x3bd114;
            control_145.label = re::ReString(label_144);
            control_145.value = 0x3f3568;
            control_145.key = 0x3ef778;
            control_145.color = 0;
            control_145.description = re::ReString(label_143);
            control_145.register_search = (0 != 0);
            pressed_146 = control(a, control_145).pressed;
        }
        label_147 = page_label(
            s, text_pool, -472, menu_literal_649,
            {"Automatically makes you jump every so often so you don't get kicked for being AFK",
             "Автоматически заставляет вас периодически прыгать, чтобы вас не кикнули за AFK",
             "自动让你定期跳跃，以免因挂机被踢出"});
        label_148 =
            page_label(s, text_pool, -552, menu_literal_650, {"Anti AFK", "Анти-AFK", "防挂机"});
        {
            MenuControlRequest control_149;
            control_149.role = MenuControlRole::checkbox;
            control_149.site = 0x348181;
            control_149.primitive = 0x3bd114;
            control_149.label = re::ReString(label_148);
            control_149.value = 0x3e4f08;
            control_149.key = 0;
            control_149.color = 0;
            control_149.description = re::ReString(label_147);
            control_149.register_search = (0 != 0);
            pressed_150 = control(a, control_149).pressed;
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_151 =
            page_label(s, text_pool, -552, menu_literal_596, {"Removals", "Удаления", "移除"});
        literal_152 = page_literal(text_pool, 24, menu_literal_597);
        owned_text_153 = re::ReString(literal_152);
        child(s, m, a, owned_text_153, re::ReString(label_151), Vec2{0.0f, -1.0f}, (1 != 0));
        label_154 =
            page_label(s, text_pool, -512, menu_literal_651,
                       {"Take no fall damage", "Не получать урон от падения", "不会受到摔落伤害"});
        label_155 = page_label(s, text_pool, 24, menu_literal_652,
                               {"No Fall", "Нет урона от падения", "无摔落伤害"});
        {
            MenuControlRequest control_156;
            control_156.role = MenuControlRole::checkbox;
            control_156.site = 0x3482c2;
            control_156.primitive = 0x3bd114;
            control_156.label = re::ReString(label_155);
            control_156.value = 0x3f3428;
            control_156.key = 0;
            control_156.color = 0;
            control_156.description = re::ReString(label_154);
            control_156.register_search = (0 != 0);
            pressed_157 = control(a, control_156).pressed;
        }
        label_158 = page_label(s, text_pool, -530, menu_literal_653,
                               {"No Collision", "Нет коллизий", "无碰撞"});
        {
            MenuControlRequest control_159;
            control_159.role = MenuControlRole::checkbox;
            control_159.site = 0x348326;
            control_159.primitive = 0x3bd114;
            control_159.label = re::ReString(label_158);
            control_159.value = 0x3f3518;
            control_159.key = 0;
            control_159.color = 0;
            control_159.description = "";
            control_159.register_search = (0 != 0);
            pressed_160 = control(a, control_159).pressed;
        }
        label_161 =
            page_label(s, text_pool, -472, menu_literal_654,
                       {"Gives you the ability to walk through spikes/fire without slowdown",
                        "Даёт возможность ходить сквозь шипы/огонь без замедления",
                        "让你能够穿过尖刺/火焰而不减速"});
        label_162 =
            page_label(s, text_pool, 24, menu_literal_655, {"No Drag", "Нет замедления", "无减速"});
        {
            MenuControlRequest control_163;
            control_163.role = MenuControlRole::checkbox;
            control_163.site = 0x3483c5;
            control_163.primitive = 0x3bd114;
            control_163.label = re::ReString(label_162);
            control_163.value = 0x3f3068;
            control_163.key = 0;
            control_163.color = 0;
            control_163.description = re::ReString(label_161);
            control_163.register_search = (0 != 0);
            pressed_164 = control(a, control_163).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_34841c(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x34841c..0x349d97.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef label_4{};
        [[maybe_unused]] MenuPageTextRef label_5{};
        [[maybe_unused]] bool pressed_7{};
        [[maybe_unused]] MenuPageTextRef label_8{};
        [[maybe_unused]] MenuPageTextRef label_9{};
        [[maybe_unused]] bool pressed_11{};
        [[maybe_unused]] ReU32 value_12{};
        [[maybe_unused]] MenuPageTextRef literal_13{};
        [[maybe_unused]] MenuPageTextRef label_14{};
        [[maybe_unused]] bool pressed_16{};
        [[maybe_unused]] MenuPageTextRef label_17{};
        [[maybe_unused]] MenuPageTextRef label_18{};
        [[maybe_unused]] bool pressed_20{};
        [[maybe_unused]] MenuPageTextRef label_21{};
        [[maybe_unused]] MenuPageTextRef label_22{};
        [[maybe_unused]] bool pressed_24{};
        [[maybe_unused]] MenuPageTextRef label_25{};
        [[maybe_unused]] MenuPageTextRef label_26{};
        [[maybe_unused]] bool pressed_28{};
        [[maybe_unused]] ReU32 value_29{};
        [[maybe_unused]] MenuPageTextRef label_30{};
        [[maybe_unused]] re::ReString owned_text_31{};
        [[maybe_unused]] MenuPageTextRef label_32{};
        [[maybe_unused]] re::ReString owned_text_33{};
        [[maybe_unused]] MenuPageTextRef label_34{};
        [[maybe_unused]] re::ReString owned_text_35{};
        [[maybe_unused]] MenuPageTextRef label_36{};
        [[maybe_unused]] bool pressed_38{};
        [[maybe_unused]] ReU32 value_39{};
        [[maybe_unused]] ReU32 value_40{};
        [[maybe_unused]] MenuPageTextRef literal_41{};
        [[maybe_unused]] MenuPageTextRef label_42{};
        [[maybe_unused]] bool pressed_44{};
        [[maybe_unused]] MenuPageTextRef label_45{};
        [[maybe_unused]] MenuPageTextRef label_46{};
        [[maybe_unused]] bool pressed_48{};
        [[maybe_unused]] ReU32 value_49{};
        [[maybe_unused]] MenuPageTextRef literal_50{};
        [[maybe_unused]] MenuPageTextRef label_51{};
        [[maybe_unused]] bool pressed_53{};
        [[maybe_unused]] MenuPageTextRef label_54{};
        [[maybe_unused]] MenuPageTextRef label_55{};
        [[maybe_unused]] bool pressed_57{};
        [[maybe_unused]] MenuPageTextRef label_58{};
        [[maybe_unused]] MenuPageTextRef label_59{};
        [[maybe_unused]] bool pressed_61{};
        [[maybe_unused]] ReU32 value_62{};
        [[maybe_unused]] MenuPageTextRef literal_63{};
        [[maybe_unused]] MenuPageTextRef literal_64{};
        [[maybe_unused]] bool pressed_66{};
        [[maybe_unused]] MenuPageTextRef label_67{};
        [[maybe_unused]] MenuPageTextRef label_68{};
        [[maybe_unused]] MenuPageTextRef label_69{};
        [[maybe_unused]] bool pressed_71{};
        [[maybe_unused]] ReU32 value_72{};
        [[maybe_unused]] MenuPageTextRef label_73{};
        [[maybe_unused]] re::ReString owned_text_74{};
        [[maybe_unused]] MenuPageTextRef label_75{};
        [[maybe_unused]] re::ReString owned_text_76{};
        [[maybe_unused]] MenuPageTextRef label_77{};
        [[maybe_unused]] re::ReString owned_text_78{};
        [[maybe_unused]] MenuPageTextRef label_79{};
        [[maybe_unused]] re::ReString owned_text_80{};
        [[maybe_unused]] MenuPageTextRef label_81{};
        [[maybe_unused]] re::ReString owned_text_82{};
        [[maybe_unused]] MenuPageTextRef label_83{};
        [[maybe_unused]] re::ReString owned_text_84{};
        [[maybe_unused]] MenuPageTextRef label_85{};
        [[maybe_unused]] bool pressed_87{};
        [[maybe_unused]] MenuPageTextRef label_88{};
        [[maybe_unused]] MenuPageTextRef label_89{};
        [[maybe_unused]] bool pressed_91{};
        [[maybe_unused]] ReU32 value_92{};
        [[maybe_unused]] MenuPageTextRef label_93{};
        [[maybe_unused]] re::ReString owned_text_94{};
        [[maybe_unused]] MenuPageTextRef label_95{};
        [[maybe_unused]] re::ReString owned_text_96{};
        [[maybe_unused]] MenuPageTextRef label_97{};
        [[maybe_unused]] re::ReString owned_text_98{};
        [[maybe_unused]] MenuPageTextRef label_99{};
        [[maybe_unused]] re::ReString owned_text_100{};
        [[maybe_unused]] MenuPageTextRef label_101{};
        [[maybe_unused]] re::ReString owned_text_102{};
        [[maybe_unused]] MenuPageTextRef label_103{};
        [[maybe_unused]] re::ReString owned_text_104{};
        [[maybe_unused]] MenuPageTextRef label_105{};
        [[maybe_unused]] bool pressed_107{};
        [[maybe_unused]] MenuPageTextRef label_108{};
        [[maybe_unused]] MenuPageTextRef label_109{};
        [[maybe_unused]] bool pressed_111{};
        [[maybe_unused]] MenuPageTextRef label_112{};
        [[maybe_unused]] MenuPageTextRef label_113{};
        [[maybe_unused]] bool pressed_115{};
        [[maybe_unused]] ReU32 value_116{};
        [[maybe_unused]] ReU32 value_117{};
        [[maybe_unused]] ReU32 value_118{};
        [[maybe_unused]] ReU32 value_119{};
        [[maybe_unused]] MenuPageTextRef label_120{};
        [[maybe_unused]] MenuPageTextRef label_121{};
        [[maybe_unused]] bool pressed_123{};
        [[maybe_unused]] ReU32 value_124{};
        [[maybe_unused]] MenuPageTextRef label_125{};
        [[maybe_unused]] MenuPageTextRef label_126{};
        [[maybe_unused]] bool pressed_128{};
        [[maybe_unused]] ReU32 value_129{};
        [[maybe_unused]] MenuPageTextRef label_130{};
        [[maybe_unused]] MenuPageTextRef label_131{};
        [[maybe_unused]] bool pressed_133{};
        [[maybe_unused]] MenuPageTextRef label_134{};
        [[maybe_unused]] MenuPageTextRef literal_135{};
        [[maybe_unused]] re::ReString owned_text_136{};
        [[maybe_unused]] MenuPageTextRef label_137{};
        [[maybe_unused]] MenuPageTextRef label_138{};
        [[maybe_unused]] bool pressed_140{};
        [[maybe_unused]] ReU32 value_141{};
        [[maybe_unused]] MenuPageTextRef label_142{};
        [[maybe_unused]] MenuPageTextRef label_143{};
        [[maybe_unused]] bool pressed_145{};
        [[maybe_unused]] MenuPageTextRef literal_146{};
        [[maybe_unused]] MenuPageTextRef label_147{};
        [[maybe_unused]] bool pressed_149{};
        [[maybe_unused]] MenuPageTextRef literal_150{};
        [[maybe_unused]] MenuPageTextRef label_151{};
        [[maybe_unused]] bool pressed_153{};
        [[maybe_unused]] MenuPageTextRef label_154{};
        [[maybe_unused]] MenuPageTextRef label_155{};
        [[maybe_unused]] bool pressed_157{};
        [[maybe_unused]] MenuPageTextRef label_158{};
        [[maybe_unused]] MenuPageTextRef label_159{};
        [[maybe_unused]] bool pressed_161{};
        [[maybe_unused]] ReU32 value_162{};
        [[maybe_unused]] MenuPageTextRef literal_163{};
        [[maybe_unused]] MenuPageTextRef label_164{};
        [[maybe_unused]] bool pressed_166{};
        [[maybe_unused]] MenuPageTextRef label_167{};
        [[maybe_unused]] MenuPageTextRef label_168{};
        [[maybe_unused]] bool pressed_170{};
        [[maybe_unused]] ReU32 value_171{};
        [[maybe_unused]] MenuPageTextRef literal_172{};
        [[maybe_unused]] MenuPageTextRef label_173{};
        [[maybe_unused]] bool pressed_175{};
        [[maybe_unused]] MenuPageTextRef label_176{};
        [[maybe_unused]] MenuPageTextRef label_177{};
        [[maybe_unused]] MenuPageTextRef label_178{};
        [[maybe_unused]] bool pressed_180{};
        [[maybe_unused]] MenuPageTextRef label_181{};
        [[maybe_unused]] MenuPageTextRef label_182{};
        [[maybe_unused]] bool pressed_184{};
        label_1 = page_label(s, text_pool, 32, menu_literal_306, {"Weapon", "Оружие", "武器"});
        literal_2 = page_literal(text_pool, 24, menu_literal_45);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        label_4 = page_label(s, text_pool, -376, menu_literal_656,
                             {"Allows you to shoot your minigun without spinning it up",
                              "Позволяет стрелять из минигана без раскрутки",
                              "允许你在不预热的情况下射击加特林"});
        label_5 = page_label(s, text_pool, -472, menu_literal_657,
                             {"No Minigun Spinup", "Нет раскрутки минигана", "无加特林预热"});
        {
            MenuControlRequest control_6;
            control_6.role = MenuControlRole::checkbox;
            control_6.site = 0x348575;
            control_6.primitive = 0x3bd114;
            control_6.label = re::ReString(label_5);
            control_6.value = 0x3e5048;
            control_6.key = 0;
            control_6.color = 0;
            control_6.description = re::ReString(label_4);
            control_6.register_search = (0 != 0);
            pressed_7 = control(a, control_6).pressed;
        }
        label_8 = page_label(s, text_pool, -376, menu_literal_658,
                             {"Changes the thickness of your projectile",
                              "Изменяет толщину вашего снаряда", "改变你弹道的粗细"});
        label_9 = page_label(s, text_pool, -488, menu_literal_659,
                             {"Thick Bullet", "Толстая пуля", "粗子弹"});
        {
            MenuControlRequest control_10;
            control_10.role = MenuControlRole::checkbox;
            control_10.site = 0x348612;
            control_10.primitive = 0x3bd114;
            control_10.label = re::ReString(label_9);
            control_10.value = 0x3f7df8;
            control_10.key = 0;
            control_10.color = 0;
            control_10.description = re::ReString(label_8);
            control_10.register_search = (0 != 0);
            pressed_11 = control(a, control_10).pressed;
        }
        value_12 = raw(s, 0x3f7df8) & 255u;
        if ((value_12 == 0)) {
        } else {
            literal_13 = page_literal(text_pool, 24, menu_literal_29);
            label_14 =
                page_label(s, text_pool, -504, menu_literal_152, {"Thickness", "Толщина", "粗细"});
            {
                MenuControlRequest control_15;
                control_15.role = MenuControlRole::slider_float;
                control_15.site = 0x3486a4;
                control_15.primitive = 0x3c43f4;
                control_15.label = re::ReString(label_14);
                control_15.value = 0x3f7f88;
                control_15.minimum_float = 0.05000000074505806f;
                control_15.maximum_float = 1.100000023841858f;
                control_15.format = re::ReString(literal_13);
                control_15.flags = ReU32(0);
                pressed_16 = control(a, control_15).pressed;
            }
        }
        label_17 = page_label(s, text_pool, -376, menu_literal_660,
                              {"Makes your gun fully automatic",
                               "Делает ваше оружие полностью автоматическим", "让你的枪械全自动"});
        label_18 = page_label(s, text_pool, -504, menu_literal_661,
                              {"Full Auto", "Полный автомат", "全自动"});
        {
            MenuControlRequest control_19;
            control_19.role = MenuControlRole::checkbox;
            control_19.site = 0x348741;
            control_19.primitive = 0x3bd114;
            control_19.label = re::ReString(label_18);
            control_19.value = 0x3e9728;
            control_19.key = 0;
            control_19.color = 0;
            control_19.description = re::ReString(label_17);
            control_19.register_search = (0 != 0);
            pressed_20 = control(a, control_19).pressed;
        }
        call(a, 0x398bec, {ReI32(1), ReI32(4278190335)});
        label_21 = page_label(s, text_pool, -376, menu_literal_662,
                              {"Allows you shoot while swimming,onladder,jumping, etc",
                               "Позволяет стрелять во время плавания, на лестнице, прыжков и т.д.",
                               "允许你在游泳、爬梯子、跳跃等状态下射击"});
        label_22 = page_label(s, text_pool, -504, menu_literal_663,
                              {"Can Shoot", "Можно стрелять", "可射击"});
        {
            MenuControlRequest control_23;
            control_23.role = MenuControlRole::checkbox;
            control_23.site = 0x3487ea;
            control_23.primitive = 0x3bd114;
            control_23.label = re::ReString(label_22);
            control_23.value = 0x3f3a18;
            control_23.key = 0;
            control_23.color = 0;
            control_23.description = re::ReString(label_21);
            control_23.register_search = (0 != 0);
            pressed_24 = control(a, control_23).pressed;
        }
        call(a, 0x39890c, {ReI32(1)});
        label_25 = page_label(s, text_pool, -376, menu_literal_664,
                              {"Changes your eoka hitchance", "Изменяет шанс попадания Эоки",
                               "改变你的摇摇乐命中率"});
        label_26 = page_label(s, text_pool, -472, menu_literal_665,
                              {"Eoka Modifications", "Модификации Эоки", "摇摇乐修改"});
        {
            MenuControlRequest control_27;
            control_27.role = MenuControlRole::checkbox;
            control_27.site = 0x34888e;
            control_27.primitive = 0x3bd114;
            control_27.label = re::ReString(label_26);
            control_27.value = 0x3e97c8;
            control_27.key = 0;
            control_27.color = 0;
            control_27.description = re::ReString(label_25);
            control_27.register_search = (0 != 0);
            pressed_28 = control(a, control_27).pressed;
        }
        value_29 = raw(s, 0x3e97c8) & 255u;
        if ((value_29 == 0)) {
        } else {
            label_30 = page_label(s, text_pool, -448, menu_literal_666, {"Legit", "Легит", "合法"});
            owned_text_31 = re::ReString(label_30);
            label_32 = page_label(s, text_pool, 32, menu_literal_667, {"Rage", "Рейдж", "暴力"});
            owned_text_33 = re::ReString(label_32);
            label_34 = page_label(s, text_pool, -504, menu_literal_668,
                                  {"NeverHit", "Никогда не промах", "永不空枪"});
            owned_text_35 = re::ReString(label_34);
            label_36 = page_label(s, text_pool, -402, menu_literal_669,
                                  {"Eoka Mode", "Режим Эоки", "暴怒模式"});
            {
                MenuControlRequest control_37;
                control_37.role = MenuControlRole::combo_strings;
                control_37.site = 0x348a0f;
                control_37.primitive = 0x3bf008;
                control_37.label = re::ReString(label_36);
                control_37.value = 0x3eea68;
                control_37.choices = {owned_text_31, owned_text_33, owned_text_35};
                pressed_38 = control(a, control_37).pressed;
            }
            value_39 = raw(s, 0x3e97c8) & 255u;
        }
        value_40 = raw(s, 0x3eea68);
        if ((value_40 != 0)) {
        } else {
            if ((((value_29 == 0) ? value_29 : value_39) == 0)) {
            } else {
                literal_41 = page_literal(text_pool, 24, menu_literal_29);
                label_42 = page_label(s, text_pool, -472, menu_literal_670,
                                      {"Success Fraction", "Доля успеха", "成功比例"});
                {
                    MenuControlRequest control_43;
                    control_43.role = MenuControlRole::slider_float;
                    control_43.site = 0x348ac3;
                    control_43.primitive = 0x3c43f4;
                    control_43.label = re::ReString(label_42);
                    control_43.value = 0x3ed8e8;
                    control_43.minimum_float = 0.0f;
                    control_43.maximum_float = 1.0f;
                    control_43.format = re::ReString(literal_41);
                    control_43.flags = ReU32(0);
                    pressed_44 = control(a, control_43).pressed;
                }
            }
        }
        label_45 = page_label(s, text_pool, -376, menu_literal_671,
                              {"Changes your projectile speed", "Изменяет скорость вашего снаряда",
                               "改变你的弹道速度"});
        label_46 = page_label(s, text_pool, -472, menu_literal_672,
                              {"Projectile Speed", "Скорость снаряда", "弹道速度"});
        {
            MenuControlRequest control_47;
            control_47.role = MenuControlRole::checkbox;
            control_47.site = 0x348b60;
            control_47.primitive = 0x3bd114;
            control_47.label = re::ReString(label_46);
            control_47.value = 0x3d7ce8;
            control_47.key = 0;
            control_47.color = 0;
            control_47.description = re::ReString(label_45);
            control_47.register_search = (0 != 0);
            pressed_48 = control(a, control_47).pressed;
        }
        value_49 = raw(s, 0x3d7ce8) & 255u;
        if ((value_49 == 0)) {
        } else {
            literal_50 = page_literal(text_pool, 24, menu_literal_29);
            label_51 =
                page_label(s, text_pool, 32, menu_literal_607, {"Speed", "Скорость", "速度"});
            {
                MenuControlRequest control_52;
                control_52.role = MenuControlRole::slider_float;
                control_52.site = 0x348bf4;
                control_52.primitive = 0x3c43f4;
                control_52.label = re::ReString(label_51);
                control_52.value = 0x3d80a8;
                control_52.minimum_float = 0.5f;
                control_52.maximum_float = 1.4950000047683716f;
                control_52.format = re::ReString(literal_50);
                control_52.flags = ReU32(0);
                pressed_53 = control(a, control_52).pressed;
            }
        }
        label_54 = page_label(s, text_pool, -472, menu_literal_673,
                              {"Removes weapon bob", "Убирает покачивание оружия", "移除武器晃动"});
        label_55 = page_label(s, text_pool, -488, menu_literal_674,
                              {"No Weapon Bob", "Нет покачивания оружия", "无武器晃动"});
        {
            MenuControlRequest control_56;
            control_56.role = MenuControlRole::checkbox;
            control_56.site = 0x348c92;
            control_56.primitive = 0x3bd114;
            control_56.label = re::ReString(label_55);
            control_56.value = 0x3e9e08;
            control_56.key = 0;
            control_56.color = 0;
            control_56.description = re::ReString(label_54);
            control_56.register_search = (0 != 0);
            pressed_57 = control(a, control_56).pressed;
        }
        label_58 = page_label(s, text_pool, -376, menu_literal_675,
                              {"Visually makes your bullets bigger", "", ""});
        label_59 =
            page_label(s, text_pool, -472, menu_literal_676,
                       {"Visual Projectile Size", "Визуальный размер снаряда", "视觉弹丸尺寸"});
        {
            MenuControlRequest control_60;
            control_60.role = MenuControlRole::checkbox;
            control_60.site = 0x348d26;
            control_60.primitive = 0x3bd114;
            control_60.label = re::ReString(label_59);
            control_60.value = 0x3f7da8;
            control_60.key = 0;
            control_60.color = 0;
            control_60.description = re::ReString(label_58);
            control_60.register_search = (0 != 0);
            pressed_61 = control(a, control_60).pressed;
        }
        value_62 = raw(s, 0x3f7da8) & 255u;
        if ((value_62 == 0)) {
        } else {
            literal_63 = page_literal(text_pool, 24, menu_literal_29);
            literal_64 = page_literal(text_pool, -424, menu_literal_57);
            {
                MenuControlRequest control_65;
                control_65.role = MenuControlRole::slider_float;
                control_65.site = 0x348d89;
                control_65.primitive = 0x3c43f4;
                control_65.label = re::ReString(literal_64);
                control_65.value = 0x3f7e98;
                control_65.minimum_float = 0.0f;
                control_65.maximum_float = 150.0f;
                control_65.format = re::ReString(literal_63);
                control_65.flags = ReU32(0);
                pressed_66 = control(a, control_65).pressed;
            }
        }
        label_67 = page_label(s, text_pool, 16, menu_literal_677, {"Melee", "Ближний бой", "近战"});
        call(a, 0x3c4e90, {re::ReString(label_67)});
        label_68 = page_label(
            s, text_pool, -376, menu_literal_678,
            {"Changes the hit effect when you hit a entity to the dropdown below",
             "Изменяет эффект попадания при ударе по сущности на эффект из выпадающего списка ниже",
             "将你击中实体时的命中效果更改为下面下拉菜单中的效果"});
        label_69 = page_label(
            s, text_pool, -472, menu_literal_679,
            {"Custom Melee Effects", "Кастомные эффекты ближнего боя", "自定义近战效果"});
        {
            MenuControlRequest control_70;
            control_70.role = MenuControlRole::checkbox;
            control_70.site = 0x348e6e;
            control_70.primitive = 0x3bd114;
            control_70.label = re::ReString(label_69);
            control_70.value = 0x3fc7e8;
            control_70.key = 0;
            control_70.color = 0;
            control_70.description = re::ReString(label_68);
            control_70.register_search = (0 != 0);
            pressed_71 = control(a, control_70).pressed;
        }
        value_72 = raw(s, 0x3fc7e8) & 255u;
        if ((value_72 == 0)) {
        } else {
            label_73 = page_label(s, text_pool, -448, menu_literal_92, {"Glass", "Стекло", "玻璃"});
            owned_text_74 = re::ReString(label_73);
            label_75 = page_label(s, text_pool, -408, menu_literal_680, {"Water", "Вода", "水"});
            owned_text_76 = re::ReString(label_75);
            label_77 = page_label(s, text_pool, 32, menu_literal_681, {"Tree", "Дерево", "树"});
            owned_text_78 = re::ReString(label_77);
            label_79 = page_label(s, text_pool, -402, menu_literal_95, {"Flesh", "Плоть", "肉体"});
            owned_text_80 = re::ReString(label_79);
            label_81 = page_label(s, text_pool, -504, menu_literal_93, {"Metal", "Металл", "金属"});
            owned_text_82 = re::ReString(label_81);
            label_83 = page_label(s, text_pool, -442, menu_literal_682, {"Dirt", "Грязь", "泥土"});
            owned_text_84 = re::ReString(label_83);
            label_85 = page_label(s, text_pool, -488, menu_literal_683,
                                  {"Effect Type", "Тип эффекта", "效果类型"});
            {
                MenuControlRequest control_86;
                control_86.role = MenuControlRole::combo_strings;
                control_86.site = 0x3490cf;
                control_86.primitive = 0x3bf008;
                control_86.label = re::ReString(label_85);
                control_86.value = 0x3fce68;
                control_86.choices = {owned_text_74, owned_text_76, owned_text_78,
                                      owned_text_80, owned_text_82, owned_text_84};
                pressed_87 = control(a, control_86).pressed;
            }
        }
        label_88 = page_label(
            s, text_pool, -376, menu_literal_684,
            {"Automatically hits players with your melee, you can hit mounted players from much "
             "further if you enable Desync On Keypress",
             "Автоматически бьёт игроков вашим оружием ближнего боя. Вы можете бить прикованных "
             "игроков с гораздо большего расстояния, если включите 'Десинк по клавише'",
             "自动用你的近战武器攻击玩家，如果你启用了'按键反同步'"
             "，你可以从更远的距离攻击被铐住的玩家"});
        label_89 = page_label(s, text_pool, -488, menu_literal_685,
                              {"Melee Players", "Ближний бой по игрокам", "近战玩家"});
        {
            MenuControlRequest control_90;
            control_90.role = MenuControlRole::checkbox;
            control_90.site = 0x349185;
            control_90.primitive = 0x3bd114;
            control_90.label = re::ReString(label_89);
            control_90.value = 0x3d7f68;
            control_90.key = 0;
            control_90.color = 0;
            control_90.description = re::ReString(label_88);
            control_90.register_search = (0 != 0);
            pressed_91 = control(a, control_90).pressed;
        }
        value_92 = raw(s, 0x3d7f68) & 255u;
        if ((value_92 == 0)) {
        } else {
            label_93 = page_label(s, text_pool, 32, menu_literal_31, {"Head", "Голова", "头部"});
            owned_text_94 = re::ReString(label_93);
            label_95 = page_label(s, text_pool, -504, menu_literal_85, {"Chest", "Грудь", "胸部"});
            owned_text_96 = re::ReString(label_95);
            label_97 = page_label(s, text_pool, -442, menu_literal_86, {"Hand", "Рука", "手部"});
            owned_text_98 = re::ReString(label_97);
            label_99 = page_label(s, text_pool, -408, menu_literal_87, {"Foot", "Нога", "脚部"});
            owned_text_100 = re::ReString(label_99);
            label_101 =
                page_label(s, text_pool, -448, menu_literal_88, {"Rand", "Случайно", "随机"});
            owned_text_102 = re::ReString(label_101);
            label_103 = page_label(s, text_pool, -488, menu_literal_89,
                                   {"Rand NoHead", "Случайно без головы", "随机(无头)"});
            owned_text_104 = re::ReString(label_103);
            label_105 = page_label(s, text_pool, -402, menu_literal_686,
                                   {"Melee Bone", "Кость ближнего боя", "近战骨骼"});
            {
                MenuControlRequest control_106;
                control_106.role = MenuControlRole::combo_strings;
                control_106.site = 0x3493e6;
                control_106.primitive = 0x3bf008;
                control_106.label = re::ReString(label_105);
                control_106.value = 0x3d80f8;
                control_106.choices = {owned_text_94,  owned_text_96,  owned_text_98,
                                       owned_text_100, owned_text_102, owned_text_104};
                pressed_107 = control(a, control_106).pressed;
            }
        }
        label_108 = page_label(s, text_pool, -376, menu_literal_687,
                               {"Automatically hits ores with your melee tool(Only works on ores "
                                "you have selected on your ESP)",
                                "Автоматически бьёт руду вашим инструментом ближнего боя (работает "
                                "только на руде, выбранной в вашем ESP)",
                                "自动用你的近战工具攻击矿石（仅对你ESP中选择的矿石有效）"});
        label_109 = page_label(s, text_pool, -504, menu_literal_688,
                               {"Melee Ores", "Ближний бой по руде", "近战矿石"});
        {
            MenuControlRequest control_110;
            control_110.role = MenuControlRole::checkbox;
            control_110.site = 0x34949c;
            control_110.primitive = 0x3bd114;
            control_110.label = re::ReString(label_109);
            control_110.value = 0x3d7f18;
            control_110.key = 0;
            control_110.color = 0;
            control_110.description = re::ReString(label_108);
            control_110.register_search = (0 != 0);
            pressed_111 = control(a, control_110).pressed;
        }
        label_112 =
            page_label(s, text_pool, -376, menu_literal_689,
                       {"Automatically hits heli with your melee, you can hit the heli from much "
                        "further if you enable Desync On Keypress",
                        "Автоматически бьёт вертолёт вашим оружием ближнего боя. Вы можете бить "
                        "вертолёт с гораздо большего расстояния, если включите 'Десинк по клавише'",
                        "自动用你的近战武器攻击直升机，如果你启用了'按键反同步'"
                        "，你可以从更远的距离攻击直升机"});
        label_113 = page_label(s, text_pool, -472, menu_literal_690,
                               {"Melee Helicopter", "Ближний бой по вертолёту", "近战直升机"});
        {
            MenuControlRequest control_114;
            control_114.role = MenuControlRole::checkbox;
            control_114.site = 0x349539;
            control_114.primitive = 0x3bd114;
            control_114.label = re::ReString(label_113);
            control_114.value = 0x3d7d38;
            control_114.key = 0;
            control_114.color = 0;
            control_114.description = re::ReString(label_112);
            control_114.register_search = (0 != 0);
            pressed_115 = control(a, control_114).pressed;
        }
        value_116 = raw(s, 0x3d7f68) & 255u;
        if ((value_116 != 0)) {
            value_129 = raw(s, 0x3d7c98) & 255u;
            if ((value_129 != 0)) {
            } else {
                label_130 =
                    page_label(s, text_pool, -376, menu_literal_691,
                               {"This will automatically make your melee strike when in range of a "
                                "player/heli or ore.",
                                "Автоматически наносит удар ближнего боя, когда вы в радиусе "
                                "действия игрока/вертолёта или руды.",
                                "当你在攻击玩家/直升机或矿石的范围内时，自动进行近战攻击。"});
                label_131 = page_label(s, text_pool, -488, menu_literal_692,
                                       {"Auto Strike", "Авто удар", "自动打击"});
                {
                    MenuControlRequest control_132;
                    control_132.role = MenuControlRole::checkbox;
                    control_132.site = 0x349602;
                    control_132.primitive = 0x3bd114;
                    control_132.label = re::ReString(label_131);
                    control_132.value = 0x3e4eb8;
                    control_132.key = 0;
                    control_132.color = 0;
                    control_132.description = re::ReString(label_130);
                    control_132.register_search = (0 != 0);
                    pressed_133 = control(a, control_132).pressed;
                }
            }
        } else {
            value_117 = raw(s, 0x3d7f18) & 255u;
            if ((value_117 != 0)) {
                value_124 = raw(s, 0x3d7c98) & 255u;
                if ((value_124 != 0)) {
                } else {
                    label_125 =
                        page_label(s, text_pool, -376, menu_literal_691,
                                   {"This will automatically make your melee strike when in range "
                                    "of a player/heli or ore.",
                                    "Автоматически наносит удар ближнего боя, когда вы в радиусе "
                                    "действия игрока/вертолёта или руды.",
                                    "当你在攻击玩家/直升机或矿石的范围内时，自动进行近战攻击。"});
                    label_126 = page_label(s, text_pool, -488, menu_literal_692,
                                           {"Auto Strike", "Авто удар", "自动打击"});
                    {
                        MenuControlRequest control_127;
                        control_127.role = MenuControlRole::checkbox;
                        control_127.site = 0x349602;
                        control_127.primitive = 0x3bd114;
                        control_127.label = re::ReString(label_126);
                        control_127.value = 0x3e4eb8;
                        control_127.key = 0;
                        control_127.color = 0;
                        control_127.description = re::ReString(label_125);
                        control_127.register_search = (0 != 0);
                        pressed_128 = control(a, control_127).pressed;
                    }
                }
            } else {
                value_118 = raw(s, 0x3d7d38) & 255u;
                if ((value_118 == 0)) {
                } else {
                    value_119 = raw(s, 0x3d7c98) & 255u;
                    if ((value_119 != 0)) {
                    } else {
                        label_120 = page_label(
                            s, text_pool, -376, menu_literal_691,
                            {"This will automatically make your melee strike when in range of a "
                             "player/heli or ore.",
                             "Автоматически наносит удар ближнего боя, когда вы в радиусе действия "
                             "игрока/вертолёта или руды.",
                             "当你在攻击玩家/直升机或矿石的范围内时，自动进行近战攻击。"});
                        label_121 = page_label(s, text_pool, -488, menu_literal_692,
                                               {"Auto Strike", "Авто удар", "自动打击"});
                        {
                            MenuControlRequest control_122;
                            control_122.role = MenuControlRole::checkbox;
                            control_122.site = 0x349602;
                            control_122.primitive = 0x3bd114;
                            control_122.label = re::ReString(label_121);
                            control_122.value = 0x3e4eb8;
                            control_122.key = 0;
                            control_122.color = 0;
                            control_122.description = re::ReString(label_120);
                            control_122.register_search = (0 != 0);
                            pressed_123 = control(a, control_122).pressed;
                        }
                    }
                }
            }
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_134 =
            page_label(s, text_pool, -504, menu_literal_596, {"Removals", "Удаления", "移除"});
        literal_135 = page_literal(text_pool, 24, menu_literal_597);
        owned_text_136 = re::ReString(literal_135);
        child(s, m, a, owned_text_136, re::ReString(label_134), Vec2{0.0f, -1.0f}, (1 != 0));
        label_137 = page_label(s, text_pool, -376, menu_literal_693,
                               {"Lets you adjust the X and Y for your recoil",
                                "Позволяет настроить X и Y для отдачи", "让你调整后坐力的X和Y"});
        label_138 = page_label(s, text_pool, 24, menu_literal_694, {"Recoil", "Отдача", "后坐力"});
        {
            MenuControlRequest control_139;
            control_139.role = MenuControlRole::checkbox;
            control_139.site = 0x349750;
            control_139.primitive = 0x3bd114;
            control_139.label = re::ReString(label_138);
            control_139.value = 0x3f31f8;
            control_139.key = 0x3efbf8;
            control_139.color = 0;
            control_139.description = re::ReString(label_137);
            control_139.register_search = (0 != 0);
            pressed_140 = control(a, control_139).pressed;
        }
        value_141 = raw(s, 0x3f31f8) & 255u;
        if ((value_141 == 0)) {
        } else {
            label_142 =
                page_label(s, text_pool, -376, menu_literal_695,
                           {"This will write to recoil properties",
                            "Это будет записывать в свойства отдачи", "这将写入后坐力属性"});
            label_143 = page_label(s, text_pool, -504, menu_literal_696,
                                   {"RageMode", "Режим рейджа", "狂怒模式"});
            {
                MenuControlRequest control_144;
                control_144.role = MenuControlRole::checkbox;
                control_144.site = 0x3497fa;
                control_144.primitive = 0x3bd114;
                control_144.label = re::ReString(label_143);
                control_144.value = 0x3fc658;
                control_144.key = 0;
                control_144.color = 0;
                control_144.description = re::ReString(label_142);
                control_144.register_search = (0 != 0);
                pressed_145 = control(a, control_144).pressed;
            }
            literal_146 = page_literal(text_pool, 24, menu_literal_60);
            label_147 = page_label(s, text_pool, -504, menu_literal_697,
                                   {"Recoil X", "Отдача X", "后坐力X"});
            {
                MenuControlRequest control_148;
                control_148.role = MenuControlRole::slider_integer;
                control_148.site = 0x349878;
                control_148.primitive = 0x3c4438;
                control_148.label = re::ReString(label_147);
                control_148.value = 0x3fd048;
                control_148.minimum = 0;
                control_148.maximum = 100;
                control_148.format = re::ReString(literal_146);
                control_148.flags = ReU32(0);
                pressed_149 = control(a, control_148).pressed;
            }
            literal_150 = page_literal(text_pool, 24, menu_literal_60);
            label_151 = page_label(s, text_pool, -504, menu_literal_698,
                                   {"Recoil Y", "Отдача Y", "后坐力Y"});
            {
                MenuControlRequest control_152;
                control_152.role = MenuControlRole::slider_integer;
                control_152.site = 0x3498f6;
                control_152.primitive = 0x3c4438;
                control_152.label = re::ReString(label_151);
                control_152.value = 0x3fd098;
                control_152.minimum = 0;
                control_152.maximum = 100;
                control_152.format = re::ReString(literal_150);
                control_152.flags = ReU32(0);
                pressed_153 = control(a, control_152).pressed;
            }
        }
        label_154 = page_label(s, text_pool, -376, menu_literal_699,
                               {"Removes the sway from your weapon",
                                "Убирает раскачку вашего оружия", "移除你武器的晃动"});
        label_155 =
            page_label(s, text_pool, 24, menu_literal_700, {"No Sway", "Нет раскачки", "无晃动"});
        {
            MenuControlRequest control_156;
            control_156.role = MenuControlRole::checkbox;
            control_156.site = 0x349995;
            control_156.primitive = 0x3bd114;
            control_156.label = re::ReString(label_155);
            control_156.value = 0x3e96d8;
            control_156.key = 0;
            control_156.color = 0;
            control_156.description = re::ReString(label_154);
            control_156.register_search = (0 != 0);
            pressed_157 = control(a, control_156).pressed;
        }
        label_158 = page_label(s, text_pool, -376, menu_literal_701,
                               {"Modifies your projectiles spread based on the slider below. 0 for "
                                "nospread 100 for full spread",
                                "Изменяет разброс ваших снарядов на основе ползунка ниже. 0 для "
                                "отсутствия разброса, 100 для полного разброса",
                                "根据下面的滑块修改你的弹道散布。0表示无散布，100表示完全散布"});
        label_159 = page_label(s, text_pool, 24, menu_literal_702, {"Spread", "Разброс", "散布"});
        {
            MenuControlRequest control_160;
            control_160.role = MenuControlRole::checkbox;
            control_160.site = 0x349a34;
            control_160.primitive = 0x3bd114;
            control_160.label = re::ReString(label_159);
            control_160.value = 0x3f7d08;
            control_160.key = 0;
            control_160.color = 0;
            control_160.description = re::ReString(label_158);
            control_160.register_search = (0 != 0);
            pressed_161 = control(a, control_160).pressed;
        }
        value_162 = raw(s, 0x3f7d08) & 255u;
        if ((value_162 == 0)) {
        } else {
            literal_163 = page_literal(text_pool, 24, menu_literal_29);
            label_164 = page_label(s, text_pool, -488, menu_literal_703,
                                   {"Spread Amount", "Величина разброса", "散布量"});
            {
                MenuControlRequest control_165;
                control_165.role = MenuControlRole::slider_float;
                control_165.site = 0x349ac1;
                control_165.primitive = 0x3c43f4;
                control_165.label = re::ReString(label_164);
                control_165.value = 0x3f7f38;
                control_165.minimum_float = 0.0f;
                control_165.maximum_float = 100.0f;
                control_165.format = re::ReString(literal_163);
                control_165.flags = ReU32(0);
                pressed_166 = control(a, control_165).pressed;
            }
        }
        label_167 = page_label(
            s, text_pool, -376, menu_literal_704,
            {"Allows you to fire faster", "Позволяет стрелять быстрее", "允许你更快射击"});
        label_168 = page_label(s, text_pool, -504, menu_literal_705,
                               {"Fast Fire", "Быстрая стрельба", "快速射击"});
        {
            MenuControlRequest control_169;
            control_169.role = MenuControlRole::checkbox;
            control_169.site = 0x349b5e;
            control_169.primitive = 0x3bd114;
            control_169.label = re::ReString(label_168);
            control_169.value = 0x3e9778;
            control_169.key = 0;
            control_169.color = 0;
            control_169.description = re::ReString(label_167);
            control_169.register_search = (0 != 0);
            pressed_170 = control(a, control_169).pressed;
        }
        value_171 = raw(s, 0x3e9778) & 255u;
        if ((value_171 == 0)) {
        } else {
            literal_172 = page_literal(text_pool, 24, menu_literal_29);
            label_173 = page_label(s, text_pool, -472, menu_literal_706,
                                   {"Fast Fire Value", "Значение быстрой стрельбы", "快速射击值"});
            {
                MenuControlRequest control_174;
                control_174.role = MenuControlRole::slider_float;
                control_174.site = 0x349bf0;
                control_174.primitive = 0x3c43f4;
                control_174.label = re::ReString(label_173);
                control_174.value = 0x3ed7f8;
                control_174.minimum_float = 0.30000001192092896f;
                control_174.maximum_float = 1.0f;
                control_174.format = re::ReString(literal_172);
                control_174.flags = ReU32(0);
                pressed_175 = control(a, control_174).pressed;
            }
        }
        label_176 =
            page_label(s, text_pool, 16, menu_literal_677, {"Melee", "Ближний бой", "近战"});
        call(a, 0x3c4e90, {re::ReString(label_176)});
        label_177 = page_label(s, text_pool, -376, menu_literal_707,
                               {"Removes melee punch, think of it like recoil",
                                "Убирает удар ближнего боя, думайте об этом как об отдаче",
                                "移除近战冲击，可以理解为近战后坐力"});
        label_178 = page_label(s, text_pool, -488, menu_literal_708,
                               {"No Melee Punch", "Нет удара ближнего боя", "无近战冲击"});
        {
            MenuControlRequest control_179;
            control_179.role = MenuControlRole::checkbox;
            control_179.site = 0x349cd5;
            control_179.primitive = 0x3bd114;
            control_179.label = re::ReString(label_178);
            control_179.value = 0x3e71f8;
            control_179.key = 0;
            control_179.color = 0;
            control_179.description = re::ReString(label_177);
            control_179.register_search = (0 != 0);
            pressed_180 = control(a, control_179).pressed;
        }
        label_181 = page_label(
            s, text_pool, -376, menu_literal_709,
            {"Removes the slowdown effect you usually get while running and hitting a player",
             "Убирает эффект замедления, который обычно возникает при беге и ударе игрока",
             "移除你在奔跑并攻击玩家时通常会遇到的减速效果"});
        label_182 = page_label(s, text_pool, -472, menu_literal_710,
                               {"No Melee Slowdown", "Нет замедления ближнего боя", "无近战减速"});
        {
            MenuControlRequest control_183;
            control_183.role = MenuControlRole::checkbox;
            control_183.site = 0x349d72;
            control_183.primitive = 0x3bd114;
            control_183.label = re::ReString(label_182);
            control_183.value = 0x3e94f8;
            control_183.key = 0;
            control_183.color = 0;
            control_183.description = re::ReString(label_181);
            control_183.register_search = (0 != 0);
            pressed_184 = control(a, control_183).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_349db4(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x349db4..0x34adf7.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] MenuPageTextRef label_1{};
        [[maybe_unused]] MenuPageTextRef literal_2{};
        [[maybe_unused]] re::ReString owned_text_3{};
        [[maybe_unused]] MenuPageTextRef label_4{};
        [[maybe_unused]] MenuPageTextRef label_5{};
        [[maybe_unused]] bool pressed_7{};
        [[maybe_unused]] ReU32 value_8{};
        [[maybe_unused]] MenuPageTextRef literal_9{};
        [[maybe_unused]] MenuPageTextRef label_10{};
        [[maybe_unused]] bool pressed_12{};
        [[maybe_unused]] MenuPageTextRef label_13{};
        [[maybe_unused]] re::ReString owned_text_14{};
        [[maybe_unused]] MenuPageTextRef label_15{};
        [[maybe_unused]] re::ReString owned_text_16{};
        [[maybe_unused]] MenuPageTextRef label_17{};
        [[maybe_unused]] bool pressed_19{};
        [[maybe_unused]] MenuPageTextRef label_20{};
        [[maybe_unused]] MenuPageTextRef label_21{};
        [[maybe_unused]] bool pressed_23{};
        [[maybe_unused]] ReU32 value_24{};
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
        [[maybe_unused]] ReU32 value_41{};
        [[maybe_unused]] MenuPageTextRef literal_42{};
        [[maybe_unused]] MenuPageTextRef label_43{};
        [[maybe_unused]] bool pressed_45{};
        [[maybe_unused]] MenuPageTextRef label_46{};
        [[maybe_unused]] MenuPageTextRef label_47{};
        [[maybe_unused]] bool pressed_49{};
        [[maybe_unused]] MenuPageTextRef label_50{};
        [[maybe_unused]] bool pressed_52{};
        [[maybe_unused]] ReU32 value_53{};
        [[maybe_unused]] MenuPageTextRef literal_54{};
        [[maybe_unused]] MenuPageTextRef label_55{};
        [[maybe_unused]] bool pressed_57{};
        [[maybe_unused]] MenuPageTextRef label_58{};
        [[maybe_unused]] bool pressed_60{};
        [[maybe_unused]] ReU32 value_61{};
        [[maybe_unused]] MenuPageTextRef literal_62{};
        [[maybe_unused]] MenuPageTextRef label_63{};
        [[maybe_unused]] bool pressed_65{};
        [[maybe_unused]] MenuPageTextRef label_66{};
        [[maybe_unused]] MenuPageTextRef literal_67{};
        [[maybe_unused]] re::ReString owned_text_68{};
        [[maybe_unused]] MenuPageTextRef label_69{};
        [[maybe_unused]] MenuPageTextRef label_70{};
        [[maybe_unused]] bool pressed_72{};
        [[maybe_unused]] ReU32 value_73{};
        [[maybe_unused]] MenuPageTextRef label_74{};
        [[maybe_unused]] re::ReString owned_text_75{};
        [[maybe_unused]] MenuPageTextRef label_76{};
        [[maybe_unused]] re::ReString owned_text_77{};
        [[maybe_unused]] MenuPageTextRef label_78{};
        [[maybe_unused]] re::ReString owned_text_79{};
        [[maybe_unused]] MenuPageTextRef label_80{};
        [[maybe_unused]] re::ReString owned_text_81{};
        [[maybe_unused]] MenuPageTextRef label_82{};
        [[maybe_unused]] re::ReString owned_text_83{};
        [[maybe_unused]] MenuPageTextRef label_84{};
        [[maybe_unused]] re::ReString owned_text_85{};
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
        label_1 =
            page_label(s, text_pool, -408, menu_literal_99, {"Visuals", "Визуалы", "视觉效果"});
        literal_2 = page_literal(text_pool, 24, menu_literal_100);
        owned_text_3 = re::ReString(literal_2);
        child(s, m, a, owned_text_3, re::ReString(label_1), Vec2{0.0f, -1.0f}, (1 != 0));
        label_4 =
            page_label(s, text_pool, -472, menu_literal_711,
                       {"Modify ambient, allowing you to see clearer in dark places",
                        "Изменяет окружающее освещение, позволяя лучше видеть в тёмных местах",
                        "修改环境光，让你在黑暗的地方看得更清楚"});
        label_5 = page_label(s, text_pool, 24, menu_literal_712,
                             {"Ambient", "Окружающее освещение", "环境光"});
        {
            MenuControlRequest control_6;
            control_6.role = MenuControlRole::checkbox;
            control_6.site = 0x349f10;
            control_6.primitive = 0x3bd114;
            control_6.label = re::ReString(label_5);
            control_6.value = 0x3f8998;
            control_6.key = 0x3f8d28;
            control_6.color = 0x3f8b28;
            control_6.description = re::ReString(label_4);
            control_6.register_search = (1 != 0);
            pressed_7 = control(a, control_6).pressed;
        }
        value_8 = raw(s, 0x3f8998) & 255u;
        if ((value_8 == 0)) {
        } else {
            literal_9 = page_literal(text_pool, 24, menu_literal_29);
            label_10 = page_label(s, text_pool, -400, menu_literal_713,
                                  {"Ambient Multiplier", "Множитель окружающего", "环境光倍数"});
            {
                MenuControlRequest control_11;
                control_11.role = MenuControlRole::slider_float;
                control_11.site = 0x349fa4;
                control_11.primitive = 0x3c43f4;
                control_11.label = re::ReString(label_10);
                control_11.value = 0x3f8c38;
                control_11.minimum_float = 0.5f;
                control_11.maximum_float = 4.0f;
                control_11.format = re::ReString(literal_9);
                control_11.flags = ReU32(0);
                pressed_12 = control(a, control_11).pressed;
            }
            label_13 = page_label(s, text_pool, 32, menu_literal_714, {"Flat", "Плоский", "平面"});
            owned_text_14 = re::ReString(label_13);
            label_15 = page_label(s, text_pool, -504, menu_literal_715,
                                  {"Trilight", "Трехцветный", "三色光"});
            owned_text_16 = re::ReString(label_15);
            label_17 = page_label(s, text_pool, -354, menu_literal_716,
                                  {"Ambient Mode", "Режим окружения", "环境光模式"});
            {
                MenuControlRequest control_18;
                control_18.role = MenuControlRole::combo_strings;
                control_18.site = 0x34a0c7;
                control_18.primitive = 0x3bf008;
                control_18.label = re::ReString(label_17);
                control_18.value = 0x3f8cd8;
                control_18.choices = {owned_text_14, owned_text_16};
                pressed_19 = control(a, control_18).pressed;
            }
        }
        label_20 =
            page_label(s, text_pool, -472, menu_literal_717,
                       {"Lets you modify the current time of day",
                        "Позволяет изменять текущее время суток", "让你修改当前一天中的时间"});
        label_21 =
            page_label(s, text_pool, 24, menu_literal_718, {"Dayhack", "Дэйхак", "时间修改"});
        {
            MenuControlRequest control_22;
            control_22.role = MenuControlRole::checkbox;
            control_22.site = 0x34a17f;
            control_22.primitive = 0x3bd114;
            control_22.label = re::ReString(label_21);
            control_22.value = 0x3f8a38;
            control_22.key = 0;
            control_22.color = 0;
            control_22.description = re::ReString(label_20);
            control_22.register_search = (0 != 0);
            pressed_23 = control(a, control_22).pressed;
        }
        value_24 = raw(s, 0x3f8a38) & 255u;
        if ((value_24 == 0)) {
        } else {
            literal_25 = page_literal(text_pool, 24, menu_literal_60);
            label_26 = page_label(s, text_pool, -504, menu_literal_719,
                                  {"Day Value", "Значение дня", "天数值"});
            {
                MenuControlRequest control_27;
                control_27.role = MenuControlRole::slider_integer;
                control_27.site = 0x34a206;
                control_27.primitive = 0x3c4438;
                control_27.label = re::ReString(label_26);
                control_27.value = 0x3f8c88;
                control_27.minimum = 1;
                control_27.maximum = 23;
                control_27.format = re::ReString(literal_25);
                control_27.flags = ReU32(0);
                pressed_28 = control(a, control_27).pressed;
            }
        }
        label_29 = page_label(s, text_pool, -472, menu_literal_720,
                              {"Draws the current time of day on the top left of your screen",
                               "Отображает текущее время суток в верхнем левом углу экрана",
                               "在屏幕左上角显示当前一天中的时间"});
        label_30 = page_label(s, text_pool, -400, menu_literal_721,
                              {"Show Current Time", "Показывать текущее время", "显示当前时间"});
        {
            MenuControlRequest control_31;
            control_31.role = MenuControlRole::checkbox;
            control_31.site = 0x34a2a3;
            control_31.primitive = 0x3bd114;
            control_31.label = re::ReString(label_30);
            control_31.value = 0x3e9908;
            control_31.key = 0;
            control_31.color = 0;
            control_31.description = re::ReString(label_29);
            control_31.register_search = (0 != 0);
            pressed_32 = control(a, control_31).pressed;
        }
        label_33 = page_label(
            s, text_pool, -472, menu_literal_722,
            {"Lets you modify the sky color", "Позволяет изменять цвет неба", "让你修改天空颜色"});
        label_34 = page_label(s, text_pool, -504, menu_literal_723,
                              {"Sky Changer", "Изменение неба", "天空修改"});
        {
            MenuControlRequest control_35;
            control_35.role = MenuControlRole::checkbox;
            control_35.site = 0x34a345;
            control_35.primitive = 0x3bd114;
            control_35.label = re::ReString(label_34);
            control_35.value = 0x3f8a88;
            control_35.key = 0;
            control_35.color = 0x3f8b88;
            control_35.description = re::ReString(label_33);
            control_35.register_search = (0 != 0);
            pressed_36 = control(a, control_35).pressed;
        }
        label_37 =
            page_label(s, text_pool, -472, menu_literal_724,
                       {"Lets you modify your screens aspect ratio",
                        "Позволяет изменять соотношение сторон экрана", "让你修改屏幕的宽高比"});
        label_38 = page_label(s, text_pool, -504, menu_literal_725,
                              {"Aspect Ratio", "Соотношение сторон", "宽高比"});
        {
            MenuControlRequest control_39;
            control_39.role = MenuControlRole::checkbox;
            control_39.site = 0x34a3e3;
            control_39.primitive = 0x3bd114;
            control_39.label = re::ReString(label_38);
            control_39.value = 0x3f8ad8;
            control_39.key = 0;
            control_39.color = 0;
            control_39.description = re::ReString(label_37);
            control_39.register_search = (0 != 0);
            pressed_40 = control(a, control_39).pressed;
        }
        value_41 = raw(s, 0x3f8ad8) & 255u;
        if ((value_41 == 0)) {
        } else {
            literal_42 = page_literal(text_pool, 24, menu_literal_29);
            label_43 = page_label(s, text_pool, -504, menu_literal_726,
                                  {"Aspect value", "Значение соотношения", "宽高比值"});
            {
                MenuControlRequest control_44;
                control_44.role = MenuControlRole::slider_float;
                control_44.site = 0x34a470;
                control_44.primitive = 0x3c43f4;
                control_44.label = re::ReString(label_43);
                control_44.value = 0x3f8be8;
                control_44.minimum_float = 0.0f;
                control_44.maximum_float = 5.0f;
                control_44.format = re::ReString(literal_42);
                control_44.flags = ReU32(0);
                pressed_45 = control(a, control_44).pressed;
            }
        }
        label_46 = page_label(s, text_pool, -472, menu_literal_727,
                              {"Makes the stars bright!(who would've guessed?)",
                               "Делает звёзды яркими! (кто бы мог подумать?)",
                               "让星星变得明亮！（谁能想到呢？）"});
        label_47 = page_label(s, text_pool, -504, menu_literal_728,
                              {"Bright Stars", "Яркие звёзды", "明亮星星"});
        {
            MenuControlRequest control_48;
            control_48.role = MenuControlRole::checkbox;
            control_48.site = 0x34a50e;
            control_48.primitive = 0x3bd114;
            control_48.label = re::ReString(label_47);
            control_48.value = 0x3f89e8;
            control_48.key = 0;
            control_48.color = 0;
            control_48.description = re::ReString(label_46);
            control_48.register_search = (0 != 0);
            pressed_49 = control(a, control_48).pressed;
        }
        label_50 = page_label(s, text_pool, -504, menu_literal_729,
                              {"Fov Changer", "Изменение FOV", "视野修改"});
        {
            MenuControlRequest control_51;
            control_51.role = MenuControlRole::checkbox;
            control_51.site = 0x34a572;
            control_51.primitive = 0x3bd114;
            control_51.label = re::ReString(label_50);
            control_51.value = 0x3e9a48;
            control_51.key = 0;
            control_51.color = 0;
            control_51.description = "";
            control_51.register_search = (0 != 0);
            pressed_52 = control(a, control_51).pressed;
        }
        value_53 = raw(s, 0x3e9a48) & 255u;
        if ((value_53 == 0)) {
        } else {
            literal_54 = page_literal(text_pool, 24, menu_literal_29);
            label_55 = page_label(s, text_pool, -504, menu_literal_730,
                                  {"Fov value", "Значение FOV", "视野值"});
            {
                MenuControlRequest control_56;
                control_56.role = MenuControlRole::slider_float;
                control_56.site = 0x34a5fe;
                control_56.primitive = 0x3c43f4;
                control_56.label = re::ReString(label_55);
                control_56.value = 0x3ed848;
                control_56.minimum_float = 0.0f;
                control_56.maximum_float = 150.0f;
                control_56.format = re::ReString(literal_54);
                control_56.flags = ReU32(0);
                pressed_57 = control(a, control_56).pressed;
            }
        }
        label_58 = page_label(s, text_pool, 16, menu_literal_731, {"Zoom", "Зум", "缩放"});
        {
            MenuControlRequest control_59;
            control_59.role = MenuControlRole::checkbox;
            control_59.site = 0x34a661;
            control_59.primitive = 0x3bd114;
            control_59.label = re::ReString(label_58);
            control_59.value = 0x3e9a98;
            control_59.key = 0x3ef6b8;
            control_59.color = 0;
            control_59.description = "";
            control_59.register_search = (1 != 0);
            pressed_60 = control(a, control_59).pressed;
        }
        value_61 = raw(s, 0x3e9a98) & 255u;
        if ((value_61 == 0)) {
        } else {
            literal_62 = page_literal(text_pool, 24, menu_literal_29);
            label_63 = page_label(s, text_pool, -504, menu_literal_732,
                                  {"zoom value", "Значение зума", "缩放值"});
            {
                MenuControlRequest control_64;
                control_64.role = MenuControlRole::slider_float;
                control_64.site = 0x34a6e5;
                control_64.primitive = 0x3c43f4;
                control_64.label = re::ReString(label_63);
                control_64.value = 0x3ed898;
                control_64.minimum_float = 0.0f;
                control_64.maximum_float = 150.0f;
                control_64.format = re::ReString(literal_62);
                control_64.flags = ReU32(0);
                pressed_65 = control(a, control_64).pressed;
            }
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_66 =
            page_label(s, text_pool, -504, menu_literal_596, {"Removals", "Удаления", "移除"});
        literal_67 = page_literal(text_pool, 24, menu_literal_597);
        owned_text_68 = re::ReString(literal_67);
        child(s, m, a, owned_text_68, re::ReString(label_66), Vec2{0.0f, -1.0f}, (1 != 0));
        label_69 = page_label(s, text_pool, -328, menu_literal_733,
                              {"Allows you to remove specific layers so you can see through them",
                               "Позволяет удалять определённые слои, чтобы видеть сквозь них",
                               "允许你移除特定图层，以便看穿它们"});
        label_70 = page_label(s, text_pool, -488, menu_literal_734,
                              {"Remove Layers", "Удалить слои", "移除图层"});
        {
            MenuControlRequest control_71;
            control_71.role = MenuControlRole::checkbox;
            control_71.site = 0x34a832;
            control_71.primitive = 0x3bd114;
            control_71.label = re::ReString(label_70);
            control_71.value = 0x3f3d38;
            control_71.key = 0x3f4558;
            control_71.color = 0;
            control_71.description = re::ReString(label_69);
            control_71.register_search = (1 != 0);
            pressed_72 = control(a, control_71).pressed;
        }
        value_73 = raw(s, 0x3f3d38) & 255u;
        if ((value_73 == 0)) {
        } else {
            label_74 =
                page_label(s, text_pool, -354, menu_literal_735, {"Clutter", "Хлам", "杂物"});
            owned_text_75 = re::ReString(label_74);
            label_76 = page_label(s, text_pool, -360, menu_literal_327, {"World", "Мир", "世界"});
            owned_text_77 = re::ReString(label_76);
            label_78 = page_label(s, text_pool, -408, menu_literal_680, {"Water", "Вода", "水"});
            owned_text_79 = re::ReString(label_78);
            label_80 =
                page_label(s, text_pool, -504, menu_literal_609, {"Terrain", "Террейн", "地形"});
            owned_text_81 = re::ReString(label_80);
            label_82 = page_label(s, text_pool, -488, menu_literal_307,
                                  {"Construction", "Постройки", "建筑"});
            owned_text_83 = re::ReString(label_82);
            label_84 = page_label(s, text_pool, 32, menu_literal_681, {"Tree", "Деревья", "树木"});
            owned_text_85 = re::ReString(label_84);
            label_86 = page_label(s, text_pool, -488, menu_literal_736,
                                  {"Current Layers", "Текущие слои", "当前图层"});
            {
                MenuControlRequest control_87;
                control_87.role = MenuControlRole::multiselect;
                control_87.site = 0x34aab9;
                control_87.primitive = 0x387d18;
                control_87.label = re::ReString(label_86);
                control_87.value = 0x3f4728;
                control_87.choices = {owned_text_75, owned_text_77, owned_text_79,
                                      owned_text_81, owned_text_83, owned_text_85};
                pressed_88 = control(a, control_87).pressed;
            }
        }
        label_89 =
            page_label(s, text_pool, -472, menu_literal_737,
                       {"Removes flashbang flash effect",
                        "Убирает эффект вспышки светошумовой гранаты", "移除闪光弹的闪光效果"});
        label_90 = page_label(s, text_pool, -488, menu_literal_738,
                              {"Remove Flash", "Убрать вспышку", "移除闪光"});
        {
            MenuControlRequest control_91;
            control_91.role = MenuControlRole::checkbox;
            control_91.site = 0x34ab61;
            control_91.primitive = 0x3bd114;
            control_91.label = re::ReString(label_90);
            control_91.value = 0x3f3ce8;
            control_91.key = 0;
            control_91.color = 0;
            control_91.description = re::ReString(label_89);
            control_91.register_search = (0 != 0);
            pressed_92 = control(a, control_91).pressed;
        }
        label_93 = page_label(s, text_pool, -472, menu_literal_739,
                              {"Removes grass(FPS BOOST!!)", "Убирает траву (ПРИРОСТ FPS!!)",
                               "移除草（FPS提升！！）"});
        label_94 = page_label(s, text_pool, -488, menu_literal_740,
                              {"Remove Grass", "Убрать траву", "移除草"});
        {
            MenuControlRequest control_95;
            control_95.role = MenuControlRole::checkbox;
            control_95.site = 0x34abff;
            control_95.primitive = 0x3bd114;
            control_95.label = re::ReString(label_94);
            control_95.value = 0x3f30b8;
            control_95.key = 0;
            control_95.color = 0;
            control_95.description = re::ReString(label_93);
            control_95.register_search = (0 != 0);
            pressed_96 = control(a, control_95).pressed;
        }
        label_97 = page_label(s, text_pool, -472, menu_literal_741,
                              {"Removes the smoke effect, plus the overlay that is generated",
                               "Убирает эффект дыма и создаваемый им оверлей",
                               "移除烟雾效果以及其生成的覆盖层"});
        label_98 =
            page_label(s, text_pool, -504, menu_literal_742, {"No Smoke", "Нет дыма", "无烟雾"});
        {
            MenuControlRequest control_99;
            control_99.role = MenuControlRole::checkbox;
            control_99.site = 0x34ac9d;
            control_99.primitive = 0x3bd114;
            control_99.label = re::ReString(label_98);
            control_99.value = 0x3f3bf8;
            control_99.key = 0;
            control_99.color = 0;
            control_99.description = re::ReString(label_97);
            control_99.register_search = (0 != 0);
            pressed_100 = control(a, control_99).pressed;
        }
        label_101 = page_label(s, text_pool, -472, menu_literal_743,
                               {"Removes the underwater blur effect",
                                "Убирает эффект размытия под водой", "移除水下模糊效果"});
        label_102 = page_label(s, text_pool, -488, menu_literal_744,
                               {"No Water Blur", "Нет размытия под водой", "无水下模糊"});
        {
            MenuControlRequest control_103;
            control_103.role = MenuControlRole::checkbox;
            control_103.site = 0x34ad3b;
            control_103.primitive = 0x3bd114;
            control_103.label = re::ReString(label_102);
            control_103.value = 0x3f9708;
            control_103.key = 0;
            control_103.color = 0;
            control_103.description = re::ReString(label_101);
            control_103.register_search = (0 != 0);
            pressed_104 = control(a, control_103).pressed;
        }
        label_105 = page_label(s, text_pool, -472, menu_literal_745,
                               {"Removes the underwater scattering effect",
                                "Убирает эффект рассеивания под водой", "移除水下散射效果"});
        label_106 = page_label(s, text_pool, -400, menu_literal_746,
                               {"No Water Scattering", "Нет рассеивания под водой", "无水下散射"});
        {
            MenuControlRequest control_107;
            control_107.role = MenuControlRole::checkbox;
            control_107.site = 0x34add8;
            control_107.primitive = 0x3bd114;
            control_107.label = re::ReString(label_106);
            control_107.value = 0x3f9758;
            control_107.key = 0;
            control_107.color = 0;
            control_107.description = re::ReString(label_105);
            control_107.register_search = (0 != 0);
            pressed_108 = control(a, control_107).pressed;
        }
        cleanup(a);
    });
}
static FrameDependencyResult page_34aedc(FrameMenuState &s, FrameMainMenuState &m,
                                         const MenuPagesApi &a) {
    return protect([&] {
        // [C] Static lift from0x34aedc..0x34c3a2.
        MenuPageTextPool text_pool{wide_buffer(a)};
        [[maybe_unused]] ReU32 value_1{};
        [[maybe_unused]] ReU32 value_2{};
        [[maybe_unused]] MenuPageTextRef label_3{};
        [[maybe_unused]] MenuPageTextRef literal_4{};
        [[maybe_unused]] re::ReString owned_text_5{};
        [[maybe_unused]] MenuPageTextRef label_6{};
        [[maybe_unused]] MenuPageTextRef label_7{};
        [[maybe_unused]] bool pressed_9{};
        [[maybe_unused]] MenuPageTextRef label_10{};
        [[maybe_unused]] MenuPageTextRef label_11{};
        [[maybe_unused]] bool pressed_13{};
        [[maybe_unused]] ReU32 value_14{};
        [[maybe_unused]] MenuPageTextRef literal_15{};
        [[maybe_unused]] MenuPageTextRef label_16{};
        [[maybe_unused]] bool pressed_18{};
        [[maybe_unused]] MenuPageTextRef label_19{};
        [[maybe_unused]] MenuPageTextRef label_20{};
        [[maybe_unused]] bool pressed_22{};
        [[maybe_unused]] MenuPageTextRef label_23{};
        [[maybe_unused]] MenuPageTextRef literal_24{};
        [[maybe_unused]] re::ReString owned_text_25{};
        [[maybe_unused]] MenuPageTextRef label_26{};
        [[maybe_unused]] MenuPageTextRef literal_27{};
        [[maybe_unused]] MenuPageTextRef literal_28{};
        [[maybe_unused]] MenuPageTextRef label_29{};
        [[maybe_unused]] bool pressed_31{};
        [[maybe_unused]] ReU32 value_32{};
        [[maybe_unused]] ReU32 value_33{};
        [[maybe_unused]] float value_34{};
        [[maybe_unused]] MenuPageTextRef label_35{};
        [[maybe_unused]] MenuPageTextRef literal_36{};
        [[maybe_unused]] re::ReString owned_text_37{};
        [[maybe_unused]] MenuPageTextRef label_38{};
        [[maybe_unused]] re::ReString owned_text_39{};
        [[maybe_unused]] MenuPageTextRef label_40{};
        [[maybe_unused]] re::ReString owned_text_41{};
        [[maybe_unused]] MenuPageTextRef label_42{};
        [[maybe_unused]] re::ReString owned_text_43{};
        [[maybe_unused]] MenuPageTextRef label_44{};
        [[maybe_unused]] bool pressed_46{};
        [[maybe_unused]] MenuPageTextRef label_47{};
        [[maybe_unused]] re::ReString owned_text_48{};
        [[maybe_unused]] MenuPageTextRef label_49{};
        [[maybe_unused]] re::ReString owned_text_50{};
        [[maybe_unused]] MenuPageTextRef label_51{};
        [[maybe_unused]] re::ReString owned_text_52{};
        [[maybe_unused]] MenuPageTextRef label_53{};
        [[maybe_unused]] re::ReString owned_text_54{};
        [[maybe_unused]] MenuPageTextRef label_55{};
        [[maybe_unused]] bool pressed_57{};
        [[maybe_unused]] ReU32 value_58{};
        [[maybe_unused]] MenuPageTextRef label_59{};
        [[maybe_unused]] re::ReString owned_text_60{};
        [[maybe_unused]] MenuPageTextRef label_61{};
        [[maybe_unused]] re::ReString owned_text_62{};
        [[maybe_unused]] MenuPageTextRef label_63{};
        [[maybe_unused]] re::ReString owned_text_64{};
        [[maybe_unused]] MenuPageTextRef label_65{};
        [[maybe_unused]] re::ReString owned_text_66{};
        [[maybe_unused]] MenuPageTextRef label_67{};
        [[maybe_unused]] re::ReString owned_text_68{};
        [[maybe_unused]] MenuPageTextRef label_69{};
        [[maybe_unused]] re::ReString owned_text_70{};
        [[maybe_unused]] MenuPageTextRef label_71{};
        [[maybe_unused]] bool pressed_73{};
        [[maybe_unused]] MenuPageTextRef label_74{};
        [[maybe_unused]] re::ReString owned_text_75{};
        [[maybe_unused]] MenuPageTextRef label_76{};
        [[maybe_unused]] re::ReString owned_text_77{};
        [[maybe_unused]] MenuPageTextRef label_78{};
        [[maybe_unused]] re::ReString owned_text_79{};
        [[maybe_unused]] MenuPageTextRef label_80{};
        [[maybe_unused]] re::ReString owned_text_81{};
        [[maybe_unused]] MenuPageTextRef label_82{};
        [[maybe_unused]] bool pressed_84{};
        [[maybe_unused]] ReU32 value_85{};
        [[maybe_unused]] MenuPageTextRef label_86{};
        [[maybe_unused]] re::ReString owned_text_87{};
        [[maybe_unused]] MenuPageTextRef label_88{};
        [[maybe_unused]] re::ReString owned_text_89{};
        [[maybe_unused]] MenuPageTextRef label_90{};
        [[maybe_unused]] re::ReString owned_text_91{};
        [[maybe_unused]] MenuPageTextRef label_92{};
        [[maybe_unused]] re::ReString owned_text_93{};
        [[maybe_unused]] MenuPageTextRef label_94{};
        [[maybe_unused]] re::ReString owned_text_95{};
        [[maybe_unused]] MenuPageTextRef label_96{};
        [[maybe_unused]] re::ReString owned_text_97{};
        [[maybe_unused]] MenuPageTextRef label_98{};
        [[maybe_unused]] bool pressed_100{};
        [[maybe_unused]] MenuPageTextRef label_101{};
        [[maybe_unused]] re::ReString owned_text_102{};
        [[maybe_unused]] MenuPageTextRef label_103{};
        [[maybe_unused]] re::ReString owned_text_104{};
        [[maybe_unused]] MenuPageTextRef label_105{};
        [[maybe_unused]] re::ReString owned_text_106{};
        [[maybe_unused]] MenuPageTextRef label_107{};
        [[maybe_unused]] re::ReString owned_text_108{};
        [[maybe_unused]] MenuPageTextRef label_109{};
        [[maybe_unused]] re::ReString owned_text_110{};
        [[maybe_unused]] MenuPageTextRef label_111{};
        [[maybe_unused]] re::ReString owned_text_112{};
        [[maybe_unused]] MenuPageTextRef label_113{};
        [[maybe_unused]] bool pressed_115{};
        [[maybe_unused]] MenuPageTextRef label_116{};
        [[maybe_unused]] re::ReString owned_text_117{};
        [[maybe_unused]] MenuPageTextRef label_118{};
        [[maybe_unused]] re::ReString owned_text_119{};
        [[maybe_unused]] MenuPageTextRef label_120{};
        [[maybe_unused]] re::ReString owned_text_121{};
        [[maybe_unused]] MenuPageTextRef label_122{};
        [[maybe_unused]] re::ReString owned_text_123{};
        [[maybe_unused]] MenuPageTextRef label_124{};
        [[maybe_unused]] re::ReString owned_text_125{};
        [[maybe_unused]] MenuPageTextRef label_126{};
        [[maybe_unused]] re::ReString owned_text_127{};
        [[maybe_unused]] MenuPageTextRef label_128{};
        [[maybe_unused]] bool pressed_130{};
        value_1 = raw(s, 0x3fd7c0);
        if (((1 & value_1) != 0)) {
        } else {
            s.values[0x3fd7c0] = ReU32((value_1 | 1));
            value_2 = raw(s, 0x3fcc88);
            s.values[0x3fd7bc] = ReU32(value_2);
        }
        label_3 =
            page_label(s, text_pool, -552, menu_literal_747, {"SETTINGS", "НАСТРОЙКИ", "设置"});
        literal_4 = page_literal(text_pool, 24, menu_literal_748);
        owned_text_5 = re::ReString(literal_4);
        child(s, m, a, owned_text_5, re::ReString(label_3), Vec2{0.0f, -1.0f}, (1 != 0));
        label_6 = page_label(s, text_pool, -216, menu_literal_749,
                             {"This will open a window that can be dragged, which will display the "
                              "feature name, and the current hotkey selected for it.",
                              "Откроет перетаскиваемое окно, которое будет отображать название "
                              "функции и текущую выбранную для неё горячую клавишу.",
                              "将打开一个可拖动的窗口，显示功能名称及其当前选择的快捷键。"});
        label_7 = page_label(s, text_pool, -504, menu_literal_750,
                             {"Draw Hotkeys", "Отображать хоткеи", "显示快捷键"});
        {
            MenuControlRequest control_8;
            control_8.role = MenuControlRole::checkbox;
            control_8.site = 0x34b062;
            control_8.primitive = 0x3bd114;
            control_8.label = re::ReString(label_7);
            control_8.value = 0x3fc568;
            control_8.key = 0;
            control_8.color = 0;
            control_8.description = re::ReString(label_6);
            control_8.register_search = (0 != 0);
            pressed_9 = control(a, control_8).pressed;
        }
        label_10 = page_label(s, text_pool, -216, menu_literal_751,
                              {"This will disable panel swap animations",
                               "Отключит анимации переключения панелей", "这将禁用面板切换动画"});
        label_11 = page_label(s, text_pool, -456, menu_literal_752,
                              {"Disable GUI Animations", "Отключить анимации GUI", "禁用GUI动画"});
        {
            MenuControlRequest control_12;
            control_12.role = MenuControlRole::checkbox;
            control_12.site = 0x34b101;
            control_12.primitive = 0x3bd114;
            control_12.label = re::ReString(label_11);
            control_12.value = 0x3fc518;
            control_12.key = 0;
            control_12.color = 0;
            control_12.description = re::ReString(label_10);
            control_12.register_search = (0 != 0);
            pressed_13 = control(a, control_12).pressed;
        }
        value_14 = raw(s, 0x3fc518) & 255u;
        if ((value_14 != 0)) {
        } else {
            literal_15 = page_literal(text_pool, 24, menu_literal_29);
            label_16 = page_label(s, text_pool, -520, menu_literal_753,
                                  {"GUI Animation %", "Анимация GUI %", "GUI动画%"});
            {
                MenuControlRequest control_17;
                control_17.role = MenuControlRole::slider_float;
                control_17.site = 0x34b193;
                control_17.primitive = 0x3c43f4;
                control_17.label = re::ReString(label_16);
                control_17.value = 0x3fcaf8;
                control_17.minimum_float = 10.0f;
                control_17.maximum_float = 30.0f;
                control_17.format = re::ReString(literal_15);
                control_17.flags = ReU32(0);
                pressed_18 = control(a, control_17).pressed;
            }
        }
        label_19 = page_label(s, text_pool, -216, menu_literal_754,
                              {"This will allow you to free your cursor while the GUI is open.",
                               "Позволит освободить курсор, пока открыто GUI.",
                               "在GUI打开时允许你释放光标。"});
        label_20 = page_label(s, text_pool, -552, menu_literal_755,
                              {"Free Cursor", "Свободный курсор", "自由光标"});
        {
            MenuControlRequest control_21;
            control_21.role = MenuControlRole::checkbox;
            control_21.site = 0x34b233;
            control_21.primitive = 0x3bd114;
            control_21.label = re::ReString(label_20);
            control_21.value = 0x3f2e38;
            control_21.key = 0;
            control_21.color = 0;
            control_21.description = re::ReString(label_19);
            control_21.register_search = (0 != 0);
            pressed_22 = control(a, control_21).pressed;
        }
        label_23 = page_label(s, text_pool, -552, menu_literal_756,
                              {"Menu Key", "Клавиша меню", "菜单键"});
        call(a, 0x3c4e90, {re::ReString(label_23)});
        call(a, 0x39ac04, {0.0f, -1.0f});
        literal_24 = page_literal(text_pool, 24, menu_literal_40);
        owned_text_25 = re::ReString(literal_24);
        label_26 = page_label(s, text_pool, -552, menu_literal_756,
                              {"Menu Key", "Клавиша меню", "菜单键"});
        literal_27 = page_literal(text_pool, 32, menu_literal_41);
        keybind(a,
                (re::ReString((re::ReString(owned_text_25) + re::ReString(label_26))) +
                 re::ReString(literal_27)),
                0x3ef7d8, (1 != 0), 0x34b33d);
        literal_28 = page_literal(text_pool, 24, menu_literal_757);
        label_29 = page_label(s, text_pool, -552, menu_literal_758,
                              {"Menu scale", "Масштаб меню", "菜单缩放"});
        {
            MenuControlRequest control_30;
            control_30.role = MenuControlRole::slider_integer;
            control_30.site = 0x34b3c8;
            control_30.primitive = 0x3c4438;
            control_30.label = re::ReString(label_29);
            control_30.value = 0x3fd7bc;
            control_30.minimum = 100;
            control_30.maximum = 150;
            control_30.format = re::ReString(literal_28);
            control_30.flags = ReU32(0);
            pressed_31 = control(a, control_30).pressed;
        }
        value_32 = copied<ReU32>(a, (a.frame.context + 0x3f68), 0x34b3d4);
        if ((value_32 != 0)) {
        } else {
            value_33 = raw(s, 0x3fd7bc);
            value_34 = number(s, 0x248ee8);
            if ((re::re_isnan(value_34) ||
                 re::re_isnan(
                     (float(re::re_bit_cast<ReI32>(ReU32(value_33))) / 100.0f)))) {
                s.values[0x248ee8] = re::re_bit_cast<ReU32>(
                    (float(re::re_bit_cast<ReI32>(ReU32(value_33))) / 100.0f));
                s.values[0x3fc106] = ReU32(1);
            } else {
                if (((value_34 ==
                      (float(re::re_bit_cast<ReI32>(ReU32(value_33))) / 100.0f)) ||
                     re::re_isnan(value_34) ||
                     re::re_isnan(
                         (float(re::re_bit_cast<ReI32>(ReU32(value_33))) / 100.0f)))) {
                } else {
                    s.values[0x248ee8] = re::re_bit_cast<ReU32>(
                        (float(re::re_bit_cast<ReI32>(ReU32(value_33))) / 100.0f));
                    s.values[0x3fc106] = ReU32(1);
                }
            }
        }
        cleanup(a);
        call(a, 0x39ac04, {0.0f, -1.0f});
        label_35 = page_label(s, text_pool, 32, menu_literal_759, {"Fonts", "ШРИФТЫ", "字体"});
        literal_36 = page_literal(text_pool, 24, menu_literal_748);
        owned_text_37 = re::ReString(literal_36);
        child(s, m, a, owned_text_37, re::ReString(label_35), Vec2{0.0f, -1.0f}, (1 != 0));
        label_38 =
            page_label(s, text_pool, 32, menu_literal_760, {"English", "Английский", "英语"});
        owned_text_39 = re::ReString(label_38);
        label_40 = page_label(s, text_pool, -552, menu_literal_761, {"Russian", "Русский", "俄语"});
        owned_text_41 = re::ReString(label_40);
        label_42 =
            page_label(s, text_pool, -536, menu_literal_762, {"Chinese", "Китайский", "中文"});
        owned_text_43 = re::ReString(label_42);
        label_44 = page_label(s, text_pool, -488, menu_literal_763, {"Language", "Язык", "语言"});
        {
            MenuControlRequest control_45;
            control_45.role = MenuControlRole::combo_strings;
            control_45.site = 0x34b62a;
            control_45.primitive = 0x3bf008;
            control_45.label = re::ReString(label_44);
            control_45.value = 0x3fd0e8;
            control_45.choices = {owned_text_39, owned_text_41, owned_text_43};
            pressed_46 = control(a, control_45).pressed;
        }
        label_47 =
            page_label(s, text_pool, -552, menu_literal_764, {"Pixel-7", "Pixel-7", "Pixel-7"});
        owned_text_48 = re::ReString(label_47);
        label_49 = page_label(s, text_pool, -536, menu_literal_765,
                              {"UI Font", "Шрифт интерфейса", "UI字体"});
        owned_text_50 = re::ReString(label_49);
        label_51 = page_label(s, text_pool, -488, menu_literal_766,
                              {"Minecraftia", "Minecraftia", "Minecraftia"});
        owned_text_52 = re::ReString(label_51);
        label_53 = page_label(s, text_pool, 32, menu_literal_767, {"Msyhbd", "Msyhbd", "Msyhbd"});
        owned_text_54 = re::ReString(label_53);
        label_55 = page_label(s, text_pool, -456, menu_literal_768,
                              {"Keybind/Radar Font", "Шрифт хоткеев/радара", "快捷键/雷达字体"});
        {
            MenuControlRequest control_56;
            control_56.role = MenuControlRole::combo_strings;
            control_56.site = 0x34b7fd;
            control_56.primitive = 0x3bf008;
            control_56.label = re::ReString(label_55);
            control_56.value = 0x3fcf58;
            control_56.choices = {owned_text_48, owned_text_50, owned_text_52, owned_text_54};
            pressed_57 = control(a, control_56).pressed;
        }
        value_58 = raw(s, 0x3fcf58);
        if ((value_58 != 1)) {
        } else {
            label_59 =
                page_label(s, text_pool, 32, menu_literal_769, {"Tiny", "Крошечный", "极小"});
            owned_text_60 = re::ReString(label_59);
            label_61 = page_label(s, text_pool, -476, menu_literal_770,
                                  {"Extra Small", "Очень маленький", "特小"});
            owned_text_62 = re::ReString(label_61);
            label_63 =
                page_label(s, text_pool, -488, menu_literal_771, {"Small", "Маленький", "小"});
            owned_text_64 = re::ReString(label_63);
            label_65 =
                page_label(s, text_pool, -552, menu_literal_772, {"Medium", "Средний", "中"});
            owned_text_66 = re::ReString(label_65);
            label_67 = page_label(s, text_pool, -536, menu_literal_773, {"Large", "Большой", "大"});
            owned_text_68 = re::ReString(label_67);
            label_69 = page_label(s, text_pool, -504, menu_literal_774,
                                  {"Extra Large", "Очень большой", "特大"});
            owned_text_70 = re::ReString(label_69);
            label_71 = page_label(
                s, text_pool, -456, menu_literal_775,
                {"Key/Radar Font Size", "Размер шрифта хоткеев/радара", "快捷键/雷达字体大小"});
            {
                MenuControlRequest control_72;
                control_72.role = MenuControlRole::combo_strings;
                control_72.site = 0x34ba75;
                control_72.primitive = 0x3bf008;
                control_72.label = re::ReString(label_71);
                control_72.value = 0x3fcdc8;
                control_72.choices = {owned_text_60, owned_text_62, owned_text_64,
                                      owned_text_66, owned_text_68, owned_text_70};
                pressed_73 = control(a, control_72).pressed;
            }
        }
        label_74 =
            page_label(s, text_pool, -552, menu_literal_764, {"Pixel-7", "Pixel-7", "Pixel-7"});
        owned_text_75 = re::ReString(label_74);
        label_76 = page_label(s, text_pool, -536, menu_literal_765,
                              {"UI Font", "Шрифт интерфейса", "UI字体"});
        owned_text_77 = re::ReString(label_76);
        label_78 = page_label(s, text_pool, -504, menu_literal_766,
                              {"Minecraftia", "Minecraftia", "Minecraftia"});
        owned_text_79 = re::ReString(label_78);
        label_80 = page_label(s, text_pool, 32, menu_literal_767, {"Msyhbd", "Msyhbd", "Msyhbd"});
        owned_text_81 = re::ReString(label_80);
        label_82 = page_label(s, text_pool, -476, menu_literal_776,
                              {"Current Font", "Текущий шрифт", "当前字体"});
        {
            MenuControlRequest control_83;
            control_83.role = MenuControlRole::combo_strings;
            control_83.site = 0x34bc21;
            control_83.primitive = 0x3bf008;
            control_83.label = re::ReString(label_82);
            control_83.value = 0x3eed38;
            control_83.choices = {owned_text_75, owned_text_77, owned_text_79, owned_text_81};
            pressed_84 = control(a, control_83).pressed;
        }
        value_85 = raw(s, 0x3eed38);
        if ((value_85 != 1)) {
        } else {
            label_86 =
                page_label(s, text_pool, 32, menu_literal_769, {"Tiny", "Крошечный", "极小"});
            owned_text_87 = re::ReString(label_86);
            label_88 = page_label(s, text_pool, -504, menu_literal_770,
                                  {"Extra Small", "Очень маленький", "特小"});
            owned_text_89 = re::ReString(label_88);
            label_90 =
                page_label(s, text_pool, -536, menu_literal_771, {"Small", "Маленький", "小"});
            owned_text_91 = re::ReString(label_90);
            label_92 =
                page_label(s, text_pool, -552, menu_literal_772, {"Medium", "Средний", "中"});
            owned_text_93 = re::ReString(label_92);
            label_94 = page_label(s, text_pool, -488, menu_literal_773, {"Large", "Большой", "大"});
            owned_text_95 = re::ReString(label_94);
            label_96 = page_label(s, text_pool, -476, menu_literal_774,
                                  {"Extra Large", "Очень большой", "特大"});
            owned_text_97 = re::ReString(label_96);
            label_98 = page_label(s, text_pool, -456, menu_literal_777,
                                  {"Player Font Size", "Размер шрифта игроков", "玩家字体大小"});
            {
                MenuControlRequest control_99;
                control_99.role = MenuControlRole::combo_strings;
                control_99.site = 0x34be9d;
                control_99.primitive = 0x3bf008;
                control_99.label = re::ReString(label_98);
                control_99.value = 0x3fcd78;
                control_99.choices = {owned_text_87, owned_text_89, owned_text_91,
                                      owned_text_93, owned_text_95, owned_text_97};
                pressed_100 = control(a, control_99).pressed;
            }
            label_101 =
                page_label(s, text_pool, 32, menu_literal_769, {"Tiny", "Крошечный", "极小"});
            owned_text_102 = re::ReString(label_101);
            label_103 = page_label(s, text_pool, -504, menu_literal_770,
                                   {"Extra Small", "Очень маленький", "特小"});
            owned_text_104 = re::ReString(label_103);
            label_105 =
                page_label(s, text_pool, -536, menu_literal_771, {"Small", "Маленький", "小"});
            owned_text_106 = re::ReString(label_105);
            label_107 =
                page_label(s, text_pool, -552, menu_literal_772, {"Medium", "Средний", "中"});
            owned_text_108 = re::ReString(label_107);
            label_109 =
                page_label(s, text_pool, -488, menu_literal_773, {"Large", "Большой", "大"});
            owned_text_110 = re::ReString(label_109);
            label_111 = page_label(s, text_pool, -476, menu_literal_774,
                                   {"Extra Large", "Очень большой", "特大"});
            owned_text_112 = re::ReString(label_111);
            label_113 = page_label(s, text_pool, -456, menu_literal_778,
                                   {"Entity Font Size", "Размер шрифта сущностей", "实体字体大小"});
            {
                MenuControlRequest control_114;
                control_114.role = MenuControlRole::combo_strings;
                control_114.site = 0x34c105;
                control_114.primitive = 0x3bf008;
                control_114.label = re::ReString(label_113);
                control_114.value = 0x3ee7e8;
                control_114.choices = {owned_text_102, owned_text_104, owned_text_106,
                                       owned_text_108, owned_text_110, owned_text_112};
                pressed_115 = control(a, control_114).pressed;
            }
            label_116 =
                page_label(s, text_pool, 32, menu_literal_769, {"Tiny", "Крошечный", "极小"});
            owned_text_117 = re::ReString(label_116);
            label_118 = page_label(s, text_pool, -504, menu_literal_770,
                                   {"Extra Small", "Очень маленький", "特小"});
            owned_text_119 = re::ReString(label_118);
            label_120 =
                page_label(s, text_pool, -536, menu_literal_771, {"Small", "Маленький", "小"});
            owned_text_121 = re::ReString(label_120);
            label_122 =
                page_label(s, text_pool, -552, menu_literal_772, {"Medium", "Средний", "中"});
            owned_text_123 = re::ReString(label_122);
            label_124 =
                page_label(s, text_pool, -488, menu_literal_773, {"Large", "Большой", "大"});
            owned_text_125 = re::ReString(label_124);
            label_126 = page_label(s, text_pool, -476, menu_literal_774,
                                   {"Extra Large", "Очень большой", "特大"});
            owned_text_127 = re::ReString(label_126);
            label_128 =
                page_label(s, text_pool, -456, menu_literal_779,
                           {"Indicator Font Size", "Размер шрифта индикаторов", "指示器字体大小"});
            {
                MenuControlRequest control_129;
                control_129.role = MenuControlRole::combo_strings;
                control_129.site = 0x34c367;
                control_129.primitive = 0x3bf008;
                control_129.label = re::ReString(label_128);
                control_129.value = 0x3fce18;
                control_129.choices = {owned_text_117, owned_text_119, owned_text_121,
                                       owned_text_123, owned_text_125, owned_text_127};
                pressed_130 = control(a, control_129).pressed;
            }
        }
        cleanup(a);
    });
}
