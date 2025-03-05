// ACE Advanced Ballistics
force ace_advanced_ballistics_ammoTemperatureEnabled = false;
force ace_advanced_ballistics_barrelLengthInfluenceEnabled = true;
force ace_advanced_ballistics_bulletTraceEnabled = true;
force ace_advanced_ballistics_enabled = true;
force ace_advanced_ballistics_muzzleVelocityVariationEnabled = true;
force ace_advanced_ballistics_simulationInterval = 0.05;

// ACE Advanced Fatigue
force ace_advanced_fatigue_enabled = false;
force ace_advanced_fatigue_enableStaminaBar = true;
force ace_advanced_fatigue_fadeStaminaBar = true;
force ace_advanced_fatigue_loadFactor = 1;
force ace_advanced_fatigue_performanceFactor = 1;
force ace_advanced_fatigue_recoveryFactor = 1;
force ace_advanced_fatigue_terrainGradientFactor = 1;

// ACE Advanced Throwing
force ace_advanced_throwing_enabled = true;
force ace_advanced_throwing_enablePickUp = true;
force ace_advanced_throwing_enablePickUpAttached = true;
ace_advanced_throwing_enableTempWindInfo = true;
force ace_advanced_throwing_showMouseControls = true;
force ace_advanced_throwing_showThrowArc = true;

// ACE Advanced Vehicle Damage
force ace_vehicle_damage_enableCarDamage = false;
force ace_vehicle_damage_enabled = true;

// ACE AI
force ace_ai_assignNVG = false;

// ACE Arsenal
force ace_arsenal_allowDefaultLoadouts = true;
force ace_arsenal_allowSharedLoadouts = true;
force ace_arsenal_camInverted = false;
ace_arsenal_defaultToFavorites = false;
force ace_arsenal_enableIdentityTabs = true;
force ace_arsenal_enableModIcons = true;
force ace_arsenal_EnableRPTLog = false;
ace_arsenal_favoritesColor = [0.9,0.875,0.6];
force ace_arsenal_fontHeight = 4.5;
force ace_arsenal_loadoutsSaveFace = true;
force ace_arsenal_loadoutsSaveInsignia = true;
force ace_arsenal_loadoutsSaveVoice = false;

// ACE Artillery
force ace_artillerytables_advancedCorrections = false;
force ace_artillerytables_disableArtilleryComputer = false;
force ace_mk6mortar_airResistanceEnabled = false;
force ace_mk6mortar_allowCompass = true;
force ace_mk6mortar_allowComputerRangefinder = true;
force ace_mk6mortar_useAmmoHandling = false;

// ACE Captives
force ace_captives_allowHandcuffOwnSide = true;
force ace_captives_allowSurrender = true;
force ace_captives_requireSurrender = 0;
force ace_captives_requireSurrenderAi = false;

// ACE Casings
force ace_casings_enabled = false;
force ace_casings_maxCasings = 250;

// ACE Common
force ace_common_allowFadeMusic = true;
force ace_common_checkPBOsAction = 0;
force ace_common_checkPBOsCheckAll = true;
force ace_common_checkPBOsWhitelist = "[]";
force ace_common_deployedSwayFactor = 1;
ace_common_displayTextColor = [0,0,0,0.1];
ace_common_displayTextFontColor = [1,1,1,1];
force ace_common_enableSway = true;
ace_common_epilepsyFriendlyMode = false;
force ace_common_progressBarInfo = 1;
force ace_common_restedSwayFactor = 1;
ace_common_settingFeedbackIcons = 1;
ace_common_settingProgressBarLocation = 1;
force ace_common_swayFactor = 1;

// ACE Cook-off
force ace_cookoff_ammoCookoffDuration = 1;
force ace_cookoff_cookoffDuration = 1;
force ace_cookoff_destroyVehicleAfterCookoff = true;
force ace_cookoff_enableAmmobox = true;
force ace_cookoff_enableAmmoCookoff = true;
force ace_cookoff_enableFire = true;
force ace_cookoff_probabilityCoef = 2.04223;
force ace_cookoff_removeAmmoDuringCookoff = true;

// ACE Crew Served Weapons
force ace_csw_ammoHandling = 2;
force ace_csw_defaultAssemblyMode = false;
ace_csw_dragAfterDeploy = true;
force ace_csw_handleExtraMagazines = true;
force ace_csw_handleExtraMagazinesType = 0;
force ace_csw_progressBarTimeCoefficent = 1;

// ACE Dragging
force ace_dragging_allowRunWithLightweight = true;
force ace_dragging_dragAndFire = true;
force ace_dragging_skipContainerWeight = true;
force ace_dragging_weightCoefficient = 1;

// ACE Explosives
force ace_explosives_customTimerDefault = 30;
force ace_explosives_customTimerMax = 1800;
force ace_explosives_customTimerMin = 1;
force ace_explosives_explodeOnDefuse = false;
force ace_explosives_punishNonSpecialists = false;
force ace_explosives_requireSpecialist = false;

// ACE Field Rations
force acex_field_rations_affectAdvancedFatigue = false;
force acex_field_rations_enabled = false;
force acex_field_rations_hudShowLevel = 40;
force acex_field_rations_hudTransparency = -1;
force acex_field_rations_hudType = 0;
force acex_field_rations_hungerSatiated = 1.5;
force acex_field_rations_terrainObjectActions = true;
force acex_field_rations_thirstQuenched = 1.5;
force acex_field_rations_timeWithoutFood = 2.85;
force acex_field_rations_timeWithoutWater = 3.25;
force acex_field_rations_waterSourceActions = 2;

// ACE Fire
force ace_fire_dropWeapon = 0;
force ace_fire_enabled = true;
force ace_fire_enableFlare = true;
force ace_fire_enableScreams = true;

// ACE Fortify
force ace_fortify_markObjectsOnMap = 0;
force ace_fortify_timeCostCoefficient = 0;
force ace_fortify_timeMin = 0;
force acex_fortify_settingHint = 0;

// ACE Fragmentation Simulation
force ace_frag_enabled = true;
force ace_frag_reflectionsEnabled = false;
force ace_frag_spallEnabled = true;
force ace_frag_spallIntensity = 0.5;

// ACE G-Forces
force ace_gforces_coef = 0.852273;
force ace_gforces_enabledFor = 0;

// ACE Goggles
force ace_goggles_effects = 2;
force ace_goggles_showClearGlasses = true;
force ace_goggles_showInThirdPerson = false;

// ACE Grenades
force ace_grenades_convertExplosives = false;

// ACE Grenades in hatches - Tweaked
force grenades_hatches_main_allowedBehaviorSetting = "[""CARELESS"",""SAFE"",""AWARE"",""COMBAT"",""STEALTH""]";
force grenades_hatches_main_allowedGrenadesSetting = "[""HandGrenade"",""MiniGrenade""]";
force grenades_hatches_main_autodetectGrenadesSetting = true;
force grenades_hatches_main_blacklistVehiclesInheritanceSetting = "[]";
force grenades_hatches_main_blacklistVehiclesSetting = "[]";
force grenades_hatches_main_damageDealtCrew = 5;
force grenades_hatches_main_damageDealtCrewVanilla = 0.25;
force grenades_hatches_main_damageDealtEngine = 1;
force grenades_hatches_main_damageDealtEngineMax = 1;
force grenades_hatches_main_damageDealtHull = 0.75;
force grenades_hatches_main_damageDealtHullMax = 0.75;
force grenades_hatches_main_damageDealtTurret = 1;
force grenades_hatches_main_damageDealtTurretMax = 1;
force grenades_hatches_main_damageType = true;
force grenades_hatches_main_delayExplosion = 5;
force grenades_hatches_main_delayInteraction = 3;
force grenades_hatches_main_disablePlayerAmbush = false;
force grenades_hatches_main_distanceInteraction = 10;
force grenades_hatches_main_enableKnowledgeMultiplier = false;
force grenades_hatches_main_forceCrewDismount = false;
force grenades_hatches_main_killCrewIfVehicleExplodes = false;
force grenades_hatches_main_knowledgeMultiplier = 5;
force grenades_hatches_main_whitelistVehiclesInheritanceSetting = "[""Tank"",""Wheeled_Apc_F""]";
force grenades_hatches_main_whitelistVehiclesSetting = "[]";

// ACE Headless
force acex_headless_delay = 15;
force acex_headless_enabled = true;
force acex_headless_endMission = 0;
force acex_headless_log = false;
force acex_headless_transferLoadout = 0;

// ACE Hearing
force ace_hearing_autoAddEarplugsToUnits = 1;
force ace_hearing_disableEarRinging = true;
force ace_hearing_earplugsVolume = 0.64764;
force ace_hearing_enableCombatDeafness = false;
force ace_hearing_enabledForZeusUnits = false;
force ace_hearing_unconsciousnessVolume = 0.2;

// ACE Interaction
force ace_interaction_disableNegativeRating = true;
force ace_interaction_enableAnimActions = true;
force ace_interaction_enableGroupRenaming = true;
force ace_interaction_enableMagazinePassing = true;
force ace_interaction_enableTeamManagement = true;
force ace_interaction_enableWeaponAttachments = true;
force ace_interaction_interactWithEnemyCrew = 0;
force ace_interaction_interactWithTerrainObjects = true;
force ace_interaction_remoteTeamManagement = true;

// ACE Interaction Menu
ace_gestures_showOnInteractionMenu = 2;
ace_interact_menu_actionOnKeyRelease = true;
ace_interact_menu_addBuildingActions = false;
ace_interact_menu_alwaysUseCursorInteraction = false;
ace_interact_menu_alwaysUseCursorSelfInteraction = true;
ace_interact_menu_colorShadowMax = [0,0,0,1];
ace_interact_menu_colorShadowMin = [0,0,0,0.25];
ace_interact_menu_colorTextMax = [1,1,1,1];
ace_interact_menu_colorTextMin = [1,1,1,0.25];
ace_interact_menu_consolidateSingleChild = false;
ace_interact_menu_cursorKeepCentered = false;
ace_interact_menu_cursorKeepCenteredSelfInteraction = false;
ace_interact_menu_menuAnimationSpeed = 0;
ace_interact_menu_menuBackground = 0;
ace_interact_menu_menuBackgroundSelf = 0;
ace_interact_menu_selectorColor = [1,0,0];
ace_interact_menu_shadowSetting = 2;
ace_interact_menu_textSize = 2;
ace_interact_menu_useListMenu = true;
ace_interact_menu_useListMenuSelf = false;

// ACE Kill Tracker
force ace_killtracker_showCrewKills = false;
force ace_killtracker_trackAI = true;

// ACE Logistics
ace_cargo_carryAfterUnload = true;
force ace_cargo_enable = true;
force ace_cargo_enableDeploy = true;
force ace_cargo_enableRename = false;
force ace_cargo_loadTimeCoefficient = 2;
ace_cargo_openAfterUnload = 0;
force ace_cargo_paradropTimeCoefficent = 2.5;
force ace_rearm_distance = 20;
force ace_rearm_enabled = true;
force ace_rearm_level = 1;
force ace_rearm_supply = 1;
force ace_refuel_cargoRate = 10;
force ace_refuel_enabled = true;
force ace_refuel_hoseLength = 50;
force ace_refuel_progressDuration = 2;
force ace_refuel_rate = 1;
force ace_towing_addRopeToVehicleInventory = true;

// ACE Magazine Repack
ace_magazinerepack_repackAnimation = true;
force ace_magazinerepack_repackLoadedMagazines = true;
force ace_magazinerepack_timePerAmmo = 1;
force ace_magazinerepack_timePerBeltLink = 8;
force ace_magazinerepack_timePerMagazine = 2;

// ACE Map
force ace_map_BFT_Enabled = false;
force ace_map_BFT_HideAiGroups = true;
force ace_map_BFT_Interval = 15;
force ace_map_BFT_ShowPlayerNames = false;
force ace_map_DefaultChannel = 1;
force ace_map_mapGlow = true;
force ace_map_mapIllumination = true;
force ace_map_mapLimitZoom = false;
force ace_map_mapShake = true;
force ace_map_mapShowCursorCoordinates = true;
force ace_markers_moveRestriction = 0;
force ace_markers_timestampEnabled = true;
force ace_markers_timestampFormat = "HH:MM:SS";
force ace_markers_timestampHourFormat = 24;
force ace_markers_timestampTimezone = 0;
ace_markers_TimestampUTCMinutesOffset = 0;
force ace_markers_timestampUTCOffset = 0;

// ACE Map Gestures
force ace_map_gestures_allowCurator = true;
force ace_map_gestures_allowSpectator = true;
force ace_map_gestures_briefingMode = 0;
ace_map_gestures_defaultColor = [1,0.720811,0,0.503564];
ace_map_gestures_defaultLeadColor = [1,0.70967,0,1];
force ace_map_gestures_enabled = true;
force ace_map_gestures_interval = 0.03;
force ace_map_gestures_maxRange = 14;
force ace_map_gestures_maxRangeCamera = 25;
ace_map_gestures_nameTextColor = [0,0,0,1];
force ace_map_gestures_onlyShowFriendlys = false;

// ACE Map Tools
force ace_maptools_drawStraightLines = true;
ace_maptools_plottingBoardAllowChannelDrawing = 1;
ace_maptools_rotateModifierKey = 1;

// ACE Medical
force ace_medical_ai_enabledFor = 0;
force ace_medical_ai_requireItems = 0;
force ace_medical_AIDamageThreshold = 1;
force ace_medical_bleedingCoefficient = 0.3;
force ace_medical_blood_bloodLifetime = 335;
force ace_medical_blood_enabledFor = 2;
force ace_medical_blood_maxBloodObjects = 200;
force ace_medical_deathChance = 0.597314;
force ace_medical_dropWeaponUnconsciousChance = 0;
force ace_medical_enableVehicleCrashes = false;
force ace_medical_engine_damagePassThroughEffect = 0;
force ace_medical_fatalDamageSource = 1;
force ace_medical_fractureChance = 0.1;
force ace_medical_fractures = 1;
force ace_medical_ivFlowRate = 5;
force ace_medical_limping = 1;
force ace_medical_painCoefficient = 0.8;
force ace_medical_painUnconsciousChance = 0.35;
force ace_medical_painUnconsciousThreshold = 0.5;
force ace_medical_playerDamageThreshold = 4;
force ace_medical_spontaneousWakeUpChance = 0.8;
force ace_medical_spontaneousWakeUpEpinephrineBoost = 10;
force ace_medical_statemachine_AIUnconsciousness = false;
force ace_medical_statemachine_cardiacArrestBleedoutEnabled = true;
force ace_medical_statemachine_cardiacArrestTime = 330;
force ace_medical_statemachine_fatalInjuriesAI = 0;
force ace_medical_statemachine_fatalInjuriesPlayer = 2;
force ace_medical_treatment_advancedBandages = 2;
force ace_medical_treatment_advancedDiagnose = 1;
force ace_medical_treatment_advancedMedication = true;
force ace_medical_treatment_allowBodyBagUnconscious = false;
force ace_medical_treatment_allowGraveDigging = 1;
force ace_medical_treatment_allowLitterCreation = true;
force ace_medical_treatment_allowSelfIV = 1;
force ace_medical_treatment_allowSelfPAK = 1;
force ace_medical_treatment_allowSelfStitch = 1;
force ace_medical_treatment_allowSharedEquipment = 1;
force ace_medical_treatment_bandageEffectiveness = 1;
force ace_medical_treatment_bandageRollover = true;
force ace_medical_treatment_clearTrauma = 0;
force ace_medical_treatment_consumePAK = 1;
force ace_medical_treatment_consumeSurgicalKit = 0;
force ace_medical_treatment_convertItems = 0;
force ace_medical_treatment_cprSuccessChanceMax = 0.4;
force ace_medical_treatment_cprSuccessChanceMin = 0.3;
force ace_medical_treatment_graveDiggingMarker = false;
force ace_medical_treatment_holsterRequired = 0;
force ace_medical_treatment_litterCleanupDelay = 440.756;
force ace_medical_treatment_locationEpinephrine = 0;
force ace_medical_treatment_locationIV = 0;
force ace_medical_treatment_locationPAK = 0;
force ace_medical_treatment_locationsBoostTraining = false;
force ace_medical_treatment_locationSurgicalKit = 0;
force ace_medical_treatment_maxLitterObjects = 200;
force ace_medical_treatment_medicEpinephrine = 0;
force ace_medical_treatment_medicIV = 0;
force ace_medical_treatment_medicPAK = 0;
force ace_medical_treatment_medicSurgicalKit = 0;
force ace_medical_treatment_timeCoefficientPAK = 2.48579;
force ace_medical_treatment_treatmentTimeAutoinjector = 1;
force ace_medical_treatment_treatmentTimeBodyBag = 4;
force ace_medical_treatment_treatmentTimeCoeffZeus = 1;
force ace_medical_treatment_treatmentTimeCPR = 10;
force ace_medical_treatment_treatmentTimeGrave = 30;
force ace_medical_treatment_treatmentTimeIV = 3;
force ace_medical_treatment_treatmentTimeSplint = 3;
force ace_medical_treatment_treatmentTimeTourniquet = 0.8;
force ace_medical_treatment_woundReopenChance = 0.75;
force ace_medical_treatment_woundStitchTime = 1;
force ace_medical_vitals_simulateSpO2 = true;

