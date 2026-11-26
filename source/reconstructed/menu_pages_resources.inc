// [C]33a6f8..33ac32, exact callback order/config aliases.
child(s, m, a, "L", text(s, {"Resources", "Ресурсы", "资源"}), {0, -1}, true);
checkbox(s, a, 0x33a7f8, {"Stone Ore", "Камень руда", "石矿"}, 0x3e79c8, 0, 0x3eb618);
checkbox(s, a, 0x33a857, {"HQM Ore", "штаб-квартира", "总部品质管理"}, 0x3e7a18, 0, 0x3eb738);
checkbox(s, a, 0x33a8b6, {"Metal Ore", "Металл руда", "金属矿"}, 0x3e7a68, 0, 0x3eb6d8);
checkbox(s, a, 0x33a915, {"Sulfur Ore", "Сера руда", "硫磺矿"}, 0x3e7b08, 0, 0x3eb798);
checkbox(s, a, 0x33a974, {"Wood Pile", "Куча дерева", "木堆"}, 0x3e6f28, 0, 0x3eb678);
checkbox(s, a, 0x33aa0e, {"Farming Tool Check", "Проверка инструмента", "工具检查"}, 0x3e6ed8, 0, 0,
         {"Checks required tool", "Проверяет инструмент", "检查所需工具"});
cleanup(a);
call(a, 0x39ac04, {0.0f, -1.0f});
child(s, m, a, "D", text(s, {"Resources Modifications", "Модификации ресурсов", "资源修改"}),
      {0, -1}, true);
checkbox(s, a, 0x33aae2, {"Ore Icons", "Ore Icons", "Ore Icons"}, 0x3e69d8);
// [C] This intentionally gates OreIconsMult on OTHER icons.
if (flag(s, 0x3e6b68))
    slider_float(s, a, 0x33ab44, {"Icon Size", "Icon Size", "Icon Size"}, 0x3ed2f8, 1.5f, 2.5f,
                 "%.3f");
checkbox(s, a, 0x33ab9f, {"Ore Chams", "Чамы руды", "矿物透视"}, 0x3e6e88);
slider_integer(s, a, 0x33ac18, {"Node Distance", "Дистанция узлов", "节点距离"}, 0x3ee888, 0, 500,
               "%d");
cleanup(a);
