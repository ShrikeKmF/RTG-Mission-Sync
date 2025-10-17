// roles.h

roleData = [
    ["Command and Support", [
        ["Team Leader", ["Light_Kits", "Medium_Kits", "Heavy_Kits"], "The Team Lead  is to lead their Lead in support of the platoon's objective by operating the radios and organising their sections movement."],
        ["Medic",       ["Light_Kits", "Medium_Kits", "Heavy_Kits"], "The Medic’s role is to keep the section alive and patch up the injured."],
        ["Crewman",     ["Medium_Kits", "Heavy_Kits"], "The Crewman's role is to operate many RTG vehicles to support the infantry sections whether that be by driving Armored vehicles."],
        ["Pilot",       ["Light_Kits", "Medium_Kits"], "The Pilot operates all of RTG air craft inclduing both Fixed and Rotary Wing"]
    ]],
    
    ["Direct Combat", [
        ["Rifleman",    ["Medium_Kits", "Heavy_Kits"], "The Rifleman is the junior member of the section whose role is to provide an adaptable and flexible capability to the section to assist the more specialist roles by carrying additional ammo and LATs."],
        ["Light Rifleman", ["Light_Kits"], "The Rifleman is the junior member of the section whose role is to provide an adaptable and flexible capability to the section to assist the more specialist roles by carrying additional ammo and LATs/SAMs."],
        ["Pointman",    ["Light_Kits", "Heavy_Kits"], "The Pointman is tasked with detecting mines and ensuring the sections safe movement and to assist the more specialist roles by carrying additional ammo"]
    ]],
    
    ["Fire Support", [
        ["Automatic Rifleman", ["Light_Kits", "Medium_Kits", "Heavy_Kits"], "The Auto Rifleman’s role is to support the section through the use of a light Machine gun to suppress the enemy elements, to achieve fire superiority ."],
        ["Grenadier",          ["Light_Kits", "Medium_Kits", "Heavy_Kits"], "The Grenadiers job it to rain hell with long range explosive whether that be with there grenade launcher or there 60mm mortar"],
        ["Rocket Grenadier",   ["Light_Kits", "Medium_Kits", "Heavy_Kits"], "The Rocket Grenadier's role is to support the section through direct fire HE rockets."],
        ["Combat Engineer",    ["Light_Kits", "Medium_Kits", "Heavy_Kits"], "The Combat Engineer is tasked with detecting mines and ensuring the sections safe movement, they can also destroy fixed targets with demolition charges."]
    ]],
    
    ["Specialist", [
        ["Medium Anti-Tank", ["Medium_Kits", "Heavy_Kits"], "The Medium Anti-Tanks role is to take heavy enemy assets out from a medium to short range."],
        ["Machine Gunner",   ["Medium_Kits"], "The Machine Gunners role is to support the section through the use of a medium Machine gun to suppress the enemy elements, to achieve fire superiority."],
        ["Heavy Anti-Tank",  [], "The heavy Anti-Tanks role is to take heavy enemy assets out from a to long to medium range."]
    ]]
];

roleDataWeapons = [
    ["Command and Support", [
        ["Team Leader", ["Light_Kits", "Medium_Kits"], "The Team Lead  is to lead their Lead in support of the platoon's objective by operating the radios and organising their sections movement."],
        ["Medic",       ["Light_Kits", "Medium_Kits"], "The Medic’s role is to keep the section alive and patch up the injured."],
        ["Crewman",     ["Medium_Kits"], "The Crewman's role is to operate many RTG vehicles to support the infantry sections whether that be by driving Armored vehicles."],
        ["Pilot",       [], "The Pilot operates all of RTG air craft inclduing both Fixed and Rotary Wing"]
    ]],
    
    ["Direct Combat", [
        ["Rifleman",    ["Medium_Kits"], "The Rifleman is the junior member of the section whose role is to provide an adaptable and flexible capability to the section to assist the more specialist roles by carrying additional ammo and LATs."],
        ["Light Rifleman", ["Light_Kits"], "The Rifleman is the junior member of the section whose role is to provide an adaptable and flexible capability to the section to assist the more specialist roles by carrying additional ammo and LATs/SAMs."],
        ["Pointman",    ["Light_Kits", "Medium_Kits"], "The Pointman is tasked with detecting mines and ensuring the sections safe movement and to assist the more specialist roles by carrying additional ammo"]
    ]],
    
    ["Fire Support", [
        ["Automatic Rifleman", [], "The Auto Rifleman’s role is to support the section through the use of a light Machine gun to suppress the enemy elements, to achieve fire superiority ."],
        ["Grenadier",          ["Light_Kits", "Medium_Kits"], "The Grenadiers job it to rain hell with long range explosive whether that be with there grenade launcher or there 60mm mortar"],
        ["Rocket Grenadier",   ["Light_Kits", "Medium_Kits"], "The Rocket Grenadier's role is to support the section through direct fire HE rockets."],
        ["Combat Engineer",    [], "The Combat Engineer is tasked with detecting mines and ensuring the sections safe movement, they can also destroy fixed targets with demolition charges."]
    ]],
    
    ["Specialist", [
        ["Medium Anti-Tank", ["Light_Kits"],"The Medium Anti-Tanks role is to take heavy enemy assets out from a medium to short range."],
        ["Machine Gunner",   ["Light_Kits", "Medium_Kits"], "The Machine Gunners role is to support the section through the use of a medium Machine gun to suppress the enemy elements, to achieve fire superiority."],
        ["Heavy Anti-Tank",  ["Medium_Kits"], "The heavy Anti-Tanks role is to take heavy enemy assets out from a to long to medium range."]
    ]]
];
