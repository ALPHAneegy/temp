local function r40(arg1_5, arg2_5, ...)
                    r41 = arg1_5;
                    r42 = arg2_5;
                    pcall(function(...)
                        local p = {
                            p[1],
                            p[2],
                            p[3],
                            p[4],
                            12,
                            13
                        };
                        v1 = O[p[1]];
                        if v1 then
                            v1 = O[p[1]];
                            v3 = v1.FindFirstChild(v1, "equipPetEvent");
                        end;
                        c = O[p[4]];
                        v4 = O[p[3]];
                        v2 = v4("\xa1\xeb\xdc\xe3\x9ac\xb3\xa8\xac+", 6729650834493);
                        c = c.FindFirstChild(c, O[p[2]][v2]) and c.FindFirstChild(c, r41);
                        if v1 then
                            v3 = h and c.FindFirstChild(c, r41);
                        end;
                        if v1 then
                            v9 = v9;
                            v2 = c.GetChildren;
                            v4 = {
                                v2(c)
                            };
                            v4 = v2[1];
                            G = v2[2];
                            for M, v7 in ipairs(K(v4)) do
                                v2 = M;
                                v1.FireServer(v1, r42 and "equipPet" or "unequipPet", v7);
                                task.wait(.02); 
                            end;
                        end;
                        return; 
                    end);
                    return; 

o.CreateSection(o, "Mass Equip / Unequip Toggles");
                o.CreateToggle(o, {
                    ["Name"] = "Equip / Unequip All Unique Pets",
                    ["CurrentValue"] = false,
                    ["Flag"] = "EquipUniqueFlag",
                    ["Callback"] = function(arg1_13, ...)
                        v1 = arg1_13;
                        c = v1;
                        getgenv().equipUnique = c;
                        r40("Unique", v1);
                        return; 
                    end
                });
                o.CreateToggle(o, {
                    ["Name"] = "Equip / Unequip All Omega Pets",
                    ["CurrentValue"] = false,
                    ["Flag"] = "EquipOmegaFlag",
                    ["Callback"] = function(arg1_14, ...)
                        v1 = arg1_14;
                        c = v1;
                        getgenv().equipOmega = c;
                        r40("Omega", v1);
                        return; 
                    end
                });
                o.CreateToggle(o, {
                    ["Name"] = "Equip / Unequip All Master Legend Pets",
                    ["CurrentValue"] = false,
                    ["Flag"] = "EquipMasterLegendFlag",
                    ["Callback"] = function(arg1_15, ...)
                        v1 = arg1_15;
                        c = v1;
                        getgenv().equipMasterLegend = c;
                        r40("Master Legend", v1);
                        return; 
                    end
                });
