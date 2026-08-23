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