// ACE Medical Interface
ace_medical_feedback_bloodVolumeEffectType = 0;
ace_medical_feedback_enableHUDIndicators = true;
ace_medical_feedback_painEffectType = 0;
ace_medical_gui_bloodLossColor_0 = [1,1,1,1];
ace_medical_gui_bloodLossColor_1 = [1,0.94,0.48,1];
ace_medical_gui_bloodLossColor_2 = [1,0.87,0.25,1];
ace_medical_gui_bloodLossColor_3 = [1,0.79,0.17,1];
ace_medical_gui_bloodLossColor_4 = [1,0.71,0.11,1];
ace_medical_gui_bloodLossColor_5 = [1,0.62,0.05,1];
ace_medical_gui_bloodLossColor_6 = [1,0.53,0.01,1];
ace_medical_gui_bloodLossColor_7 = [1,0.42,0,1];
ace_medical_gui_bloodLossColor_8 = [1,0.29,0,1];
ace_medical_gui_bloodLossColor_9 = [1,0,0,1];
ace_medical_gui_bodyPartOutlineColor = [1,1,1,1];
ace_medical_gui_damageColor_0 = [1,1,1,1];
ace_medical_gui_damageColor_1 = [0.52,0.73,1,1];
ace_medical_gui_damageColor_2 = [0.38,0.68,1,1];
ace_medical_gui_damageColor_3 = [0.37,0.6,1,1];
ace_medical_gui_damageColor_4 = [0.35,0.53,1,1];
ace_medical_gui_damageColor_5 = [0.33,0.45,1,1];
ace_medical_gui_damageColor_6 = [0.3,0.37,1,1];
ace_medical_gui_damageColor_7 = [0.25,0.29,1,1];
ace_medical_gui_damageColor_8 = [0.18,0.18,1,1];
ace_medical_gui_damageColor_9 = [0,0,1,1];
ace_medical_gui_enableActions = 0;
ace_medical_gui_enableMedicalMenu = 1;
ace_medical_gui_enableSelfActions = true;
ace_medical_gui_interactionMenuShowTriage = 1;
force ace_medical_gui_maxDistance = 3;
ace_medical_gui_openAfterTreatment = true;
ace_medical_gui_peekMedicalInfoReleaseDelay = 1;
ace_medical_gui_peekMedicalOnHit = false;
ace_medical_gui_peekMedicalOnHitDuration = 1;
force ace_medical_gui_showBleeding = 2;
force ace_medical_gui_showBloodlossEntry = true;
force ace_medical_gui_showDamageEntry = false;
ace_medical_gui_tourniquetWarning = false;

// ACE Name Tags
force ace_nametags_ambientBrightnessAffectViewDist = 1;
force ace_nametags_defaultNametagColor = [0.77,0.51,0.08,1];
force ace_nametags_nametagColorBlue = [0.67,0.67,1,1];
force ace_nametags_nametagColorGreen = [0.67,1,0.67,1];
force ace_nametags_nametagColorMain = [1,1,1,1];
force ace_nametags_nametagColorRed = [1,0.67,0.67,1];
force ace_nametags_nametagColorYellow = [1,1,0.67,1];
force ace_nametags_playerNamesMaxAlpha = 0.802054;
force ace_nametags_playerNamesViewDistance = 7.5;
force ace_nametags_showCursorTagForVehicles = true;
force ace_nametags_showNamesForAI = true;
force ace_nametags_showPlayerNames = 5;
force ace_nametags_showPlayerRanks = false;
force ace_nametags_showSoundWaves = 1;
force ace_nametags_showVehicleCrewInfo = true;
force ace_nametags_tagSize = 1;

// ACE Nightvision
force ace_nightvision_aimDownSightsBlur = 0;
force ace_nightvision_disableNVGsWithSights = false;
force ace_nightvision_effectScaling = 1;
force ace_nightvision_fogScaling = 0.1;
force ace_nightvision_noiseScaling = 0.1;
force ace_nightvision_shutterEffects = true;

// ACE Overheating
force ace_overheating_cookoffCoef = 0;
force ace_overheating_coolingCoef = 2;
force ace_overheating_displayTextOnJam = false;
force ace_overheating_enabled = false;
force ace_overheating_heatCoef = 0.5;
force ace_overheating_jamChanceCoef = 1;
force ace_overheating_overheatingDispersion = false;
force ace_overheating_overheatingRateOfFire = false;
force ace_overheating_particleEffectsAndDispersionDistance = 3000;
force ace_overheating_showParticleEffects = true;
force ace_overheating_showParticleEffectsForEveryone = false;
force ace_overheating_suppressorCoef = 0;
force ace_overheating_unJamFailChance = 0.1;
force ace_overheating_unJamOnreload = false;
force ace_overheating_unJamOnSwapBarrel = false;

// ACE Pointing
force ace_finger_enabled = true;
force ace_finger_indicatorColor = [0.83,0.68,0.21,0.75];
force ace_finger_indicatorForSelf = true;
force ace_finger_maxRange = 12;
force ace_finger_proximityScaling = true;
force ace_finger_sizeCoef = 0.7;

// ACE Pylons
force ace_pylons_enabledForZeus = true;
force ace_pylons_enabledFromAmmoTrucks = true;
force ace_pylons_rearmNewPylons = false;
force ace_pylons_requireEngineer = false;
force ace_pylons_requireToolkit = false;
force ace_pylons_searchDistance = 40;
force ace_pylons_timePerPylon = 5;

// ACE Quick Mount
force ace_quickmount_distance = 3;
force ace_quickmount_enabled = true;
force ace_quickmount_enableMenu = 3;
ace_quickmount_priority = 0;
force ace_quickmount_speed = 18;

// ACE Repair
force ace_repair_addSpareParts = true;
force ace_repair_autoShutOffEngineWhenStartingRepair = false;
force ace_repair_consumeItem_toolKit = 0;
force ace_repair_displayTextOnRepair = true;
force ace_repair_enabled = true;
force ace_repair_engineerSetting_fullRepair = 0;
force ace_repair_engineerSetting_repair = 0;
force ace_repair_engineerSetting_wheel = 0;
force ace_repair_fullRepairLocation = 1;
force ace_repair_fullRepairRequiredItems = ["ace_repair_anyToolKit"];
force ace_repair_locationsBoostTraining = false;
force ace_repair_miscRepairRequiredItems = ["ace_repair_anyToolKit"];
force ace_repair_miscRepairTime = 15;
force ace_repair_patchWheelEnabled = 0;
force ace_repair_patchWheelLocation = ["ground","vehicle"];
force ace_repair_patchWheelMaximumRepair = 0.3;
force ace_repair_patchWheelRequiredItems = ["ace_repair_anyToolKit"];
force ace_repair_patchWheelTime = 5;
force ace_repair_repairDamageThreshold = 0.75;
force ace_repair_repairDamageThreshold_engineer = 0.75;
force ace_repair_timeCoefficientFullRepair = 1.5;
force ace_repair_wheelChangeTime = 10;
force ace_repair_wheelRepairRequiredItems = [];

// ACE Respawn
force ace_respawn_removeDeadBodiesDisconnected = false;
force ace_respawn_savePreDeathGear = false;

// ACE Scopes
force ace_scopes_correctZeroing = false;
force ace_scopes_deduceBarometricPressureFromTerrainAltitude = false;
force ace_scopes_defaultZeroRange = 100;
force ace_scopes_enabled = false;
force ace_scopes_forceUseOfAdjustmentTurrets = false;
force ace_scopes_inScopeAdjustment = false;
force ace_scopes_overwriteZeroRange = false;
force ace_scopes_simplifiedZeroing = true;
ace_scopes_useLegacyUI = false;
force ace_scopes_zeroReferenceBarometricPressure = 1013.25;
force ace_scopes_zeroReferenceHumidity = 0;
force ace_scopes_zeroReferenceTemperature = 15;

// ACE Sitting
force acex_sitting_enable = true;

// ACE Spectator
force ace_spectator_enableAI = false;
force ace_spectator_maxFollowDistance = 5;
force ace_spectator_restrictModes = 0;
force ace_spectator_restrictVisions = 0;

// ACE Switch Units
force ace_switchunits_enableSafeZone = true;
force ace_switchunits_enableSwitchUnits = false;
force ace_switchunits_safeZoneRadius = 100;
force ace_switchunits_switchToCivilian = false;
force ace_switchunits_switchToEast = false;
force ace_switchunits_switchToIndependent = false;
force ace_switchunits_switchToWest = false;

// ACE Trenches
force ace_trenches_bigEnvelopeDigDuration = 30;
force ace_trenches_bigEnvelopeRemoveDuration = 15;
force ace_trenches_smallEnvelopeDigDuration = 20;
force ace_trenches_smallEnvelopeRemoveDuration = 10;

// ACE Uncategorized
force ace_fastroping_autoAddFRIES = true;
force ace_fastroping_requireRopeItems = false;
force ace_gunbag_swapGunbagEnabled = true;
force ace_hitreactions_minDamageToTrigger = 1;
force ace_hitreactions_weaponDropChanceArmHitAI = 0;
force ace_hitreactions_weaponDropChanceArmHitPlayer = 0;
ace_inventory_inventoryDisplaySize = 0;
force ace_laser_dispersionCount = 5;
force ace_laser_showLaserOnMap = 1;
force ace_marker_flags_placeAnywhere = false;
force ace_microdagr_mapDataAvailable = 2;
force ace_microdagr_waypointPrecision = 3;
force ace_noradio_enabled = true;
ace_optionsmenu_showNewsOnMainMenu = false;
force ace_overpressure_backblastDistanceCoefficient = 1;
force ace_overpressure_overpressureDistanceCoefficient = 1;
force ace_parachute_failureChance = 0.02;
force ace_parachute_hideAltimeter = false;
ace_tagging_quickTag = 1;

// ACE User Interface
force ace_ui_allowSelectiveUI = true;
force ace_ui_ammoCount = true;
force ace_ui_ammoType = true;
force ace_ui_commandMenu = false;
force ace_ui_enableSpeedIndicator = true;
force ace_ui_firingMode = true;
force ace_ui_groupBar = false;
force ace_ui_gunnerAmmoCount = true;
force ace_ui_gunnerAmmoType = true;
force ace_ui_gunnerFiringMode = true;
force ace_ui_gunnerLaunchableCount = true;
force ace_ui_gunnerLaunchableName = true;
force ace_ui_gunnerMagCount = true;
force ace_ui_gunnerWeaponLowerInfoBackground = true;
force ace_ui_gunnerWeaponName = true;
force ace_ui_gunnerWeaponNameBackground = false;
force ace_ui_gunnerZeroing = true;
ace_ui_hideDefaultActionIcon = false;
force ace_ui_magCount = true;
force ace_ui_soldierVehicleWeaponInfo = true;
force ace_ui_staminaBar = true;
force ace_ui_stance = true;
force ace_ui_throwableCount = true;
force ace_ui_throwableName = true;
force ace_ui_vehicleAltitude = true;
force ace_ui_vehicleCompass = true;
force ace_ui_vehicleDamage = true;
force ace_ui_vehicleFuelBar = true;
force ace_ui_vehicleInfoBackground = true;
force ace_ui_vehicleName = true;
force ace_ui_vehicleNameBackground = true;
force ace_ui_vehicleRadar = true;
force ace_ui_vehicleSpeed = true;
force ace_ui_weaponLowerInfoBackground = false;
force ace_ui_weaponName = true;
force ace_ui_weaponNameBackground = false;
force ace_ui_zeroing = true;

// ACE Vehicle Lock
force ace_vehiclelock_defaultLockpickStrength = 10;
force ace_vehiclelock_lockVehicleInventory = false;
force ace_vehiclelock_vehicleStartingLockState = -1;

// ACE Vehicles
force ace_novehicleclanlogo_enabled = false;
ace_vehicles_hideEjectAction = true;
force ace_vehicles_keepEngineRunning = false;
force ace_vehicles_speedLimiterStep = 5;
force ace_viewports_enabled = true;

// ACE View Distance Limiter
force ace_viewdistance_enabled = true;
force ace_viewdistance_limitViewDistance = 12000;
ace_viewdistance_objectViewDistanceCoeff = 6;
ace_viewdistance_viewDistanceAirVehicle = 8;
ace_viewdistance_viewDistanceLandVehicle = 8;
ace_viewdistance_viewDistanceOnFoot = 4;

// ACE View Restriction
force acex_viewrestriction_mode = 0;
force acex_viewrestriction_modeSelectiveAir = 0;
force acex_viewrestriction_modeSelectiveFoot = 0;
force acex_viewrestriction_modeSelectiveLand = 0;
force acex_viewrestriction_modeSelectiveSea = 0;
acex_viewrestriction_preserveView = false;

// ACE Volume
acex_volume_enabled = false;
acex_volume_fadeDelay = 1;
acex_volume_lowerInVehicles = false;
acex_volume_reduction = 5;
acex_volume_remindIfLowered = false;
acex_volume_showNotification = true;

// ACE Weapons
force ace_common_persistentLaserEnabled = true;
force ace_reload_displayText = true;
force ace_reload_showCheckAmmoSelf = true;
ace_reloadlaunchers_displayStatusText = true;
force ace_weaponselect_displayText = false;

// ACE Weather
force ace_weather_enabled = false;
force ace_weather_showCheckAirTemperature = true;
force ace_weather_updateInterval = 60;
force ace_weather_windSimulation = false;

// ACE Wind Deflection
force ace_winddeflection_enabled = true;
force ace_winddeflection_simulationInterval = 0.08;
force ace_winddeflection_vehicleEnabled = false;

// ACE Zeus
force ace_zeus_autoAddObjects = true;
force ace_zeus_canCreateZeus = 0;
force ace_zeus_radioOrdnance = false;
force ace_zeus_remoteWind = false;
force ace_zeus_revealMines = 1;
force ace_zeus_zeusAscension = false;
force ace_zeus_zeusBird = false;

