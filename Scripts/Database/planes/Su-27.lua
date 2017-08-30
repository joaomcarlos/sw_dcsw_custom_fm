local function BD3(clsid)
	return {CLSID = clsid, arg_value = 0.15 }
end

local function MBD(clsid)
	return {CLSID = clsid, arg_value = 0.25 }
end

return plane( "Su-27", _("Su-27"),
    {
        
        EmptyWeight = "17500",
        MaxFuelWeight = "9400",
        MaxHeight = "18500",
        MaxSpeed = "2500",
        MaxTakeOffWeight = "33000",
        Picture = "Su-27.png",
        Rate = "50",
        Shape = "Su-27",
        WingSpan = "14.7",
        WorldID = 3,
        defFuelRatio = 0.5947, --0.555, -- топливо по умолчанию в долях от полного

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 192,
			-- PPR-26
			chaff = {default = 96, increment = 3, chargeSz = 1},
			-- PPI-26
			flare = {default = 96, increment = 3, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, Su_27,
        "Fighters",
        },
        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_AVERAGE),
		
		mech_timing = {{0.0, 0.074; 0.11, 0.14}, -- CANOPY_OPEN_TIMES
					   {0.0, 0.18; 0.89, 0.074}, -- CANOPY_CLOSE_TIMES
					  },
		
        Sensors = {
            RADAR = "N-001",
            IRST = "OLS-27",
            RWR = "Abstract RWR"
        },
		Failures = {
			{ id = 'asc', 		label = _('Su27 ASC'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('Su27 AUTOPILOT'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'eos',  		label = _('EOS'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'helmet',  	label = _('HELMET'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
		},
		HumanRadio = {
			frequency = 127.5,
			modulation = MODULATION_AM
		},
        mapclasskey = "P0091000024",
		pylons_enumeration = {10, 1, 9, 2, 3, 8, 4, 7, 6, 5},
    },
    {
        pylon(1, 0, -1.943000, 0.173000, -7.280000,
            {
				arg = 308 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" }, --R-73
                { CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}" , arg = 308 ,arg_value = 1, required = {{station = 10,loadout = {"{44EE8698-89F9-48EE-AF36-5FD31896A82A}"}}}},--Sorbciya
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
                 { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{3331E15D-A833-4639-B9E4-A61A37DC1956}" },
                { CLSID = "LAU-105_2*CATM-9M" },
                { CLSID = "{16602053-4A12-40A2-B214-AB60D481B20E}" },
                { CLSID = "{HVARx2}" },
                { CLSID = "{GAR-8}" },
                { CLSID = "{FAB-500-M54-TU}" },
                { CLSID = "{FAB-500-SL}" },
                { CLSID = "{FAB-500-TA}" },
                { CLSID = "CBU97*10" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },
        { CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                loadout_R77,
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
                { CLSID = "{RN-24}" }, 
                { CLSID = "{RN-28}" }, 
                { CLSID = "{AN-M64}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" }, -- GBU-10
                { CLSID = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}" },
        { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
        { CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}" },
        { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
        { CLSID = "{0D945D78-542C-4E9B-9A17-9B5008CC8D39}" },
                { CLSID = "{FAB-500-M54}" },
        { CLSID = "{MER-5E_MK82x5}" },
        { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
        { CLSID = "{027563C9-D87E-4A85-B317-597B510E3F03}" },
            }
        ),
        pylon(2, 0, -2.535000, -0.165000, -6.168000,
            {
				arg = 309 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" }, --R-73
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
                 { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{3331E15D-A833-4639-B9E4-A61A37DC1956}" },
                { CLSID = "LAU-105_2*CATM-9M" },
                { CLSID = "{16602053-4A12-40A2-B214-AB60D481B20E}" },
                { CLSID = "{HVARx2}" },
                { CLSID = "{GAR-8}" },
                { CLSID = "{FAB-500-M54-TU}" },
                { CLSID = "{FAB-500-SL}" },
                { CLSID = "{FAB-500-TA}" },
                { CLSID = "CBU97*10" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },
        { CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                loadout_R77,
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
                { CLSID = "{RN-24}" }, 
                { CLSID = "{RN-28}" }, 
                { CLSID = "{AN-M64}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" }, -- GBU-10
                { CLSID = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}" },
        { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
        { CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}" },
        { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
        { CLSID = "{0D945D78-542C-4E9B-9A17-9B5008CC8D39}" },
                { CLSID = "{FAB-500-M54}" },
        { CLSID = "{MER-5E_MK82x5}" },
        { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
        { CLSID = "{027563C9-D87E-4A85-B317-597B510E3F03}" },
            }
        ),
        pylon(3, 0, -1.137000, -0.321000, -4.524000,
            {
				arg = 310 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" , arg_value = 0.3}, --R-73
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" }, --R-27R
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" }, --R-27T
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" }, --R-27ER
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" }, --R-27ET
                BD3("B-8M1 - 20 S-8OFP2"),--B-8M1 - 20 S-8OFP2
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),--FAB-250
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"),--FAB-500 M62
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"),--BetAB-500
                BD3("{BD289E34-DF84-4C5E-9220-4B14C346E79D}"),--BetAB-500ShP
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"),--RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),				-- RBK-250-275 AO-1SCh
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"),--RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"),--RBK-500 PTAB-1M
				BD3("{RBK_500U_OAB_2_5RT}"),				--RBK-500U OAB-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74884}"), --KMGU-2 - 96 AO-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74881}"), --KMGU-2 - 96 PTAB-2.5KO
                BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"), --SAB-100
                BD3("{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"), --B-8M1 - 20 S-8KOM
                BD3("{FC56DF80-9B09-44C5-8976-DCFAFF219062}"), --B-13L - 5 S-13 OF
                BD3("{A0648264-4BC0-4EE8-A543-D119F6BA4257}"), --S-25 OFM
                BD3("{3DFB7320-AB0E-11d7-9897-000476191836}"), --B-8M1 - 20 S-8TsM
				MBD("{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"),--MER*6 FAB-100
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
            }
        ),
        pylon(4, 1, -0.075000, -1.218000, -1.192000,
            {
				arg = 311 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" }, --R-27R
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" }, --R-27ER
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"), --FAB-250
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"), --FAB-500 M62
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"), --BetAB-500
                BD3("{BD289E34-DF84-4C5E-9220-4B14C346E79D}"), --BetAB-500ShP
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"), --RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),				-- RBK-250-275 AO-1SCh
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"), --RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"), --RBK-500 PTAB-1M
				BD3("{RBK_500U_OAB_2_5RT}"),				--RBK-500U OAB-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74884}"), --KMGU-2 - 96 AO-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74881}"), --KMGU-2 - 96 PTAB-2.5KO
                BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"), --SAB-100
				MBD("{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"),--MER*6 FAB-100
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
                 { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{3331E15D-A833-4639-B9E4-A61A37DC1956}" },
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{16602053-4A12-40A2-B214-AB60D481B20E}" },
                { CLSID = "{HVARx2}" },
                { CLSID = "{FAB-500-M54-TU}" },
                { CLSID = "{FAB-500-SL}" },
                { CLSID = "{FAB-500-TA}" },
                { CLSID = "CBU97*10" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },
                { CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },
        { CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{0855A3A1-FA50-4C89-BDBB-5D5360ABA071}" }, 
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                loadout_R77,
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
                { CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
                { CLSID = "{RN-24}" }, 
                { CLSID = "{RN-28}" }, 
                { CLSID = "{AN-M64}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" }, -- GBU-10
                { CLSID = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}" },
        { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
        { CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}" },
        { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
        { CLSID = "{0D945D78-542C-4E9B-9A17-9B5008CC8D39}" },
                { CLSID = "MK_82*28" },
                { CLSID = "{FAB-500-M54}" },
        { CLSID = "{MER-5E_MK82x5}" },
        { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
        { CLSID = "{027563C9-D87E-4A85-B317-597B510E3F03}" },
                { CLSID = "B-8M1 - 20 S-8OFP2" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" }, -- S-8TsM
            }
        ),
        pylon(5, 1, -3.751000, -0.384000, 0.000000,
            {
				arg = 312 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" }, --R-27R
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" }, --R-27ER
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"), --FAB-250
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"), --FAB-500 M62
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"), --BetAB-500
                BD3("{BD289E34-DF84-4C5E-9220-4B14C346E79D}"), --BetAB-500ShP
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"), --RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),				-- RBK-250-275 AO-1SCh
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"), --RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"), --RBK-500 PTAB-1M
				BD3("{RBK_500U_OAB_2_5RT}"),				--RBK-500U OAB-2.5RT
                BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"), --SAB-100
				MBD("{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"),--MER*6 FAB-100
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
                      { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{3331E15D-A833-4639-B9E4-A61A37DC1956}" },
                { CLSID = "{HVARx2}" },
                { CLSID = "CBU87*10" },
                { CLSID = "{B0241BD2-5628-47E0-954C-A8675B7E698E}" },
                { CLSID = "MK_82*28" },
                { CLSID = "{BDAD04AA-4D4A-4E51-B958-180A89F963CF}" },
                { CLSID = "{5F1C54C0-0ABD-4868-A883-B52FF9FCB422}" },
                { CLSID = "{FAB-500-M54-TU}" },
                { CLSID = "{FAB-500-SL}" },
                { CLSID = "{FAB-500-TA}" },
                { CLSID = "CBU97*10" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },
                { CLSID = "{26D2AF37-B0DF-4AB6-9D61-A150FF58A37B}" },
                { CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },
        { CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{639DB5DD-CB7E-4E42-AC75-2112BC397B97}" }, 
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{0855A3A1-FA50-4C89-BDBB-5D5360ABA071}" }, 
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                loadout_R77,
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
                { CLSID = "{639DB5DD-CB7E-4E42-AC75-2112BC397B97}" }, 
                { CLSID = "{RN-24}" }, 
                { CLSID = "{RN-28}" },
                { CLSID = "{AN-M64}" }, 
                { CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" }, -- GBU-10
                { CLSID = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}" },
                { CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{C0FF4842-FBAC-11d5-9190-00A0249B6F00}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },
                { CLSID = "{26D2AF37-B0DF-4AB6-9D61-A150FF58A37B}" },
        { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
        { CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}" },
        { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
        { CLSID = "{0D945D78-542C-4E9B-9A17-9B5008CC8D39}" },
                { CLSID = "{FAB-500-M54}" },
        { CLSID = "{MER-5E_MK82x5}" },
        { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF" },
        { CLSID = "{027563C9-D87E-4A85-B317-597B510E3F03" },
                { CLSID = "B-8M1 - 20 S-8OFP2" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" }, -- S-8TsM
            }
        ),
        pylon(6, 1, 0.986000, -0.384000, 0.000000,
            {
				arg = 313 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" }, --R-27R
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" }, --R-27ER
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"), --FAB-250
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"), --FAB-500 M62
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"), --BetAB-500
                BD3("{BD289E34-DF84-4C5E-9220-4B14C346E79D}"), --BetAB-500ShP
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"), --RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),				-- RBK-250-275 AO-1SCh
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"), --RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"),--RBK-500 PTAB-1M
				BD3("{RBK_500U_OAB_2_5RT}"),				--RBK-500U OAB-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74884}"), --KMGU-2 - 96 AO-2.5RT 
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74881}"), --KMGU-2 - 96 PTAB-2.5KO 
                BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"), --SAB-100
				MBD("{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"),--MER*6 FAB-100
				  { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{3331E15D-A833-4639-B9E4-A61A37DC1956}" },
                { CLSID = "{HVARx2}" },
                { CLSID = "CBU87*10" },
                { CLSID = "{B0241BD2-5628-47E0-954C-A8675B7E698E}" },
                { CLSID = "MK_82*28" },
                { CLSID = "{BDAD04AA-4D4A-4E51-B958-180A89F963CF}" },
                { CLSID = "{5F1C54C0-0ABD-4868-A883-B52FF9FCB422}" },
                { CLSID = "{FAB-500-M54-TU}" },
                { CLSID = "{FAB-500-SL}" },
                { CLSID = "{FAB-500-TA}" },
                { CLSID = "CBU97*10" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },
                { CLSID = "{26D2AF37-B0DF-4AB6-9D61-A150FF58A37B}" },
                { CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },
        { CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{639DB5DD-CB7E-4E42-AC75-2112BC397B97}" }, 
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{0855A3A1-FA50-4C89-BDBB-5D5360ABA071}" }, 
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                loadout_R77,
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
                { CLSID = "{639DB5DD-CB7E-4E42-AC75-2112BC397B97}" }, 
                { CLSID = "{RN-24}" }, 
                { CLSID = "{RN-28}" },
                { CLSID = "{AN-M64}" }, 
                { CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" }, -- GBU-10
                { CLSID = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}" },
                { CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{C0FF4842-FBAC-11d5-9190-00A0249B6F00}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },
                { CLSID = "{26D2AF37-B0DF-4AB6-9D61-A150FF58A37B}" },
        { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
        { CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}" },
        { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
        { CLSID = "{0D945D78-542C-4E9B-9A17-9B5008CC8D39}" },
                { CLSID = "{FAB-500-M54}" },
        { CLSID = "{MER-5E_MK82x5}" },
        { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF" },
        { CLSID = "{027563C9-D87E-4A85-B317-597B510E3F03" },
                { CLSID = "B-8M1 - 20 S-8OFP2" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" }, -- S-8TsM
            }
        ),
        pylon(7, 1, -0.075000, -1.218000, 1.192000,
            {
				arg = 314 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" }, --R-27R
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" }, --R-27ER
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"), --FAB-250
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"), --FAB-500 M62
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"), --BetAB-500
                BD3("{BD289E34-DF84-4C5E-9220-4B14C346E79D}"), --BetAB-500ShP
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"), --RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),				-- RBK-250-275 AO-1SCh
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"), --RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"), --RBK-500 PTAB-1M
				BD3("{RBK_500U_OAB_2_5RT}"),				--RBK-500U OAB-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74884}"), --KMGU-2 - 96 AO-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74881}"), --KMGU-2 - 96 PTAB-2.5KO
                BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"), --SAB-100
				MBD("{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"),--MER*6 FAB-100
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
                { CLSID = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "{3331E15D-A833-4639-B9E4-A61A37DC1956}" },
                { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },
                { CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },
        { CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97
                { CLSID = "{0855A3A1-FA50-4C89-BDBB-5D5360ABA071}" }, 
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{639DB5DD-CB7E-4E42-AC75-2112BC397B97}" }, 
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
                { CLSID = "{RN-24}" }, 
                { CLSID = "{RN-28}" }, 
                { CLSID = "{AN-M64}" },
                { CLSID = "{IAB-500}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{1461CD18-429A-42A9-A21F-4C621ECD4573}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" }, -- GBU-10
                { CLSID = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}" },
        { CLSID = "Fuel_Tank_FT600" },
        { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
        { CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}" },
        { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
        { CLSID = "{0D945D78-542C-4E9B-9A17-9B5008CC8D39}" },
        { CLSID = "{MER-5E_MK82x5}" },
        { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
        { CLSID = "{027563C9-D87E-4A85-B317-597B510E3F03}" },
                { CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" },
            }
        ),
        pylon(8, 0, -1.137000, -0.321000, 4.524000,
            {
				arg = 315 ,arg_value = 0,
				use_full_connector_position = true,
			},
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" , arg_value = 0.3}, --R-73
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" }, --R-27R
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" }, --R-27T
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" }, --R-27ER
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" }, --R-27ET
                BD3("B-8M1 - 20 S-8OFP2"),--B-8M1 - 20 S-8OFP2
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"), --FAB-250
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"), --FAB-500 M62
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"), --BetAB-500
                BD3("{BD289E34-DF84-4C5E-9220-4B14C346E79D}"), --BetAB-500ShP
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"), --RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),				-- RBK-250-275 AO-1SCh
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"), --RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"), --RBK-500 PTAB-1M
				BD3("{RBK_500U_OAB_2_5RT}"),				--RBK-500U OAB-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74884}"), --KMGU-2 - 96 AO-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74881}"), --KMGU-2 - 96 PTAB-2.5KO
                BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"), --SAB-100
                BD3("{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"), --B-8M1 - 20 S-8KOM
                BD3("{FC56DF80-9B09-44C5-8976-DCFAFF219062}"), --B-13L - 5 S-13 OF
                BD3("{A0648264-4BC0-4EE8-A543-D119F6BA4257}"), --S-25 OFM
                BD3("{3DFB7320-AB0E-11d7-9897-000476191836}"), --B-8M1 - 20 S-8TsM
				MBD("{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"),--MER*6 FAB-100
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
                 { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{HVARx2}" },
                { CLSID = "CBU87*10" },
                { CLSID = "{B0241BD2-5628-47E0-954C-A8675B7E698E}" },
                { CLSID = "MK_82*28" },
                { CLSID = "{3331E15D-A833-4639-B9E4-A61A37DC1956}" },
                { CLSID = "{BDAD04AA-4D4A-4E51-B958-180A89F963CF}" },
                { CLSID = "{5F1C54C0-0ABD-4868-A883-B52FF9FCB422}" },
                { CLSID = "{FAB-500-M54-TU}" },
                { CLSID = "{FAB-500-SL}" },
                { CLSID = "{FAB-500-TA}" },
                { CLSID = "CBU97*10" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },
                { CLSID = "{26D2AF37-B0DF-4AB6-9D61-A150FF58A37B}" },
                { CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },
        { CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{639DB5DD-CB7E-4E42-AC75-2112BC397B97}" }, 
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{0855A3A1-FA50-4C89-BDBB-5D5360ABA071}" }, 
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                loadout_R77,
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
                { CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{C0FF4842-FBAC-11d5-9190-00A0249B6F00}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
                { CLSID = "{RN-24}" }, 
                { CLSID = "{RN-28}" }, 
                { CLSID = "{AN-M64}" },
                { CLSID = "{26D2AF37-B0DF-4AB6-9D61-A150FF58A37B}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" }, -- GBU-10
                { CLSID = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}" },
        { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
        { CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}" },
        { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
        { CLSID = "{0D945D78-542C-4E9B-9A17-9B5008CC8D39}" },
                { CLSID = "{FAB-500-M54}" },
        { CLSID = "{MER-5E_MK82x5}" },
        { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
        { CLSID = "{027563C9-D87E-4A85-B317-597B510E3F03}" },
                { CLSID = "B-8M1 - 20 S-8OFP2" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" }, -- S-8TsM
            }
        ),
        pylon(9, 0, -2.535000, -0.165000, 6.168000,
            {
				arg = 316 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" }, --R-73
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
                   { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{3331E15D-A833-4639-B9E4-A61A37DC1956}" },
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{16602053-4A12-40A2-B214-AB60D481B20E}" },
                { CLSID = "{HVARx2}" },
                { CLSID = "MK_82*28" },
                { CLSID = "{FAB-500-M54-TU}" },
                { CLSID = "{FAB-500-SL}" },
                { CLSID = "{FAB-500-TA}" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "CBU97*10" },
                { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },
                { CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },
        { CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{0855A3A1-FA50-4C89-BDBB-5D5360ABA071}" }, 
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                loadout_R77,
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
                { CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
                { CLSID = "{RN-24}" }, 
                { CLSID = "{RN-28}" },
        { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
        { CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}" },
        { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
        { CLSID = "{0D945D78-542C-4E9B-9A17-9B5008CC8D39}" },
        { CLSID = "{MER-5E_MK82x5}" },
        { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
        { CLSID = "{027563C9-D87E-4A85-B317-597B510E3F03}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" }, -- GBU-10
                { CLSID = "{AN-M64}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{FAB-500-M54}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}" }, 
                { CLSID = "B-8M1 - 20 S-8OFP2" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" }, -- S-8TsM
            }
        ),
        pylon(10, 0, -1.943000, 0.173000, 7.280000,
            {
				arg = 317 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" }, --R-73		
				{ CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}" , arg = 317 ,arg_value = 1, required = {{station = 1,loadout = {"{44EE8698-89F9-48EE-AF36-5FD31896A82F}"}}}},--Sorbciya
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
                 { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{3331E15D-A833-4639-B9E4-A61A37DC1956}" },
                { CLSID = "LAU-105_2*CATM-9M" },
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{16602053-4A12-40A2-B214-AB60D481B20E}" },
                { CLSID = "{HVARx2}" },
                { CLSID = "{GAR-8}" },
                { CLSID = "{FAB-500-M54-TU}" },
                { CLSID = "{FAB-500-SL}" },
                { CLSID = "{FAB-500-TA}" },
                { CLSID = "CBU97*10" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },
                { CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },
        { CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                loadout_R77,
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
                { CLSID = "{RN-24}" }, 
                { CLSID = "{RN-28}" }, 
                { CLSID = "{AN-M64}" },
        { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
        { CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}" },
        { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
        { CLSID = "{0D945D78-542C-4E9B-9A17-9B5008CC8D39}" },
        { CLSID = "{MER-5E_MK82x5}" },
        { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
        { CLSID = "{027563C9-D87E-4A85-B317-597B510E3F03}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{FAB-500-M54}" },
            }
        ),
    },
    {
        aircraft_task(CAP),
        aircraft_task(Intercept),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(AFAC),
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
		aircraft_task(AntishipStrike),
    },
	aircraft_task(CAP)
);