// ACRE Persistence
l6AA_acre_amountOfRadiosToRestore = 6;
l6AA_acre_defaultSpeechVolume = 2;
l6AA_acre_defaultSpeechVolumeLeader = 2;
l6AA_acre_radioTypesToRestore = "'ACRE_PRC77', 'ACRE_PRC117F', 'ACRE_PRC148', 'ACRE_PRC152', 'ACRE_PRC343', 'ACRE_SEM52SL', 'ACRE_SEM70', 'ACRE_BF888S'";
l6AA_acre_restoreRadiosOnRespawn = true;
l6AA_acre_restoreRadiosOnRespawnDelay = 5;

// ACRE2
force acre_sys_core_automaticAntennaDirection = true;
acre_sys_core_defaultRadioVolume = 0.8;
force acre_sys_core_fullDuplex = true;
force acre_sys_core_godVolume = 1;
force acre_sys_core_ignoreAntennaDirection = true;
force acre_sys_core_interference = false;
acre_sys_core_postmixGlobalVolume = 1;
acre_sys_core_premixGlobalVolume = 1;
force acre_sys_core_revealToAI = 1;
force acre_sys_core_spectatorVolume = 1;
force acre_sys_core_terrainLoss = 0.3;
force acre_sys_core_ts3ChannelName = "ACRE";
force acre_sys_core_ts3ChannelPassword = "";
force acre_sys_core_ts3ChannelSwitch = true;
force acre_sys_core_unmuteClients = false;
force acre_sys_radio_defaultRadio = "ACRE_PRC343";
force acre_sys_signal_signalModel = 0;

// ACRE2 Gestures
force acre_sys_gestures_enabled = true;
force acre_sys_gestures_stopADS = false;

// ACRE2 UI
acre_sys_godmode_rxNotification = true;
acre_sys_godmode_rxNotificationColor = [0.8,0.8,0.8,1];
acre_sys_godmode_txNotification = true;
acre_sys_godmode_txNotificationCurrentChatColor = [0.8,0.8,0.8,1];
acre_sys_godmode_txNotificationGroup1Color = [0.8,0.8,0.8,1];
acre_sys_godmode_txNotificationGroup2Color = [0.8,0.8,0.8,1];
acre_sys_godmode_txNotificationGroup3Color = [0.8,0.8,0.8,1];
acre_sys_gui_volumeColorScale = [[1,1,0,0.5],[1,0.83,0,0.5],[1,0.65,0,0.5],[1,0.44,0,0.5],[1,0,0,0.5]];
acre_sys_list_CycleRadiosColor = [0.66,0.05,1,1];
acre_sys_list_DefaultPTTColor = [1,0.8,0,1];
acre_sys_list_HintBackgroundColor = [0,0,0,0.8];
acre_sys_list_HintTextFont = "RobotoCondensed";
acre_sys_list_LanguageColor = [1,0.29,0.16,1];
acre_sys_list_PTT1Color = [1,0.8,0,1];
acre_sys_list_PTT2Color = [1,0.8,0,1];
acre_sys_list_PTT3Color = [1,0.8,0,1];
acre_sys_list_SwitchChannelColor = [0.66,0.05,1,1];
acre_sys_list_ToggleHeadsetColor = [0.66,0.05,1,1];

// ACRE2 Zeus
force acre_sys_zeus_zeusCanSpectate = true;
force acre_sys_zeus_zeusCommunicateViaCamera = true;
acre_sys_zeus_zeusDefaultVoiceSource = true;

// Advanced Garbage Collector
force AGC_bodyType = "Land_Bodybag_01_black_F";
force AGC_checkTimes = 50;
force AGC_GCenabled = true;
force AGC_GCmaxBodyTime = 0;
force AGC_GCmaxDistance = 1000;
force AGC_GCmaxTime = 1800;
force AGC_GCminDistance = 600;
force AGC_GCminTime = 180;
force AGC_GCrefreshInterval = 0.2;
force AGC_GCvehicleCleanupDistance = 10;
force AGC_maxBodyHandle = 0;
force AGC_ragdoll = true;
force AGC_removeItems = 100;
force AGC_showBodyCount = false;

// CF_BAI
force CF_BAI_subskills_maximum_aimingAccuracy = 1;
force CF_BAI_subskills_maximum_aimingShake = 1;
force CF_BAI_subskills_maximum_aimingSpeed = 1;
force CF_BAI_subskills_maximum_commanding = 1;
force CF_BAI_subskills_maximum_courage = 1;
force CF_BAI_subskills_maximum_general = 1;
force CF_BAI_subskills_maximum_reloadSpeed = 1;
force CF_BAI_subskills_maximum_spotDistance = 0.7;
force CF_BAI_subskills_maximum_spotTime = 1;
force CF_BAI_subskills_minimum_aimingAccuracy = 0.1;
force CF_BAI_subskills_minimum_aimingShake = 0.1;
force CF_BAI_subskills_minimum_aimingSpeed = 0.45;
force CF_BAI_subskills_minimum_commanding = 0.25;
force CF_BAI_subskills_minimum_courage = 0.1;
force CF_BAI_subskills_minimum_general = 0.1;
force CF_BAI_subskills_minimum_reloadSpeed = 0.1;
force CF_BAI_subskills_minimum_spotDistance = 0.1;
force CF_BAI_subskills_minimum_spotTime = 0.35;
force CF_BAI_subskills_sleep = 30;
force CF_BAI_subskills_terrain_maximum_default = 30;
force CF_BAI_subskills_terrain_maximum_world_code = "[[""pja310"",25],[""Panthera3"",25]]";
force CF_BAI_subskills_terrain_range = 20;

// CF_BAI_boost
force CF_BAI_boost_bulletsToMaxBoost = 4;
force CF_BAI_boost_disableBoost = false;
force CF_BAI_boost_maxBoost = 1.25;
force CF_BAI_boost_minimumShotDistance = 150;
force CF_BAI_boost_minimumShotInterval = 1;
force CF_BAI_boost_targetChangeSleepTime = 0.2;
force CF_BAI_boost_toleranceRange = 20;

// CF_BAI_detect
force CF_BAI_detect_aiplayervision_max_distance = 900;
force CF_BAI_detect_aivision_aware_chance = 0.8;
force CF_BAI_detect_aivision_aware_knowledge = 0.9;
force CF_BAI_detect_aivision_careless_chance = 0.35;
force CF_BAI_detect_aivision_careless_knowledge = 0.35;
force CF_BAI_detect_aivision_combat_chance = 1;
force CF_BAI_detect_aivision_combat_knowledge = 1;
force CF_BAI_detect_aivision_nobino_chance = 0.75;
force CF_BAI_detect_aivision_nobino_knowledge = 0.75;
force CF_BAI_detect_aivision_nooptics_chance = 0.5;
force CF_BAI_detect_aivision_nooptics_knowledge = 0.5;
force CF_BAI_detect_aivision_nooptics_range = 400;
force CF_BAI_detect_aivision_nvg_percentage = 0.18;
force CF_BAI_detect_aivision_optics_range = 900;
force CF_BAI_detect_aivision_safe_chance = 0.5;
force CF_BAI_detect_aivision_safe_knowledge = 0.8;
force CF_BAI_detect_aivision_stealth_chance = 0.75;
force CF_BAI_detect_aivision_stealth_knowledge = 0.75;
force CF_BAI_detect_disableDetect = false;
force CF_BAI_detect_environmentConiditions_fog = 0.7;
force CF_BAI_detect_environmentConiditions_nightTime = 0.35;
force CF_BAI_detect_environmentConiditions_rain = 0.6;
force CF_BAI_detect_overall_visibility_multiplier = 1.5;
force CF_BAI_detect_playerVisibility_crouch_chance = 0.45;
force CF_BAI_detect_playerVisibility_crouch_knowledge = 1;
force CF_BAI_detect_playerVisibility_movement = 0.5;
force CF_BAI_detect_playerVisibility_movement_knowledge = 1;
force CF_BAI_detect_playerVisibility_prone_chance = 0.08;
force CF_BAI_detect_playerVisibility_prone_knowledge = 1;
force CF_BAI_detect_playerVisibility_standing_chance = 1;
force CF_BAI_detect_playerVisibility_standing_knowledge = 1;
force CF_BAI_detect_playerVisibility_terrain_count = 6;

// CF_BAI_suppression
force CF_BAI_suppression_aimingAccuracy = 0.2;
force CF_BAI_suppression_aimingShake = 0.15;
force CF_BAI_suppression_aimingSpeed = 0.6;
force CF_BAI_suppression_bulletImpact = 0.1;
force CF_BAI_suppression_commanding = 0.2;
force CF_BAI_suppression_courage = 0.2;
force CF_BAI_suppression_decay = 0.03;
force CF_BAI_suppression_decaySleep = 5;
force CF_BAI_suppression_disableSuppression = false;
force CF_BAI_suppression_general = 0.5;
force CF_BAI_suppression_heldTime = 11;
force CF_BAI_suppression_reloadSpeed = 0.5;
force CF_BAI_suppression_spotDistance = 0.65;
force CF_BAI_suppression_spotTime = 0.75;

// Community Base Addons
cba_diagnostic_ConsoleIndentType = -1;
force cba_diagnostic_watchInfoRefreshRate = 0.2;
force cba_disposable_dropUsedLauncher = 2;
force cba_disposable_replaceDisposableLauncher = true;
cba_events_repetitionMode = 1;
force cba_network_loadoutValidation = 0;
cba_optics_usePipOptics = true;
cba_ui_notifyLifetime = 4;
cba_ui_StorePasswords = 1;

// Crows Zeus Additions
crowsza_pingbox_CBA_Setting_enabled = true;
crowsza_pingbox_CBA_Setting_fade_duration = 300;
crowsza_pingbox_CBA_Setting_fade_enabled = true;
crowsza_pingbox_CBA_Setting_oldLimit = 600;
crowsza_zeus_text_CBA_Setting_OnKilledModule_helper = true;
crowsza_zeus_text_CBA_Setting_OnKilledModule_helper_color = [1,1,1,1];
crowsza_zeus_text_CBA_Setting_rc_helper = true;
crowsza_zeus_text_CBA_Setting_rc_helper_color = [1,1,1,1];
crowsza_zeus_text_CBA_Setting_surrender_helper = true;
crowsza_zeus_text_CBA_Setting_surrender_helper_color = [1,1,1,1];
crowsza_zeus_text_CBA_Setting_zeusTextLine1 = true;
crowsza_zeus_text_CBA_Setting_zeusTextLine2 = true;
crowsza_zeus_text_CBA_Setting_zeusTextLine3 = false;

// Diwako's Punish unknown weapon
force diwako_unknownwp_add_weapons = "";
force diwako_unknownwp_briefing = false;
force diwako_unknownwp_cooldown = 360;
force diwako_unknownwp_dispersion_add = 0;
force diwako_unknownwp_enable = true;
force diwako_unknownwp_jam_explosion = 32;
force diwako_unknownwp_jamchance_add = 0;
force diwako_unknownwp_propagation = true;
force diwako_unknownwp_reload_failure = 32;

// DUI - Squad Radar - Indicators
force diwako_dui_indicators_crew_range_enabled = false;
force diwako_dui_indicators_fov_scale = true;
diwako_dui_indicators_icon_buddy = true;
diwako_dui_indicators_icon_leader = true;
diwako_dui_indicators_icon_medic = false;
diwako_dui_indicators_range = 20;
diwako_dui_indicators_range_crew = 300;
diwako_dui_indicators_range_scale = false;
diwako_dui_indicators_show = true;
diwako_dui_indicators_size = 1;
diwako_dui_indicators_style = "standard";
diwako_dui_indicators_useACENametagsRange = true;

// DUI - Squad Radar - Main
force diwako_dui_ace_hide_interaction = false;
diwako_dui_colors = "standard";
diwako_dui_font = "RobotoCondensed";
diwako_dui_icon_style = "standard";
diwako_dui_main_hide_dialog = false;
diwako_dui_main_hide_ui_by_default = false;
diwako_dui_main_squadBlue = [0,0,1,1];
diwako_dui_main_squadGreen = [0,1,0,1];
diwako_dui_main_squadMain = [1,1,1,1];
diwako_dui_main_squadRed = [1,0,0,1];
diwako_dui_main_squadYellow = [1,1,0,1];
diwako_dui_main_trackingColor = [0.93,0.26,0.93,1];
diwako_dui_reset_ui_pos = false;

// DUI - Squad Radar - Nametags
force diwako_dui_nametags_customRankStyle = "[[""PRIVATE"",""CORPORAL"",""SERGEANT"",""LIEUTENANT"",""CAPTAIN"",""MAJOR"",""COLONEL""],[""Pvt."",""Cpl."",""Sgt."",""Lt."",""Capt."",""Maj."",""Col.""]]";
force diwako_dui_nametags_deadColor = [0.2,0.2,0.2,1];
force diwako_dui_nametags_deadRenderDistance = 3.5;
force diwako_dui_nametags_drawRank = true;
force diwako_dui_nametags_enabled = false;
force diwako_dui_nametags_enableFOVBoost = true;
force diwako_dui_nametags_enableOcclusion = true;
force diwako_dui_nametags_fadeInTime = 0.05;
force diwako_dui_nametags_fadeOutTime = 0.5;
force diwako_dui_nametags_fontGroup = "RobotoCondensedLight";
diwako_dui_nametags_fontGroupNameSize = 8;
force diwako_dui_nametags_fontName = "RobotoCondensedBold";
diwako_dui_nametags_fontNameSize = 10;
diwako_dui_nametags_groupColor = [1,1,1,1];
diwako_dui_nametags_groupFontShadow = 1;
diwako_dui_nametags_groupNameOtherGroupColor = [0.6,0.85,0.6,1];
diwako_dui_nametags_nameFontShadow = 1;
diwako_dui_nametags_nameOtherGroupColor = [0.2,1,0,1];
diwako_dui_nametags_rankNameStyle = "default";
force diwako_dui_nametags_renderDistance = 40;
force diwako_dui_nametags_showUnconAsDead = true;
diwako_dui_nametags_useLIS = true;
diwako_dui_nametags_useSideIsFriendly = true;

// DUI - Squad Radar - Radar
force diwako_dui_compass_hide_alone_group = false;
force diwako_dui_compass_hide_blip_alone_group = false;
diwako_dui_compass_icon_scale = 1;
diwako_dui_compass_opacity = 1;
diwako_dui_compass_style = ["\z\diwako_dui\addons\radar\UI\compass_styles\classic\limited.paa","\z\diwako_dui\addons\radar\UI\compass_styles\classic\full.paa"];
force diwako_dui_compassRange = 40;
force diwako_dui_compassRefreshrate = 0.01;
diwako_dui_dir_showMildot = false;
diwako_dui_dir_size = 1.25;
force diwako_dui_distanceWarning = 5;
diwako_dui_enable_compass = true;
force diwako_dui_enable_compass_dir = 2;
force diwako_dui_enable_occlusion = false;
force diwako_dui_enable_occlusion_cone = 178;
diwako_dui_hudScaling = 1.33333;
diwako_dui_namelist = false;
diwako_dui_namelist_bg = 0;
diwako_dui_namelist_only_buddy_icon = false;
diwako_dui_namelist_size = 1;
diwako_dui_namelist_text_shadow = 2;
diwako_dui_namelist_width = 215;
diwako_dui_radar_ace_finger = true;
force diwako_dui_radar_ace_medic = true;
force diwako_dui_radar_always_show_unit_numbers = false;
diwako_dui_radar_compassRangeCrew = 500;
diwako_dui_radar_dir_padding = 25;
diwako_dui_radar_dir_shadow = 2;
force diwako_dui_radar_enable_seat_icons = true;
force diwako_dui_radar_group_by_vehicle = true;
diwako_dui_radar_icon_opacity = 1;
diwako_dui_radar_icon_opacity_no_player = true;
force diwako_dui_radar_icon_priority_setting = 0;
diwako_dui_radar_icon_scale_crew = 6;
force diwako_dui_radar_leadingZeroes = true;
diwako_dui_radar_namelist_hideWhenLeader = false;
force diwako_dui_radar_namelist_vertical_spacing = 0.75;
diwako_dui_radar_occlusion_fade_in_time = 1;
force diwako_dui_radar_occlusion_fade_time = 10;
diwako_dui_radar_pointer_color = [1,0.809228,0,1];
force diwako_dui_radar_pointer_style = "wedge";
diwako_dui_radar_show_cardinal_points = true;
force diwako_dui_radar_showSpeaking = true;
force diwako_dui_radar_showSpeaking_radioOnly = true;
force diwako_dui_radar_showSpeaking_replaceIcon = true;
force diwako_dui_radar_sortType = "fireteam";
force diwako_dui_radar_sqlFirst = true;
force diwako_dui_radar_syncGroup = false;
force diwako_dui_radar_vehicleCompassEnabled = false;
diwako_dui_use_layout_editor = false;

// FPV Settings
force FPV_DefaultText = "CROCUS";
force FPV_isUavCaptive = false;
force FPV_MaxFlightDistance = 1500;

// GRAD Trenches
force grad_trenches_functions_allowBigEnvelope = true;
force grad_trenches_functions_allowCamouflage = true;
force grad_trenches_functions_allowDigging = true;
force grad_trenches_functions_allowEffects = true;
force grad_trenches_functions_allowGiantEnvelope = true;
force grad_trenches_functions_allowHitDecay = true;
force grad_trenches_functions_allowLongEnvelope = true;
force grad_trenches_functions_allowShortEnvelope = true;
force grad_trenches_functions_allowSmallEnvelope = true;
force grad_trenches_functions_allowTextureLock = true;
force grad_trenches_functions_allowTrenchDecay = true;
force grad_trenches_functions_allowVehicleEnvelope = true;
force grad_trenches_functions_bigEnvelopeDamageMultiplier = 2;
force grad_trenches_functions_bigEnvelopeDigTime = 22;
force grad_trenches_functions_bigEnvelopeRemovalTime = -1;
force grad_trenches_functions_buildFatigueFactor = 0;
force grad_trenches_functions_camouflageRequireEntrenchmentTool = true;
force grad_trenches_functions_createTrenchMarker = false;
force grad_trenches_functions_decayTime = 900;
force grad_trenches_functions_giantEnvelopeDamageMultiplier = 0.582871;
force grad_trenches_functions_giantEnvelopeDigTime = 30;
force grad_trenches_functions_giantEnvelopeRemovalTime = -1;
force grad_trenches_functions_hitDecayMultiplier = 3;
force grad_trenches_functions_LongEnvelopeDigTime = 15;
force grad_trenches_functions_LongEnvelopeRemovalTime = -1;
force grad_trenches_functions_playersInAreaRadius = 300;
force grad_trenches_functions_shortEnvelopeDamageMultiplier = 2;
force grad_trenches_functions_shortEnvelopeDigTime = 6;
force grad_trenches_functions_shortEnvelopeRemovalTime = -1;
force grad_trenches_functions_smallEnvelopeDamageMultiplier = 3;
force grad_trenches_functions_smallEnvelopeDigTime = 5;
force grad_trenches_functions_smallEnvelopeRemovalTime = -1;
force grad_trenches_functions_stopBuildingAtFatigueMax = false;
force grad_trenches_functions_textureLockDistance = 5;
force grad_trenches_functions_timeoutToDecay = 7200;
force grad_trenches_functions_vehicleEnvelopeDamageMultiplier = 0.653903;
force grad_trenches_functions_vehicleEnvelopeDigTime = 30;
force grad_trenches_functions_vehicleEnvelopeRemovalTime = -1;
force grad_trenches_functions_vehicleTrenchBuildSpeed = 5;

// HBQ Engagement
force HBQSS_EngageRadiusVariation = 0;
force HBQSS_EngageThreshold = 1;
force HBQSS_EngageWhenNearRadius = 0;

// HBQ General
force HBQSS_DebugEnabled = true;
force HBQSS_DefaultPlayerCount = 20;
force HBQSS_DeSpawnSecurityRadius = 500;
HBQSS_LeaderDistance = false;
HBQSS_NoAmmoFleetime = 0;
force HBQSS_ProbabilityScalingEnabled = true;
HBQSS_RearmDistance = 0;
force HBQSS_RetreatGroupsize = 3;
force HBQSS_SpawnSecurityRadius = 500;
HBQSS_UnstuckDistance = 0;

// HBQ Performance
force HBQSS_AIFeatureActivationDelay = 1;
force HBQSS_ChecksDelay = 5;
force HBQSS_DynamicAIAIRadius = 0;
force HBQSS_DynamicAIRadius = 0;
force HBQSS_FPSlimit = 0;
force HBQSS_LifeTime = 3600;
force HBQSS_MaxTotalAICount = 200;
force HBQSS_OptimizedSpawnMethod = true;

// HBQ Skills
force HBQSS_aimingShake = 0.4;
force HBQSS_AimingSkill = 0.4;
force HBQSS_aimingSpeed = 0.4;
force HBQSS_commanding = 0.4;
force HBQSS_courage = 0.4;
force HBQSS_general = 0.4;
force HBQSS_reloadSpeed = 0.4;
force HBQSS_SkillMultiplierClose = 1;
force HBQSS_spotDistance = 0.4;
force HBQSS_spotTime = 0.4;
force HBQSS_UseHBQSkills = false;

// KAT - ADV Medical: Airway
force kat_airway_Accuvac_time = 5;
force kat_airway_autoTriage = true;
force kat_airway_block_headTurning_ifAirwayItem = true;
force kat_airway_CancelRecoveryPosition_Time = 1;
force kat_airway_CheckAirway_time = 1;
force kat_airway_checkbox_puking_sound = true;
force kat_airway_enable = true;
force kat_airway_Guedeltubus_time = 6;
force kat_airway_HeadTurn_Interval = 1;
force kat_airway_Hyperextend_Time = 3;
force kat_airway_Larynxtubus_time = 3;
force kat_airway_medLvl_Accuvac = 0;
force kat_airway_medLvl_Guedeltubus = 0;
force kat_airway_medLvl_Larynxtubus = 0;
force kat_airway_medLvl_Suction = 0;
force kat_airway_occlusion_cooldownPeriod = 6;
force kat_airway_occlusion_repeatTimer = 60;
force kat_airway_probability_headturning = 70;
force kat_airway_probability_obstruction = 20;
force kat_airway_probability_occluded = 20;
force kat_airway_RecoveryPosition_Time = 4.66971;
force kat_airway_RecoveryPosition_TimeToDrain = 10;
force kat_airway_ReusableAirwayItems = false;
force kat_airway_string_exit = "";
force kat_airway_Suction_reuse = true;
force kat_airway_Suction_time = 12;

// KAT - ADV Medical: Breathing
force kat_breathing_advPtxChance = 0;
force kat_breathing_advPtxEnable = false;
force kat_breathing_arrestPneumothorax_interval = 30;
force kat_breathing_BVMOxygen_Multiplier = 3;
force kat_breathing_clearChestSealAfterTreatment = true;
force kat_breathing_deepPenetratingInjuryChance = 0;
force kat_breathing_deterioratingPneumothorax_chance = 0;
force kat_breathing_deterioratingPneumothorax_interval = 70;
force kat_breathing_enable = true;
force kat_breathing_enable_selfChestseal = 1;
force kat_breathing_Etco2_Enabled = true;
force kat_breathing_Etco2_Units = 1;
force kat_breathing_HPTXBleedAmount = 0.06;
force kat_breathing_hptxChance = 0;
force kat_breathing_inspectChest_enable = 2;
force kat_breathing_inspectChest_medLvl = 0;
force kat_breathing_inspectChest_time = 3;
force kat_breathing_locationProvideOxygen = 3;
force kat_breathing_medLvl_BVM = 0;
force kat_breathing_medLvl_BVM_Oxygen = 0;
force kat_breathing_medLvl_Chestseal = 0;
force kat_breathing_medLvl_hemopneumothoraxTreatment = 0;
force kat_breathing_medLvl_NasalCannula = 0;
force kat_breathing_medLvl_PocketBVM = 0;
force kat_breathing_medLvl_Pulseoximeter = 0;
force kat_breathing_mildValue = 73.0122;
force kat_breathing_NasalCannula_time = 1.63246;
force kat_breathing_PneumothoraxAlwaysVisible = true;
force kat_breathing_PneumothoraxArrest = false;
force kat_breathing_pneumothoraxChance = 5;
force kat_breathing_pneumothoraxDamageThreshold = 0.4;
force kat_breathing_pneumothoraxDamageThreshold_TakenDamage = false;
force kat_breathing_PortableOxygenTank_RefillTime = 5;
force kat_breathing_PulseOximeter_SpO2Warning = 85;
force kat_breathing_severeValue = 51;
force kat_breathing_showCyanosis = true;
force kat_breathing_showPneumothorax_dupe = false;
force kat_breathing_slightValue = 90;
force kat_breathing_SpO2_cardiacActive = true;
force kat_breathing_SpO2_cardiacValue = 70;
force kat_breathing_SpO2_dieActive = true;
force kat_breathing_SpO2_dieValue = 30;
force kat_breathing_SpO2_MultiplyNegative = 0.9;
force kat_breathing_SpO2_MultiplyPositive = 2;
force kat_breathing_SpO2_perfusion = true;
force kat_breathing_SpO2_PerfusionMultiplier = 1;
force kat_breathing_SpO2_unconscious = 90;
force kat_breathing_Stable_spo2 = 95;
force kat_breathing_staminaLossAtLowSPO2 = true;
force kat_breathing_stethoscopeListeningTime = 5.63277;
kat_breathing_stethoscopeSoundVolume = 2;
force kat_breathing_TensionHemothoraxAlwaysVisible = true;

// KAT - ADV Medical: Chemical
force kat_chemical_affectAI = true;
force kat_chemical_availGasmask = """G_AirPurifyingRespirator_01_F""";
force kat_chemical_gasmask_durability = 900;
force kat_chemical_infectionTime = 60;

// KAT - ADV Medical: Circulation
force kat_circulation_AdvRhythm = false;
force kat_circulation_AdvRhythm_AED_ROSC_Chance = 50;
force kat_circulation_AdvRhythm_asystoleBloodlossThreshold = 3.6;
force kat_circulation_AdvRhythm_canDeteriorate = true;
force kat_circulation_AdvRhythm_CPR_ROSC_Chance = 5;
force kat_circulation_AdvRhythm_deteriorateAfterTreatment = true;
force kat_circulation_AdvRhythm_deteriorateTimeMax = 900;
force kat_circulation_AdvRhythm_deteriorateTimeWeight = 180;
force kat_circulation_AdvRhythm_Hardcore_Enable = false;
force kat_circulation_AdvRhythm_hardcoreDeteriorationChance = 10;
force kat_circulation_AdvRhythm_PEAChance = 50;
force kat_circulation_AdvRhythm_VTChance = 50;
force kat_circulation_AED_duringCpr = true;
force kat_circulation_AED_MaxChance = 70;
force kat_circulation_AED_MinChance = 60;
force kat_circulation_AED_X_MaxChance = 90;
force kat_circulation_AED_X_MinChance = 64.2999;
force kat_circulation_AED_X_Monitor_SpO2Warning = 85;
force kat_circulation_AED_X_VitalsMonitor_BloodPressureInterval = 0;
force kat_circulation_AED_X_VitalsMonitor_BloodPressureInterval_Time = 30;
force kat_circulation_AED_X_VitalsMonitor_SoundsSelect = 1;
force kat_circulation_AEDX_VitalsMonitor_AttachTime = 6;
force kat_circulation_AEDX_VitalsMonitor_DetachTime = 3;
force kat_circulation_blood_draw_limit = 3.5;
force kat_circulation_blood_drawTime_250ml = 2;
force kat_circulation_blood_drawTime_500ml = 5;
force kat_circulation_bloodGroups = false;
force kat_circulation_bloodTypeCustomList = "O,O,A,A,O_N,B,A_N,AB,B_N,AB_N";
force kat_circulation_bloodTypeRandomWeighted = true;
force kat_circulation_bloodTypeSetting = 4;
kat_circulation_bloodTypeSettingPlayer = "O_N";
force kat_circulation_cardiacArrestBleedRate = 0.03;
force kat_circulation_CPR_ChanceInterval = 10;
force kat_circulation_CPR_MaxChance_Default = 40;
force kat_circulation_CPR_MaxChance_Doctor = 40;
force kat_circulation_CPR_MaxChance_RegularMedic = 40;
force kat_circulation_CPR_MinChance_Default = 30;
force kat_circulation_CPR_MinChance_Doctor = 30;
force kat_circulation_CPR_MinChance_RegularMedic = 30;
force kat_circulation_CPR_OxygenationPeriod = 10;
force kat_circulation_Defibrillator_DistanceLimit = 6;
force kat_circulation_DefibrillatorPads_AttachTime = 6;
force kat_circulation_DefibrillatorPads_DetachTime = 3;
force kat_circulation_deterioratingTamponade_chance = 0;
force kat_circulation_deterioratingTamponade_interval = 60;
force kat_circulation_enable = true;
force kat_circulation_enable_CPR_Chances = false;
force kat_circulation_enable_selfBloodDraw = 1;
force kat_circulation_medLvl_AED = 0;
force kat_circulation_medLvl_AED_Station_Interact = 0;
force kat_circulation_medLvl_AED_X = 0;
force kat_circulation_tamponadeChance = 0;
force kat_circulation_useLocation_AED = 0;

// KAT - ADV Medical: Feedback
force kat_feedback_effectLowSpO2 = 90;
force kat_feedback_enableOpioidEffect = true;

// KAT - ADV Medical: GUI
force kat_gui_ColoredLogs = true;
force kat_gui_showPatientSideLabels = true;

// KAT - ADV Medical: Hypothermia
force kat_hypothermia_hypothermiaActive = false;

// KAT - ADV Medical: Misc
kat_misc_AFAK_Container = 0;
kat_misc_AFAK_Item_Color = [0.67,0.84,0.9];
force kat_misc_AFAK_RemoveWhenEmpty = true;
kat_misc_AFAK_Slot_Color = [1,0.96,0.32];
force kat_misc_AFAKFifthSlotItem = "[['kat_guedel', 3]]";
force kat_misc_AFAKFirstSlotItem = "[['ACE_tourniquet', 4], ['ACE_splint', 2]]";
force kat_misc_AFAKFourthSlotItem = "[['kat_chestSeal', 4], ['kat_ncdKit', 4]]";
force kat_misc_AFAKSecondSlotItem = "[['ACE_packingBandage', 10], ['ACE_quikclot', 10]]";
force kat_misc_AFAKSixthSlotItem = "[['ACE_morphine', 3], ['ACE_epinephrine', 3]]";
force kat_misc_AFAKThirdSlotItem = "[['kat_Penthrox', 2], ['kat_Painkiller', 1]]";
force kat_misc_allowSharedVehicleEquipment = 1;
kat_misc_armbandSlingLeftArm = "0.2, -0.39, -0.2";
kat_misc_armbandSlingLeftArmRotation = "240, 33, 26";
kat_misc_armbandSlingLeftLeg = "0.435, -0.075, -0.38";
kat_misc_armbandSlingLeftLegRotation = "-160, -5, 45";
kat_misc_armbandSlingRightArm = "-0.228, -0.1, -0.43";
kat_misc_armbandSlingRightArmRotation = "5, -5, -5";
kat_misc_armbandSlingRightLeg = "-0.32, -0.29, -0.42";
kat_misc_armbandSlingRightLegRotation = "-30, -5, 38";
force kat_misc_enable = true;
force kat_misc_enableStitchFullBody = true;
kat_misc_IFAK_Container = 0;
kat_misc_IFAK_Item_Color = [0.67,0.84,0.9];
force kat_misc_IFAK_RemoveWhenEmpty = true;
kat_misc_IFAK_Slot_Color = [1,0.3,0.3];
force kat_misc_IFAKFirstSlotItem = "[['ACE_tourniquet', 2]]";
force kat_misc_IFAKFourthSlotItem = "[['kat_chestSeal', 1]]";
force kat_misc_IFAKSecondSlotItem = "[['ACE_packingBandage', 5], ['ACE_quikclot', 5]]";
force kat_misc_IFAKThirdSlotItem = "[['kat_Painkiller', 1]]";
force kat_misc_incompatibilityWarning = true;
kat_misc_MFAK_Container = 0;
kat_misc_MFAK_Item_Color = [0.67,0.84,0.9];
force kat_misc_MFAK_RemoveWhenEmpty = true;
kat_misc_MFAK_Slot_Color = [0.56,0.93,0.56];
force kat_misc_MFAKEighthSlotItem = "[['kat_Pulseoximeter', 3], ['kat_pocketBVM', 1]]";
force kat_misc_MFAKFifthSlotItem = "[['kat_larynx', 6]]";
force kat_misc_MFAKFirstSlotItem = "[['ACE_tourniquet', 6], ['ACE_splint', 4]]";
force kat_misc_MFAKFourthSlotItem = "[['kat_chestSeal', 6], ['kat_aatKit', 3], ['kat_ncdKit', 3], ['kat_stethoscope', 1]]";
force kat_misc_MFAKSecondSlotItem = "[['ACE_packingBandage', 15], ['ACE_quikclot', 15], ['ACE_fieldDressing', 15]]";
force kat_misc_MFAKSeventhSlotItem = "[['ACE_salineIV_250', 3], ['kat_IV_16', 4]]";
force kat_misc_MFAKSixthSlotItem = "[['ACE_morphine', 6], ['ACE_epinephrine', 6], ['ACE_adenosine', 6]]";
force kat_misc_MFAKThirdSlotItem = "[['kat_Painkiller', 4], ['kat_Penthrox', 4]]";
force kat_misc_tourniquetEffects_Enable = true;
force kat_misc_tourniquetEffects_NegativeMultiplier = 1;
force kat_misc_tourniquetEffects_PositiveMultiplier = 1;
force kat_misc_treatmentTimeDetachTourniquet = 1;

// KAT - ADV Medical: Pharmacy
force kat_pharma_allowStackScript_EACA = true;
force kat_pharma_allowStackScript_TXA = false;
force kat_pharma_bandageCycleTime_EACA = 8;
force kat_pharma_bandageCycleTime_TXA = 5;
force kat_pharma_blockChance = 0;
force kat_pharma_carbonateChance = 100;
force kat_pharma_CheckCoag_Location = 0;
force kat_pharma_CheckCoag_MedLevel = 0;
force kat_pharma_CheckCoag_TreatmentTime = 3;
force kat_pharma_coagulation = true;
force kat_pharma_coagulation_allow_clot_text = true;
force kat_pharma_coagulation_allow_EACA_script = false;
force kat_pharma_coagulation_allow_LargeWounds = true;
force kat_pharma_coagulation_allow_MediumWounds = true;
force kat_pharma_coagulation_allow_MinorWounds = true;
force kat_pharma_coagulation_allow_TXA_script = true;
force kat_pharma_coagulation_allowOnAI = false;
force kat_pharma_coagulation_factor_count = 15;
force kat_pharma_coagulation_factor_limit = 100;
force kat_pharma_coagulation_factor_regenerate_time = 150;
force kat_pharma_coagulation_on_all_Bodyparts = true;
force kat_pharma_coagulation_requireBV = 3.6;
force kat_pharma_coagulation_requireHR = false;
force kat_pharma_coagulation_time = 10;
force kat_pharma_coagulation_time_large = 45;
force kat_pharma_coagulation_time_medium = 30;
force kat_pharma_coagulation_time_minor = 15;
force kat_pharma_coagulation_tourniquetBlock = true;
force kat_pharma_eacaClearTrauma = false;
force kat_pharma_ivCheckLimbDamage = false;
force kat_pharma_IVdrop = 1200;
force kat_pharma_IVdropEnable = false;
force kat_pharma_IVflowControl = false;
force kat_pharma_IVreuse = false;
force kat_pharma_keepScriptRunning_EACA = true;
force kat_pharma_keepScriptRunning_TXA = true;
force kat_pharma_kidneyAction = false;
force kat_pharma_MedicationsRequireInsIV = false;
force kat_pharma_medLvl_Amiodarone = 0;
force kat_pharma_medLvl_ApplyIO = 0;
force kat_pharma_medLvl_ApplyIV = 0;
force kat_pharma_medLvl_Atropine = 0;
force kat_pharma_medLvl_Carbonate = 0;
force kat_pharma_medLvl_EACA = 0;
force kat_pharma_medLvl_EpinephrineIV = 0;
force kat_pharma_medLvl_Etomidate = 0;
force kat_pharma_medLvl_Fentanyl = 0;
force kat_pharma_medLvl_Flumezenil = 0;
force kat_pharma_medLvl_Ketamine = 0;
force kat_pharma_medLvl_Lidocaine = 0;
force kat_pharma_medLvl_Lorazepam = 0;
force kat_pharma_medLvl_Nalbuphine = 0;
force kat_pharma_medLvl_Naloxone = 0;
force kat_pharma_medLvl_Nitroglycerin = 0;
force kat_pharma_medLvl_Norepinephrine = 0;
force kat_pharma_medLvl_Penthrox = 0;
force kat_pharma_medLvl_Pervitin = 0;
force kat_pharma_medLvl_Phenylephrine = 0;
force kat_pharma_medLvl_Reorientation = 0;
force kat_pharma_medLvl_TXA = 0;
force kat_pharma_pervitinSpeed = 1.5;
force kat_pharma_Reorientation_Enable = true;
force kat_pharma_Reorientation_Slap = true;
force kat_pharma_reorientationChance = 100;
force kat_pharma_RequireInsIV = false;
force kat_pharma_RequireInsIVBloodDraw = false;
force kat_pharma_staminaMedication = false;
force kat_pharma_treatmentTime_Amiodarone = 3;
force kat_pharma_treatmentTime_ApplyIO = 0.1;
force kat_pharma_treatmentTime_ApplyIV = 3.00043;
force kat_pharma_treatmentTime_Atropine = 3;
force kat_pharma_treatmentTime_Carbonate = 1;
force kat_pharma_treatmentTime_EACA = 2;
force kat_pharma_treatmentTime_EpinephrineIV = 3;
force kat_pharma_treatmentTime_Etomidate = 3;
force kat_pharma_treatmentTime_Fentanyl = 3;
force kat_pharma_treatmentTime_Flumazenil = 3;
force kat_pharma_treatmentTime_Ketamine = 3;
force kat_pharma_treatmentTime_Lidocaine = 3;
force kat_pharma_treatmentTime_Lorazepam = 3;
force kat_pharma_treatmentTime_Nalbuphine = 2;
force kat_pharma_treatmentTime_Naloxone = 1;
force kat_pharma_treatmentTime_Nitroglycerin = 2;
force kat_pharma_treatmentTime_Norepinephrine = 3;
force kat_pharma_treatmentTime_Penthrox = 3;
force kat_pharma_treatmentTime_Pervitin = 4;
force kat_pharma_treatmentTime_Phenylephrine = 2;
force kat_pharma_treatmentTime_Reorientation = 1;
force kat_pharma_treatmentTime_TXA = 0.5;
force kat_pharma_weapon_sway_pervitin = true;

// KAT - ADV Medical: Surgery
force kat_surgery_closedLocation = 0;
force kat_surgery_closedReduction_MedLevel = 0;
force kat_surgery_closedReductionFailChance = 10;
force kat_surgery_closedTime = 10;
force kat_surgery_compoundChance = 30;
force kat_surgery_enable_fracture = false;
force kat_surgery_enable_selfCheckFracture = 1;
force kat_surgery_etomidateTime = 45;
force kat_surgery_fractureCheck_MedLevel = 0;
force kat_surgery_fractureCheck_Time = 10;
force kat_surgery_incisionTime = 10;
force kat_surgery_intermediateTime = 8;
force kat_surgery_npwt_MedLevel = 0;
force kat_surgery_npwtLocation = 0;
force kat_surgery_npwtTime = 20;
force kat_surgery_openTime = 15;
force kat_surgery_pericardialtap_MedLevel = 2;
force kat_surgery_pericardialtapLocation = 0;
force kat_surgery_pericardialtapTime = 8;
force kat_surgery_reboa_MedLevel = 2;
force kat_surgery_reboaLocation = 0;
force kat_surgery_reboaTime = 8;
force kat_surgery_simpleChance = 60;
force kat_surgery_Surgery_ConsciousnessRequirement = 1;
force kat_surgery_surgicalAction_MedLevel = 0;
force kat_surgery_surgicalLocation = 0;
force kat_surgery_ultrasound_MedLevel = 2;
force kat_surgery_ultrasoundLocation = 0;
force kat_surgery_ultrasoundTime = 8;

// KAT - ADV Medical: Vitals
force kat_vitals_simpleMedical = true;

// KAT - ADV Medical: Watch
force kat_watch_altitudeUnit = 0;
force kat_watch_pressureUnit = 0;
force kat_watch_temperatureUnit = 0;

// LAMBS Danger
force lambs_danger_cqbRange = 100;
force lambs_danger_disableAIAutonomousManoeuvres = false;
force lambs_danger_disableAIDeployStaticWeapons = false;
force lambs_danger_disableAIFindStaticWeapons = false;
force lambs_danger_disableAIHideFromTanksAndAircraft = false;
force lambs_danger_disableAIPlayerGroup = true;
force lambs_danger_disableAIPlayerGroupReaction = true;
force lambs_danger_disableAutonomousFlares = false;
force lambs_danger_disableAutonomousSmokeGrenades = false;
force lambs_danger_panicChance = 0.1;

// LAMBS Danger Eventhandlers
force lambs_eventhandlers_ExplosionEventHandlerEnabled = true;
force lambs_eventhandlers_ExplosionReactionTime = 9;

// LAMBS Danger WP
force lambs_wp_autoAddArtillery = false;

// LAMBS Main
force lambs_main_combatShareRange = 100;
force lambs_main_debug_drawAllUnitsInVehicles = false;
force lambs_main_debug_Drawing = false;
force lambs_main_debug_FSM = false;
force lambs_main_debug_FSM_civ = false;
force lambs_main_debug_functions = false;
force lambs_main_debug_RenderExpectedDestination = false;
force lambs_main_disableAICallouts = false;
force lambs_main_disableAIDodge = false;
force lambs_main_disableAIFleeing = false;
force lambs_main_disableAIGestures = false;
force lambs_main_disableAutonomousMunitionSwitching = false;
force lambs_main_disablePlayerGroupSuppression = false;
force lambs_main_indoorMove = 0.1;
force lambs_main_maxRevealValue = 1;
force lambs_main_minFriendlySuppressionDistance = 3;
force lambs_main_minObstacleProximity = 3;
force lambs_main_minSuppressionRange = 35;
force lambs_main_radioBackpack = 2000;
force lambs_main_radioDisabled = false;
force lambs_main_radioEast = 500;
force lambs_main_radioGuer = 500;
force lambs_main_radioShout = 100;
force lambs_main_radioWest = 500;

// Laxemann Align
force L_Align_enabled = true;
force L_Align_steadyShake_enabled = true;

// Laxemann Immerse
force L_Immerse_exShake = true;
force L_Immerse_force = false;
force L_Immerse_recoil = false;
force L_Immerse_twitch = false;

// LAxemann's Suppress
force L_Suppress_buildup = 1.05;
force L_Suppress_enabled = true;
force L_Suppress_flyByEffects = true;
force L_Suppress_flyByIntensity = 1.05;
force L_Suppress_halting = true;
force L_Suppress_intensity = 0.7;
force L_Suppress_playerSwabEnabled = true;
force L_Suppress_recovery = 0.75;

// NIArms
force niarms_gripSwitch = true;
force niarms_magSwitch = true;

// Project SFX: Remastered
force SFX_AdEXP = true;
force SFX_Breathsnd = false;
force SFX_Exbs = true;
force SFX_FemaleFacesArraySetting = "['F_clair','F_jill','B_female_bun_01','B_female_bun_02','B_female_bun_03','B_female_bun_04','fsof_femaleCauc01_BlueEyes_NoHair','fsof_femaleCauc01_BrownEyes_NoHair','fsof_femaleCauc01_GreenEyes_NoHair','fsof_femaleCauc01_HazelEyes_NoHair','fsof_femaleCauc01_BlueEyes_Bun_BlondeHair','fsof_femaleCauc01_BrownEyes_Bun_BlondeHair','fsof_femaleCauc01_GreenEyes_Bun_BlondeHair','fsof_femaleCauc01_HazelEyes_Bun_BlondeHair','fsof_femaleCauc01_BlueEyes_Bun_LBrownHair','fsof_femaleCauc01_BrownEyes_Bun_LBrownHair','fsof_femaleCauc01_GreenEyes_Bun_LBrownHair','fsof_femaleCauc01_HazelEyes_Bun_LBrownHair','fsof_femaleCauc01_BlueEyes_Bun_BrownHair','fsof_femaleCauc01_BrownEyes_Bun_BrownHair','fsof_femaleCauc01_GreenEyes_Bun_BrownHair','fsof_femaleCauc01_HazelEyes_Bun_BrownHair','fsof_femaleCauc01_BlueEyes_Bun_BlackHair','fsof_femaleCauc01_BrownEyes_Bun_BlackHair','fsof_femaleCauc01_GreenEyes_Bun_BlackHair','fsof_femaleCauc01_HazelEyes_Bun_BlackHair','fsof_femaleCauc01t2_BlueEyes_NoHair','fsof_femaleCauc01t2_BrownEyes_NoHair','fsof_femaleCauc01t2_GreenEyes_NoHair','fsof_femaleCauc01t2_HazelEyes_NoHair','fsof_FemaleCauc01t2_BlueEyes_Bun_BlondeHair','fsof_FemaleCauc01t2_BrownEyes_Bun_BlondeHair','fsof_FemaleCauc01t2_GreenEyes_Bun_BlondeHair','fsof_FemaleCauc01t2_HazelEyes_Bun_BlondeHair','fsof_FemaleCauc01t2_BlueEyes_Bun_LBrownHair','fsof_FemaleCauc01t2_BrownEyes_Bun_LBrownHair','fsof_FemaleCauc01t2_GreenEyes_Bun_LBrownHair','fsof_FemaleCauc01t2_HazelEyes_Bun_LBrownHair','fsof_FemaleCauc01t2_BlueEyes_Bun_BrownHair','fsof_FemaleCauc01t2_BrownEyes_Bun_BrownHair','fsof_FemaleCauc01t2_GreenEyes_Bun_BrownHair','fsof_FemaleCauc01t2_HazelEyes_Bun_BrownHair','fsof_FemaleCauc01t2_BlueEyes_Bun_BlackHair','fsof_FemaleCauc01t2_BrownEyes_Bun_BlackHair','fsof_FemaleCauc01t2_GreenEyes_Bun_BlackHair','fsof_FemaleCauc01t2_HazelEyes_Bun_BlackHair','fsof_FemaleCauc01t3_BlueEyes_NoHair','fsof_FemaleCauc01t3_BrownEyes_NoHair','fsof_FemaleCauc01t3_GreenEyes_NoHair','fsof_FemaleCauc01t3_HazelEyes_NoHair','fsof_FemaleCauc01t3_BlueEyes_Bun_BlondeHair','fsof_FemaleCauc01t3_BrownEyes_Bun_BlondeHair','fsof_FemaleCauc01t3_GreenEyes_Bun_BlondeHair','fsof_FemaleCauc01t3_HazelEyes_Bun_BlondeHair','fsof_FemaleCauc01t3_BlueEyes_Bun_LBrownHair','fsof_FemaleCauc01t3_BrownEyes_Bun_LBrownHair','fsof_FemaleCauc01t3_GreenEyes_Bun_LBrownHair','fsof_FemaleCauc01t3_HazelEyes_Bun_LBrownHair','fsof_FemaleCauc01t3_BlueEyes_Bun_BrownHair','fsof_FemaleCauc01t3_BrownEyes_Bun_BrownHair','fsof_FemaleCauc01t3_GreenEyes_Bun_BrownHair','fsof_FemaleCauc01t3_HazelEyes_Bun_BrownHair','fsof_FemaleCauc01t3_BlueEyes_Bun_BlackHair','fsof_FemaleCauc01t3_BrownEyes_Bun_BlackHair','fsof_FemaleCauc01t3_GreenEyes_Bun_BlackHair','fsof_FemaleCauc01t3_HazelEyes_Bun_BlackHair','fsof_FemaleCauc01t4_BlueEyes_NoHair','fsof_FemaleCauc01t4_BrownEyes_NoHair','fsof_FemaleCauc01t4_GreenEyes_NoHair','fsof_FemaleCauc01t4_HazelEyes_NoHair','fsof_FemaleCauc01t4_BlueEyes_Bun_BlondeHair','fsof_FemaleCauc01t4_BrownEyes_Bun_BlondeHair','fsof_FemaleCauc01t4_GreenEyes_Bun_BlondeHair','fsof_FemaleCauc01t4_HazelEyes_Bun_BlondeHair','fsof_FemaleCauc01t4_BlueEyes_Bun_LBrownHair','fsof_FemaleCauc01t4_BrownEyes_Bun_LBrownHair','fsof_FemaleCauc01t4_GreenEyes_Bun_LBrownHair','fsof_FemaleCauc01t4_HazelEyes_Bun_LBrownHair','fsof_FemaleCauc01t4_BlueEyes_Bun_BrownHair','fsof_FemaleCauc01t4_BrownEyes_Bun_BrownHair','fsof_FemaleCauc01t4_GreenEyes_Bun_BrownHair','fsof_FemaleCauc01t4_HazelEyes_Bun_BrownHair','fsof_FemaleCauc01t4_BlueEyes_Bun_BlackHair','fsof_FemaleCauc01t4_BrownEyes_Bun_BlackHair','fsof_FemaleCauc01t4_GreenEyes_Bun_BlackHair','fsof_FemaleCauc01t4_HazelEyes_Bun_BlackHair','fsof_femaleCauc02_BlueEyes_NoHair','fsof_femaleCauc02_BrownEyes_NoHair','fsof_femaleCauc02_GreenEyes_NoHair','fsof_femaleCauc02_HazelEyes_NoHair','fsof_femaleCauc02_BlueEyes_Bun_BlondeHair','fsof_femaleCauc02_BrownEyes_Bun_BlondeHair','fsof_femaleCauc02_GreenEyes_Bun_BlondeHair','fsof_femaleCauc02_HazelEyes_Bun_BlondeHair','fsof_femaleCauc02_BlueEyes_Bun_LBrownHair','fsof_femaleCauc02_BrownEyes_Bun_LBrownHair','fsof_femaleCauc02_GreenEyes_Bun_LBrownHair','fsof_femaleCauc02_HazelEyes_Bun_LBrownHair','fsof_femaleCauc02_BlueEyes_Bun_BrownHair','fsof_femaleCauc02_BrownEyes_Bun_BrownHair','fsof_femaleCauc02_GreenEyes_Bun_BrownHair','fsof_femaleCauc02_HazelEyes_Bun_BrownHair','fsof_femaleCauc02_BlueEyes_Bun_BlackHair','fsof_femaleCauc02_BrownEyes_Bun_BlackHair','fsof_femaleCauc02_GreenEyes_Bun_BlackHair','fsof_femaleCauc02_HazelEyes_Bun_BlackHair','fsof_femaleCauc02t2_BlueEyes_NoHair','fsof_femaleCauc02t2_BrownEyes_NoHair','fsof_femaleCauc02t2_GreenEyes_NoHair','fsof_femaleCauc02t2_HazelEyes_NoHair','fsof_femaleCauc02t2_BlueEyes_Bun_BlondeHair','fsof_femaleCauc02t2_BrownEyes_Bun_BlondeHair','fsof_femaleCauc02t2_GreenEyes_Bun_BlondeHair','fsof_femaleCauc02t2_HazelEyes_Bun_BlondeHair','fsof_femaleCauc02t2_BlueEyes_Bun_LBrownHair','fsof_femaleCauc02t2_BrownEyes_Bun_LBrownHair','fsof_femaleCauc02t2_GreenEyes_Bun_LBrownHair','fsof_femaleCauc02t2_HazelEyes_Bun_LBrownHair','fsof_femaleCauc02t2_BlueEyes_Bun_BrownHair','fsof_femaleCauc02t2_BrownEyes_Bun_BrownHair','fsof_femaleCauc02t2_GreenEyes_Bun_BrownHair','fsof_femaleCauc02t2_HazelEyes_Bun_BrownHair','fsof_femaleCauc02t2_BlueEyes_Bun_BlackHair','fsof_femaleCauc02t2_BrownEyes_Bun_BlackHair','fsof_femaleCauc02t2_GreenEyes_Bun_BlackHair','fsof_femaleCauc02t2_HazelEyes_Bun_BlackHair','fsof_femaleCauc02t3_BlueEyes_NoHair','fsof_femaleCauc02t3_BrownEyes_NoHair','fsof_femaleCauc02t3_GreenEyes_NoHair','fsof_femaleCauc02t3_HazelEyes_NoHair','fsof_femaleCauc02t3_BlueEyes_Bun_BlondeHair','fsof_femaleCauc02t3_BrownEyes_Bun_BlondeHair','fsof_femaleCauc02t3_GreenEyes_Bun_BlondeHair','fsof_femaleCauc02t3_HazelEyes_Bun_BlondeHair','fsof_femaleCauc02t3_BlueEyes_Bun_LBrownHair','fsof_femaleCauc02t3_BrownEyes_Bun_LBrownHair','fsof_femaleCauc02t3_GreenEyes_Bun_LBrownHair','fsof_femaleCauc02t3_HazelEyes_Bun_LBrownHair','fsof_femaleCauc02t3_BlueEyes_Bun_BrownHair','fsof_femaleCauc02t3_BrownEyes_Bun_BrownHair','fsof_femaleCauc02t3_GreenEyes_Bun_BrownHair','fsof_femaleCauc02t3_HazelEyes_Bun_BrownHair','fsof_femaleCauc02t3_BlueEyes_Bun_BlackHair','fsof_femaleCauc02t3_BrownEyes_Bun_BlackHair','fsof_femaleCauc02t3_GreenEyes_Bun_BlackHair','fsof_femaleCauc02t3_HazelEyes_Bun_BlackHair','fsof_femaleCauc02t4_BlueEyes_NoHair','fsof_femaleCauc02t4_BrownEyes_NoHair','fsof_femaleCauc02t4_GreenEyes_NoHair','fsof_femaleCauc02t4_HazelEyes_NoHair','fsof_femaleCauc02t4_BlueEyes_Bun_BlondeHair','fsof_femaleCauc02t4_BrownEyes_Bun_BlondeHair','fsof_femaleCauc02t4_GreenEyes_Bun_BlondeHair','fsof_femaleCauc02t4_HazelEyes_Bun_BlondeHair','fsof_femaleCauc02t4_BlueEyes_Bun_LBrownHair','fsof_femaleCauc02t4_BrownEyes_Bun_LBrownHair','fsof_femaleCauc02t4_GreenEyes_Bun_LBrownHair','fsof_femaleCauc02t4_HazelEyes_Bun_LBrownHair','fsof_femaleCauc02t4_BlueEyes_Bun_BrownHair','fsof_femaleCauc02t4_BrownEyes_Bun_BrownHair','fsof_femaleCauc02t4_GreenEyes_Bun_BrownHair','fsof_femaleCauc02t4_HazelEyes_Bun_BrownHair','fsof_femaleCauc02t4_BlueEyes_Bun_BlackHair','fsof_femaleCauc02t4_BrownEyes_Bun_BlackHair','fsof_femaleCauc02t4_GreenEyes_Bun_BlackHair','fsof_femaleCauc02t4_HazelEyes_Bun_BlackHair','fsof_femaleBlk01_HazelEyes_BlkHair','fsof_femaleBlk01_BrownEyes_BlkHair','fsof_femaleBlk01_BrownEyes_NoHair','fsof_femaleBlk01_HazelEyes_NoHair','fsof_femaleAsi01_BrownEyes_BlkHair','fsof_femaleAsi01_BrownEyes_NoHair','TCGM_Fem_Gonzalez','TCGM_Fem_Fox','TCGM_Fem_FoxBun','TCGM_Fem_Fenty','TCGM_Fem_Liu','TCGM_Fem_Zhu','TCGM_Fem_Stone','TCGM_Fem_StoneBun','TCGM_Fem_Eilish','TCGM_Fem_EilishBun','TCGM_Fem_Portman','TCGM_Fem_Ayres','TCGM_Fem_Hobson','TCGM_Fem_Lynch','TCGM_MakF_FoxClub1','TCGM_MakF_FoxClub2','TCGM_MakF_FoxGothic1','TCGM_MakF_FoxViking1','TCGM_MakF_FoxPunk1','TCGM_MakF_FoxCommand','TCGM_MakF_FoxQuiet','TCGM_MakF_GonzalezClub1','TCGM_MakF_GonzalezClub2','TCGM_MakF_GonzalezGothic1','TCGM_MakF_GonzalezViking1','TCGM_MakF_GonzalezPunk1','TCGM_MakF_GonzalezCommand','TCGM_MakF_GonzalezQuiet','TCGM_MakF_FentyClub1','TCGM_MakF_FentyClub2','TCGM_MakF_FentyGothic1','TCGM_MakF_FentyViking1','TCGM_MakF_FentyPunk1','TCGM_MakF_FentyCommand','TCGM_MakF_FentyQuiet','TCGM_MakF_LiuClub1','TCGM_MakF_LiuClub2','TCGM_MakF_LiuGothic1','TCGM_MakF_LiuViking1','TCGM_MakF_LiuPunk1','TCGM_MakF_LiuCommand','TCGM_MakF_LiuQuiet','TCGM_MakF_StoneClub1','TCGM_MakF_StoneClub2','TCGM_MakF_StoneGothic1','TCGM_MakF_StoneViking1','TCGM_MakF_StonePunk1','TCGM_MakF_StoneCommand','TCGM_MakF_StoneQuiet','TCGM_MakF_EilishClub1','TCGM_MakF_EilishClub2','TCGM_MakF_EilishGothic1','TCGM_MakF_EilishViking1','TCGM_MakF_EilishPunk1','TCGM_MakF_EilishCommand','TCGM_MakF_EilishQuiet','TCGM_MakF_PortmanClub1','TCGM_MakF_PortmanClub2','TCGM_MakF_PortmanGothic1','TCGM_MakF_PortmanViking1','TCGM_MakF_PortmanPunk1','TCGM_MakF_PortmanCommand','TCGM_MakF_PortmanQuiet','TCGM_MakF_AyresClub1','TCGM_MakF_AyresClub2','TCGM_MakF_AyresGothic1','TCGM_MakF_AyresViking1','TCGM_MakF_AyresPunk1','TCGM_MakF_AyresCommand','TCGM_MakF_AyresQuiet','TCGM_MakF_HobsonClub1','TCGM_MakF_HobsonClub2','TCGM_MakF_HobsonGothic1','TCGM_MakF_HobsonViking1','TCGM_MakF_HobsonPunk1','TCGM_MakF_HobsonCommand','TCGM_MakF_HobsonQuiet','TCGM_MakF_ZhuClub1','TCGM_MakF_ZhuClub2','TCGM_MakF_ZhuGothic1','TCGM_MakF_ZhuViking1','TCGM_MakF_ZhuPunk1','TCGM_MakF_ZhuCommand','TCGM_MakF_ZhuQuiet','TCGM_MakF_LynchClub1','TCGM_MakF_LynchClub2','TCGM_MakF_LynchGothic1','TCGM_MakF_LynchViking1','TCGM_MakF_LynchPunk1','TCGM_MakF_LynchCommand','TCGM_MakF_LynchQuiet','ZEPHIK_Female_face_1','Smith_v2','Tyler','Oakes_v2', 'Mason_v2','Arnott','Arnott_h','Mason','Mason_h','Oakes','Oakes_h','Smith','Smith_h', 'max_female1','max_female2','max_female3','max_female4','max_female5','max_female6','max_female7','max_female8','max_female9','max_female10','max_female11','max_female12','max_female13','max_female14','max_female15','Fem_1','Fem_2','Fem_3','Fem_4','Fem_5','Fem_6','Fem_7','Fem_8','Fem_9','Fem_3B','Fem_5B','Fem_7B','Fem_A','Fem_B','Fem_C','Fem_D','Fem_E','Fem_F']";
force SFX_Head = true;
force SFX_HoD = true;
force SFX_Inventory = true;
force SFX_IronSights = false;
force SFX_LAC = true;
force SFX_Mapsnd = true;
force SFX_Shelshock = false;
force SFX_Suppressionsnd = false;
force SFX_Suppressionsnd_snp = true;
force SFX_Suppressionsnd_tnk = true;

// Reeveli's ACE Moaning
force Rev_moaning_enable = true;
force Rev_moaning_probability = 50;
force Rev_moaning_range = 50;
force Rev_moaning_speech = true;
force Rev_moaning_time = 10;

// Simple Suppress
force simplesuppress_suppress_checkLOS = false;
force simplesuppress_suppress_overlayFadeoutTime = 10;
force simplesuppress_suppress_overlayOpacity = 0.96;
force simplesuppress_suppress_overlayTexture = 1;
force simplesuppress_suppress_projectileMaxDistance = 9;
force simplesuppress_suppress_shooterMinDistance = 0;

// TSP Animate
tsp_cba_animate_attachment = true;
force tsp_cba_animate_Bang = true;
force tsp_cba_animate_Bird = false;
force tsp_cba_animate_black = "[""optic_tws_mg""]";
force tsp_cba_animate_Breach = true;
force tsp_cba_animate_Cancel = true;
force tsp_cba_animate_cant = false;
force tsp_cba_animate_captive = true;
force tsp_cba_animate_clacker = true;
tsp_cba_animate_compass = true;
force tsp_cba_animate_Contact = false;
force tsp_cba_animate_Dab = false;
force tsp_cba_animate_door = true;
force tsp_cba_animate_Duo = false;
force tsp_cba_animate_friend = 1;
force tsp_cba_animate_grenade = true;
force tsp_cba_animate_Heart = true;
force tsp_cba_animate_Horns = false;
force tsp_cba_animate_Inspect = true;
force tsp_cba_animate_Ivan = false;
force tsp_cba_animate_Jackoff = false;
force tsp_cba_animate_Kata = false;
force tsp_cba_animate_ladder = true;
force tsp_cba_animate_Loser = true;
force tsp_cba_animate_Mahalo = false;
force tsp_cba_animate_map = true;
force tsp_cba_animate_Metal = false;
force tsp_cba_animate_nvg = true;
force tsp_cba_animate_object = 1;
force tsp_cba_animate_Ok = true;
force tsp_cba_animate_Paper = true;
force tsp_cba_animate_Peace = true;
force tsp_cba_animate_poll = 0.25;
force tsp_cba_animate_port = true;
force tsp_cba_animate_Pushups = false;
force tsp_cba_animate_Rock = true;
force tsp_cba_animate_Scissors = true;
force tsp_cba_animate_shake = 1;
force tsp_cba_animate_sling = true;
force tsp_cba_animate_sling_add = false;
force tsp_cba_animate_sling_pos = "[[0.1, 0.8, 0.15], [-90, 40, 70]]";
force tsp_cba_animate_sling_scroll = true;
force tsp_cba_animate_sling_sprint = false;
force tsp_cba_animate_sound = 1;
force tsp_cba_animate_sprint = false;
force tsp_cba_animate_Squats = false;
force tsp_cba_animate_Stefan = false;
force tsp_cba_animate_Suicide = false;
force tsp_cba_animate_tactical = false;
force tsp_cba_animate_tap = true;
force tsp_cba_animate_throw = false;
force tsp_cba_animate_ThumbsDown = true;
force tsp_cba_animate_ThumbsUp = true;
force tsp_cba_animate_uav = false;
force tsp_cba_animate_walk = false;
force tsp_cba_animate_walk_default = 1;
force tsp_cba_animate_walk_lower = 1;
force tsp_cba_animate_walk_max = 1.6;
force tsp_cba_animate_watch = true;
force tsp_cba_animate_Zozo = false;

// TSP Animate - Radio
force tsp_cba_radio = true;
force tsp_cba_radio_aiming = true;
force tsp_cba_radio_headsets = "[""G_WirelessEarpiece_F""]";
force tsp_cba_radio_helmets = "[""NCR_Helmet15th"",""NCR_Helmet15thBlack"",""NCR_Helmet15thWhite"",""NCR_CVCHelmet15th"",""NCR_CVCHelmet15thBlack"",""NCR_CVCHelmet15thGogglesBlack"",""NCR_CVCHelmet15thGoggles"",""NCR_CVCHelmet15thWhite"",""NCR_CVCHelmet15thGogglesWhite"",""NCR_CVCHelmet15th_Allfather"",""NCR_CVCHelmet15th_Foxo"",""NCR_CVCHelmet15th_Lance"",""NCR_CVCHelmet15th_Roe"",""NCR_CVCHelmet15th_Sunny"",""NCR_CVCHelmet15th_Tato"",""NCR_CVCHelmet15th_Tex"",""NCR_ReconHelmet"",""NCR_ReconHelmetBrown"",""NCR_ReconHelmetGray"",""RA_Slater_helmet"",""RA_Marine_helmet"",""RA_Ranger_helmet"",""power_armor_helmet_t45d_dow""]";
force tsp_cba_radio_preference_acre_bf888s = "Model";
force tsp_cba_radio_preference_ACRE_PRC117F = "Handset";
force tsp_cba_radio_preference_acre_prc148 = "Model";
force tsp_cba_radio_preference_acre_prc152 = "Model";
force tsp_cba_radio_preference_acre_prc343 = "Vest";
force tsp_cba_radio_preference_ACRE_PRC77 = "Handset";
force tsp_cba_radio_preference_acre_sem52SL = "Vest";
force tsp_cba_radio_preference_ACRE_SEM70 = "Handset";
force tsp_cba_radio_preference_JLTS_clone_comlink = "Wrist";
force tsp_cba_radio_preference_JLTS_droid_comlink = "Ear";
force tsp_cba_radio_preference_Others = "Handset";
force tsp_cba_radio_preference_TFAR_anprc148jem = "Model";
force tsp_cba_radio_preference_TFAR_anprc152 = "Vest";
force tsp_cba_radio_preference_TFAR_anprc154 = "Vest";
force tsp_cba_radio_preference_TFAR_fadak = "Model";
force tsp_cba_radio_preference_TFAR_pnr1000a = "Model";
force tsp_cba_radio_preference_TFAR_rf7800str = "Vest";
force tsp_cba_radio_vehicle = true;
force tsp_cba_radio_vest_armor = true;
force tsp_cba_radio_vests = "[]";

// TSP Core
force tsp_cba_angle = -0.1;
tsp_cba_compat = false;
force tsp_cba_core_chvd = false;
force tsp_cba_core_pause = false;
tsp_cba_hint = "Subtitle";
tsp_cba_hint_distance = 20;
force tsp_param_faction = false;

// Tun Utilities - Uncon Info
force tuncon_unconinfo_allowNearestUnit = true;
force tuncon_unconinfo_allowNearestUnitDistanceShown = true;
force tuncon_unconinfo_delayForUnconInfoTexts = 5;
force tuncon_unconinfo_detailedTreatmentDelay = 0;
force tuncon_unconinfo_enableMoan = true;
force tuncon_unconinfo_enableShowBleeding = true;
force tuncon_unconinfo_enableShowCardiacArrest = true;
force tuncon_unconinfo_enableShowDetailedTreatment = true;
force tuncon_unconinfo_enableShowEpinephrine = true;
force tuncon_unconinfo_enableShowHeartRate = true;
force tuncon_unconinfo_enableShowIfTreated = true;
force tuncon_unconinfo_enableShowIfTreatedConcious = true;
force tuncon_unconinfo_enableShowStableVitals = true;
force tuncon_unconinfo_enableUnconInfo = true;
force tuncon_unconinfo_noFriendliesNearbyText = "You're fucked mate.";
force tuncon_unconinfo_unconinfoNearestUnitDistance = 50;
force tuncon_unconinfo_updateInterval = 1;

// UK3CB Factions
uk3cb_pipstretchfactor = 0;
uk3cb_preferedOptic = 0;
uk3cb_preferedOpticHighMag = 0;

// Unit Ambient SFX
force uvo_uas_chanceCough = 0.1;
force uvo_uas_chanceRadio = 0.5;
force uvo_uas_chanceSigh = 0.185747;
force uvo_uas_chanceWhistle = 0.03;
force uvo_uas_distanceCough = 250;
force uvo_uas_distanceRadio = 250;
force uvo_uas_distanceRadioInVehicle = 100;
force uvo_uas_distanceSigh = 150;
force uvo_uas_distanceWhistle = 250;
force uvo_uas_enableCoughing = false;
force uvo_uas_enablePlayers = false;
force uvo_uas_enableRadio = true;
force uvo_uas_enableRadioPlayers = false;
force uvo_uas_enableSighing = true;
force uvo_uas_enableWhistling = true;
force uvo_uas_intMultiplierCough = 2.5;
force uvo_uas_intMultiplierRadio = 2.5;
force uvo_uas_intMultiplierSigh = 2.5;
force uvo_uas_intMultiplierWhistle = 2.5;
force uvo_uas_minIntCough = 60;
force uvo_uas_minIntRadio = 20;
force uvo_uas_minIntSigh = 60;
force uvo_uas_minIntWhistle = 120;
force uvo_uas_radioOperator = 0;

// Unit Voice-overs
force uvo_main_compatExplosive = "";
force uvo_main_compatFlash = "";
force uvo_main_compatFrag = "";
force uvo_main_compatIncendiary = "";
force uvo_main_compatSmoke = "";
force uvo_main_deathShoutDistance = 300;
force uvo_main_deathShoutVolume = 3;
force uvo_main_debug = false;
force uvo_main_enableCallouts = true;
force uvo_main_enablePlayers = false;
force uvo_main_hearingDistance = 300;
force uvo_main_killConfirmChanceAI = 1;
force uvo_main_killConfirmChancePlayer = 1;
force uvo_main_killConfirmStealth = true;
force uvo_main_sentencesEast = true;
force uvo_main_sentencesGuer = true;
force uvo_main_sentencesWest = true;
force uvo_main_UVOEast = true;
force uvo_main_UVOGuer = true;
force uvo_main_UVOWest = true;
force uvo_main_voicePitch = 1;

// VET_Unflipping
force vet_unflipping_require_serviceVehicle = false;
force vet_unflipping_require_toolkit = false;
force vet_unflipping_time = 5;
force vet_unflipping_unit_man_limit = 7;
force vet_unflipping_unit_mass_limit = 3000;
force vet_unflipping_vehicle_mass_limit = 100000;

// Zeus Additions
zeus_additions_main_AABLU_mags = "[""rhs_fim92_mag"",""Titan_AA""]";
zeus_additions_main_AARED_mags = "[""rhs_mag_9k38_rocket"",""Titan_AA""]";
zeus_additions_main_blacklistFKEnable = false;
zeus_additions_main_blacklistSettings = "[]";
zeus_additions_main_enableACEDragHint = true;
zeus_additions_main_enableACEMedicalHint = true;
zeus_additions_main_enableBuildingDestructionHandling = false;
zeus_additions_main_enableMissionCounter = false;
zeus_additions_main_enableRHSHint = true;
zeus_additions_main_enableTFARHint = true;
zeus_additions_main_HATBLU_mags = "[""UK3CB_BAF_Javelin_Slung_Tube"",""rhs_fgm148_magazine_AT""]";
zeus_additions_main_HATRED_mags = "[""Vorona_HE"",""Vorona_HEAT""]";
zeus_additions_main_LATBLU_mags = "[""UK3CB_BAF_AT4_CS_AP_Launcher"",""UK3CB_BAF_AT4_CS_AT_Launcher"",""rhs_weap_M136"",""rhs_weap_M136_hedp"",""rhs_weap_M136_hp"",""rhs_weap_m72a7""]";
zeus_additions_main_LATRED_mags = "[""rhs_weap_rpg18"",""rhs_weap_rpg26"",""rhs_weap_rshg2"",""rhs_weap_m80"",""rhs_weap_rpg75""]";
zeus_additions_main_MATBLU_mags = "[""rhs_mag_maaws_HE"",""rhs_mag_maaws_HEAT"",""MRAWS_HE_F"",""MRAWS_HEAT_F"",""rhs_mag_smaw_HEDP"",""rhs_mag_smaw_HEAA""]";
zeus_additions_main_MATRED_mags = "[""rhs_rpg7_OG7V_mag"",""rhs_rpg7_PG7V_mag"",""rhs_rpg7_PG7VL_mag"",""rhs_rpg7_PG7VM_mag"",""rhs_rpg7_PG7VR_mag"",""rhs_rpg7_TBG7V_mag"",""rhs_rpg7_type69_airburst_mag"",""RPG7_F"",""RPG32_HE_F"",""RPG32_F""]";

// Zeus Enhanced
force zen_area_markers_editableMarkers = 0;
zen_building_markers_enabled = false;
zen_camera_adaptiveSpeed = true;
zen_camera_defaultSpeedCoef = 1;
zen_camera_fastSpeedCoef = 1;
zen_camera_followTerrain = true;
force zen_common_ascensionMessages = false;
force zen_common_autoAddObjects = true;
force zen_common_cameraBird = false;
zen_common_darkMode = false;
force zen_common_disableGearAnim = true;
zen_common_preferredArsenal = 1;
force zen_compat_ace_hideModules = true;
zen_context_menu_enabled = 2;
zen_context_menu_overrideWaypoints = false;
zen_editor_addGroupIcons = false;
zen_editor_addModIcons = false;
force zen_editor_declutterEmptyTree = true;
zen_editor_disableLiveSearch = false;
zen_editor_moveDisplayToEdge = true;
force zen_editor_parachuteSounds = true;
force zen_editor_previews_enabled = true;
force zen_editor_randomizeCopyPaste = false;
force zen_editor_removeWatermark = true;
zen_editor_unitRadioMessages = 0;
force zen_placement_enabled = true;
zen_remote_control_cameraExitPosition = 2;
zen_visibility_enabled = 0;
zen_visibility_maxDistance = 5000;
zen_vision_enableBlackHot = false;
zen_vision_enableBlackHotGreenCold = false;
zen_vision_enableBlackHotRedCold = false;
zen_vision_enableGreenHotCold = false;
zen_vision_enableNVG = true;
zen_vision_enableRedGreenThermal = false;
zen_vision_enableRedHotCold = false;
zen_vision_enableWhiteHot = true;
zen_vision_enableWhiteHotRedCold = false;

// Zeus Enhanced - Attributes
zen_attributes_enableAbilities = true;
zen_attributes_enableAmmo = true;
zen_attributes_enableAmmoCargo = true;
zen_attributes_enableArsenal = true;
zen_attributes_enableBuildingMarker = true;
zen_attributes_enableDamage = true;
zen_attributes_enableEngine = true;
zen_attributes_enableExecute = true;
zen_attributes_enableFuel = true;
zen_attributes_enableFuelCargo = true;
zen_attributes_enableGarage = true;
zen_attributes_enableGroupBehaviour = true;
zen_attributes_enableGroupCombatMode = true;
zen_attributes_enableGroupExecute = true;
zen_attributes_enableGroupFormation = true;
zen_attributes_enableGroupID = true;
zen_attributes_enableGroupSide = true;
zen_attributes_enableGroupSkill = true;
zen_attributes_enableGroupSpeed = true;
zen_attributes_enableGroupStance = true;
zen_attributes_enableHealth = true;
zen_attributes_enableInventory = true;
zen_attributes_enableLights = true;
zen_attributes_enableMarkerAlpha = true;
zen_attributes_enableMarkerColor = true;
zen_attributes_enableMarkerText = true;
zen_attributes_enableName = true;
zen_attributes_enablePlateNumber = true;
zen_attributes_enableRank = true;
zen_attributes_enableRepairCargo = true;
zen_attributes_enableRespawnPosition = true;
zen_attributes_enableRespawnVehicle = true;
zen_attributes_enableSensors = true;
zen_attributes_enableSkill = true;
zen_attributes_enableSkills = true;
zen_attributes_enableStance = true;
zen_attributes_enableStates = true;
zen_attributes_enableTraits = true;
zen_attributes_enableVehicleLock = true;
zen_attributes_enableWaypointBehaviour = true;
zen_attributes_enableWaypointCombatMode = true;
zen_attributes_enableWaypointFormation = true;
zen_attributes_enableWaypointLoiterAltitude = true;
zen_attributes_enableWaypointLoiterDirection = true;
zen_attributes_enableWaypointLoiterRadius = true;
zen_attributes_enableWaypointSpeed = true;
zen_attributes_enableWaypointTimeout = true;
zen_attributes_enableWaypointType = true;

// Zeus Enhanced - Faction Filter
force zen_faction_filter_0_EdCat_GO_CSAT_Arctic = true;
force zen_faction_filter_0_ibr_LartaFac = true;
force zen_faction_filter_0_OPF_F = true;
force zen_faction_filter_0_OPF_G_F = true;
force zen_faction_filter_0_OPF_GEN_F = true;
force zen_faction_filter_0_OPF_R_F = true;
force zen_faction_filter_0_OPF_T_F = true;
force zen_faction_filter_0_rhs_faction_msv = true;
force zen_faction_filter_0_rhs_faction_rva = true;
force zen_faction_filter_0_rhs_faction_tv = true;
force zen_faction_filter_0_rhs_faction_vdv = true;
force zen_faction_filter_0_rhs_faction_vmf = true;
force zen_faction_filter_0_rhs_faction_vpvo = true;
force zen_faction_filter_0_rhs_faction_vv = true;
force zen_faction_filter_0_rhs_faction_vvs = true;
force zen_faction_filter_0_rhs_faction_vvs_c = true;
force zen_faction_filter_0_rhsgref_faction_chdkz = true;
force zen_faction_filter_0_rhsgref_faction_chdkz_groups = true;
force zen_faction_filter_0_rhsgref_faction_tla = true;
force zen_faction_filter_0_rhssaf_faction_airforce_opfor = true;
force zen_faction_filter_0_rhssaf_faction_army_opfor = true;
force zen_faction_filter_0_UK3CB_AAF_O = true;
force zen_faction_filter_0_UK3CB_ADA_O = true;
force zen_faction_filter_0_UK3CB_ADC_O = true;
force zen_faction_filter_0_UK3CB_ADE_O = true;
force zen_faction_filter_0_UK3CB_ADG_O = true;
force zen_faction_filter_0_UK3CB_ADM_O = true;
force zen_faction_filter_0_UK3CB_ADP_O = true;
force zen_faction_filter_0_UK3CB_ADR_O = true;
force zen_faction_filter_0_UK3CB_APD_O = true;
force zen_faction_filter_0_UK3CB_ARD_O = true;
force zen_faction_filter_0_UK3CB_CCM_O = true;
force zen_faction_filter_0_UK3CB_CHC_O = true;
force zen_faction_filter_0_UK3CB_CHD_O = true;
force zen_faction_filter_0_UK3CB_CHD_O_groups = true;
force zen_faction_filter_0_UK3CB_CHD_W_O = true;
force zen_faction_filter_0_UK3CB_CHD_W_O_groups = true;
force zen_faction_filter_0_UK3CB_CPD_O = true;
force zen_faction_filter_0_UK3CB_CSAT_A_O = true;
force zen_faction_filter_0_UK3CB_CSAT_A_O_groups = true;
force zen_faction_filter_0_UK3CB_CSAT_B_O = true;
force zen_faction_filter_0_UK3CB_CSAT_B_O_groups = true;
force zen_faction_filter_0_UK3CB_CSAT_F_O = true;
force zen_faction_filter_0_UK3CB_CSAT_F_O_groups = true;
force zen_faction_filter_0_UK3CB_CSAT_G_O = true;
force zen_faction_filter_0_UK3CB_CSAT_G_O_groups = true;
force zen_faction_filter_0_UK3CB_CSAT_M_O = true;
force zen_faction_filter_0_UK3CB_CSAT_M_O_groups = true;
force zen_faction_filter_0_UK3CB_CSAT_N_O = true;
force zen_faction_filter_0_UK3CB_CSAT_N_O_groups = true;
force zen_faction_filter_0_UK3CB_CSAT_S_O = true;
force zen_faction_filter_0_UK3CB_CSAT_S_O_groups = true;
force zen_faction_filter_0_UK3CB_CSAT_U_O = true;
force zen_faction_filter_0_UK3CB_CSAT_U_O_groups = true;
force zen_faction_filter_0_UK3CB_CSAT_W_O = true;
force zen_faction_filter_0_UK3CB_CSAT_W_O_groups = true;
force zen_faction_filter_0_UK3CB_CW_SOV_O_EARLY = true;
force zen_faction_filter_0_UK3CB_CW_SOV_O_LATE = true;
force zen_faction_filter_0_UK3CB_FIA_O = true;
force zen_faction_filter_0_UK3CB_GAF_O = true;
force zen_faction_filter_0_UK3CB_ION_O_Desert = true;
force zen_faction_filter_0_UK3CB_ION_O_Urban = true;
force zen_faction_filter_0_UK3CB_ION_O_Winter = true;
force zen_faction_filter_0_UK3CB_ION_O_Woodland = true;
force zen_faction_filter_0_UK3CB_KDF_O = true;
force zen_faction_filter_0_UK3CB_KRG_O = true;
force zen_faction_filter_0_UK3CB_LDF_O = true;
force zen_faction_filter_0_UK3CB_LDF_O_groups = true;
force zen_faction_filter_0_UK3CB_LFR_O = true;
force zen_faction_filter_0_UK3CB_LNM_O = true;
force zen_faction_filter_0_UK3CB_LNM_O_groups = true;
force zen_faction_filter_0_UK3CB_LSM_O = true;
force zen_faction_filter_0_UK3CB_MDF_O = true;
force zen_faction_filter_0_UK3CB_MEC_O = true;
force zen_faction_filter_0_UK3CB_MEE_O = true;
force zen_faction_filter_0_UK3CB_MEI_O = true;
force zen_faction_filter_0_UK3CB_NAP_O = true;
force zen_faction_filter_0_UK3CB_NAP_O_groups = true;
force zen_faction_filter_0_UK3CB_NFA_O = true;
force zen_faction_filter_0_UK3CB_NFA_O_groups = true;
force zen_faction_filter_0_UK3CB_NPD_O = true;
force zen_faction_filter_0_UK3CB_TKA_O = true;
force zen_faction_filter_0_UK3CB_TKC_O = true;
force zen_faction_filter_0_UK3CB_TKM_O = true;
force zen_faction_filter_0_UK3CB_TKP_O = true;
force zen_faction_filter_0_vtf_kf_O_KS = true;
zen_faction_filter_1_ = true;
force zen_faction_filter_1_BLU_CTRG_F = true;
force zen_faction_filter_1_BLU_F = true;
force zen_faction_filter_1_BLU_G_F = true;
force zen_faction_filter_1_BLU_GEN_F = true;
force zen_faction_filter_1_BLU_T_F = true;
force zen_faction_filter_1_BLU_W_F = true;
force zen_faction_filter_1_Default = true;
force zen_faction_filter_1_EdCat_GO_NATO_Arctic = true;
force zen_faction_filter_1_PTV = true;
force zen_faction_filter_1_PTV_Desert = true;
force zen_faction_filter_1_PTV_Woodland = true;
force zen_faction_filter_1_Raider_Tactical_F = true;
force zen_faction_filter_1_rhs_faction_socom = true;
force zen_faction_filter_1_rhs_faction_usaf = true;
force zen_faction_filter_1_rhs_faction_usarmy_d = true;
force zen_faction_filter_1_rhs_faction_usarmy_wd = true;
force zen_faction_filter_1_rhs_faction_usmc_d = true;
force zen_faction_filter_1_rhs_faction_usmc_wd = true;
force zen_faction_filter_1_rhs_faction_usn = true;
force zen_faction_filter_1_rhsgref_faction_cdf_air_b = true;
force zen_faction_filter_1_rhsgref_faction_cdf_ground_b = true;
force zen_faction_filter_1_rhsgref_faction_cdf_ground_b_groups = true;
force zen_faction_filter_1_rhsgref_faction_cdf_ng_b = true;
force zen_faction_filter_1_rhsgref_faction_hidf = true;
force zen_faction_filter_1_UK3CB_AAF_B = true;
force zen_faction_filter_1_UK3CB_ADA_B = true;
force zen_faction_filter_1_UK3CB_ADC_B = true;
force zen_faction_filter_1_UK3CB_ADG_B = true;
force zen_faction_filter_1_UK3CB_ADM_B = true;
force zen_faction_filter_1_UK3CB_ADP_B = true;
force zen_faction_filter_1_UK3CB_ADR_B = true;
force zen_faction_filter_1_UK3CB_ANA_B = true;
force zen_faction_filter_1_UK3CB_ANP_B = true;
force zen_faction_filter_1_UK3CB_APD_B = true;
force zen_faction_filter_1_UK3CB_ARD_B = true;
force zen_faction_filter_1_UK3CB_CCM_B = true;
force zen_faction_filter_1_UK3CB_CHC_B = true;
force zen_faction_filter_1_UK3CB_CHD_B = true;
force zen_faction_filter_1_UK3CB_CHD_B_groups = true;
force zen_faction_filter_1_UK3CB_CHD_W_B = true;
force zen_faction_filter_1_UK3CB_CHD_W_B_groups = true;
force zen_faction_filter_1_UK3CB_CPD_B = true;
force zen_faction_filter_1_UK3CB_CW_US_B_EARLY = true;
force zen_faction_filter_1_UK3CB_CW_US_B_LATE = true;
force zen_faction_filter_1_UK3CB_FIA_B = true;
force zen_faction_filter_1_UK3CB_GAF_B = true;
force zen_faction_filter_1_UK3CB_ION_B_Desert = true;
force zen_faction_filter_1_UK3CB_ION_B_Urban = true;
force zen_faction_filter_1_UK3CB_ION_B_Winter = true;
force zen_faction_filter_1_UK3CB_ION_B_Woodland = true;
force zen_faction_filter_1_UK3CB_KDF_B = true;
force zen_faction_filter_1_UK3CB_KRG_B = true;
force zen_faction_filter_1_UK3CB_LDF_B = true;
force zen_faction_filter_1_UK3CB_LDF_B_groups = true;
force zen_faction_filter_1_UK3CB_LFR_B = true;
force zen_faction_filter_1_UK3CB_LNM_B = true;
force zen_faction_filter_1_UK3CB_LNM_B_groups = true;
force zen_faction_filter_1_UK3CB_LSM_B = true;
force zen_faction_filter_1_UK3CB_MDF_B = true;
force zen_faction_filter_1_UK3CB_MEC_B = true;
force zen_faction_filter_1_UK3CB_MEI_B = true;
force zen_faction_filter_1_UK3CB_NAP_B = true;
force zen_faction_filter_1_UK3CB_NAP_B_groups = true;
force zen_faction_filter_1_UK3CB_NFA_B = true;
force zen_faction_filter_1_UK3CB_NFA_B_groups = true;
force zen_faction_filter_1_UK3CB_NPD_B = true;
force zen_faction_filter_1_UK3CB_TKA_B = true;
force zen_faction_filter_1_UK3CB_TKC_B = true;
force zen_faction_filter_1_UK3CB_TKM_B = true;
force zen_faction_filter_1_UK3CB_TKP_B = true;
force zen_faction_filter_1_UK3CB_UN_B = true;
force zen_faction_filter_1_VSM_AOR2 = true;
force zen_faction_filter_1_VSM_GP = true;
force zen_faction_filter_1_vtf_kf_B_KDF = true;
force zen_faction_filter_1_vtf_kf_B_KFL = true;
force zen_faction_filter_1_YUL_army = true;
force zen_faction_filter_2_IND_C_F = true;
force zen_faction_filter_2_IND_E_F = true;
force zen_faction_filter_2_IND_F = true;
force zen_faction_filter_2_IND_G_F = true;
force zen_faction_filter_2_IND_L_F = true;
force zen_faction_filter_2_rhsgref_faction_cdf_air = true;
force zen_faction_filter_2_rhsgref_faction_cdf_ground = true;
force zen_faction_filter_2_rhsgref_faction_cdf_ground_groups = true;
force zen_faction_filter_2_rhsgref_faction_cdf_ng = true;
force zen_faction_filter_2_rhsgref_faction_cdf_ng_groups = true;
force zen_faction_filter_2_rhsgref_faction_chdkz_g = true;
force zen_faction_filter_2_rhsgref_faction_chdkz_g_groups = true;
force zen_faction_filter_2_rhsgref_faction_nationalist = true;
force zen_faction_filter_2_rhsgref_faction_nationalist_groups = true;
force zen_faction_filter_2_rhsgref_faction_tla_g = true;
force zen_faction_filter_2_rhsgref_faction_un = true;
force zen_faction_filter_2_rhssaf_faction_airforce = true;
force zen_faction_filter_2_rhssaf_faction_army = true;
force zen_faction_filter_2_rhssaf_faction_un = true;
force zen_faction_filter_2_UK3CB_AAF_I = true;
force zen_faction_filter_2_UK3CB_ADA_I = true;
force zen_faction_filter_2_UK3CB_ADC_I = true;
force zen_faction_filter_2_UK3CB_ADE_I = true;
force zen_faction_filter_2_UK3CB_ADG_I = true;
force zen_faction_filter_2_UK3CB_ADM_I = true;
force zen_faction_filter_2_UK3CB_ADP_I = true;
force zen_faction_filter_2_UK3CB_ADR_I = true;
force zen_faction_filter_2_UK3CB_APD_I = true;
force zen_faction_filter_2_UK3CB_ARD_I = true;
force zen_faction_filter_2_UK3CB_CCM_I = true;
force zen_faction_filter_2_UK3CB_CHC_I = true;
force zen_faction_filter_2_UK3CB_CHD_I = true;
force zen_faction_filter_2_UK3CB_CHD_I_groups = true;
force zen_faction_filter_2_UK3CB_CHD_W_I = true;
force zen_faction_filter_2_UK3CB_CHD_W_I_groups = true;
force zen_faction_filter_2_UK3CB_CPD_I = true;
force zen_faction_filter_2_UK3CB_FIA_I = true;
force zen_faction_filter_2_UK3CB_GAF_I = true;
force zen_faction_filter_2_UK3CB_ION_I_Desert = true;
force zen_faction_filter_2_UK3CB_ION_I_Urban = true;
force zen_faction_filter_2_UK3CB_ION_I_Winter = true;
force zen_faction_filter_2_UK3CB_ION_I_Woodland = true;
force zen_faction_filter_2_UK3CB_KDF_I = true;
force zen_faction_filter_2_UK3CB_KRG_I = true;
force zen_faction_filter_2_UK3CB_LDF_I = true;
force zen_faction_filter_2_UK3CB_LDF_I_groups = true;
force zen_faction_filter_2_UK3CB_LFR_I = true;
force zen_faction_filter_2_UK3CB_LNM_I = true;
force zen_faction_filter_2_UK3CB_LNM_I_groups = true;
force zen_faction_filter_2_UK3CB_LSM_I = true;
force zen_faction_filter_2_UK3CB_MDF_I = true;
force zen_faction_filter_2_UK3CB_MEC_I = true;
force zen_faction_filter_2_UK3CB_MEE_I = true;
force zen_faction_filter_2_UK3CB_MEI_I = true;
force zen_faction_filter_2_UK3CB_NAP_I = true;
force zen_faction_filter_2_UK3CB_NAP_I_groups = true;
force zen_faction_filter_2_UK3CB_NFA_I = true;
force zen_faction_filter_2_UK3CB_NFA_I_groups = true;
force zen_faction_filter_2_UK3CB_NPD_I = true;
force zen_faction_filter_2_UK3CB_TKA_I = true;
force zen_faction_filter_2_UK3CB_TKC_I = true;
force zen_faction_filter_2_UK3CB_TKM_I = true;
force zen_faction_filter_2_UK3CB_TKP_I = true;
force zen_faction_filter_2_UK3CB_UN_I = true;
force zen_faction_filter_2_vtf_kf_I_KAL = true;
force zen_faction_filter_3_CIV_F = true;
force zen_faction_filter_3_CIV_IDAP_F = true;
force zen_faction_filter_3_EdCat_jbad_vehicles = true;
force zen_faction_filter_3_IND_L_F = true;
force zen_faction_filter_3_UK3CB_ADC_C = true;
force zen_faction_filter_3_UK3CB_CHC_C = true;
force zen_faction_filter_3_UK3CB_MEC_C = true;
force zen_faction_filter_3_UK3CB_TKC_C = true;
