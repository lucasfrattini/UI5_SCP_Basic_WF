{
	"contents": {
		"67bfc7c2-65a3-4c13-aef7-0726459daf4d": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "wfempleados",
			"subject": "WFEmpleados",
			"name": "WFEmpleados",
			"lastIds": "bf07f8b2-1d67-4155-a7ef-a2cff0fd07d1",
			"events": {
				"6dba225e-1741-4cd4-a62d-2af7cadf00f4": {
					"name": "StartEvent1"
				},
				"f3e9fe88-07b5-43db-8361-a581cfc3be22": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"0bd1fd68-2b89-4da0-b4b1-35d45dabf7ef": {
					"name": "Aprobar"
				},
				"c17fb63c-61ef-46f4-a807-8e7436522ead": {
					"name": "DesCrearEmp"
				},
				"c51fb4b9-6345-4865-b366-0951783d7347": {
					"name": "ServiceTask4"
				},
				"734b1687-ed2b-4564-b93c-a2204f74a071": {
					"name": "ScriptTask3"
				},
				"e7d18af9-6321-400a-a857-ba508ff98f48": {
					"name": "defineUserTask"
				}
			},
			"sequenceFlows": {
				"17904643-74c4-47e6-a9e8-f96222f164b8": {
					"name": "SequenceFlow1"
				},
				"30cae595-713c-4005-a68b-91981a3906fe": {
					"name": "SequenceFlow14"
				},
				"69b7f3b9-8a52-49cb-be46-ca5ab8c1da0d": {
					"name": "approved"
				},
				"24f2bcc7-be9a-41a7-85ec-605108fa7543": {
					"name": "SequenceFlow17"
				},
				"98aecb9c-8311-466d-8d3e-1293ce1b7a1e": {
					"name": "rejected"
				},
				"b6ff5cdc-083e-4055-9a84-4ca306e7da0a": {
					"name": "SequenceFlow19"
				},
				"3797fbc5-44dc-42dd-b1bc-2c43bb0cdee6": {
					"name": "SequenceFlow20"
				}
			},
			"diagrams": {
				"bc129b40-9c50-45e4-b3b5-3b6aad4e54af": {}
			}
		},
		"6dba225e-1741-4cd4-a62d-2af7cadf00f4": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"f3e9fe88-07b5-43db-8361-a581cfc3be22": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"0bd1fd68-2b89-4da0-b4b1-35d45dabf7ef": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Aprobar Emp",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/bpmformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.userTask}",
			"formReference": "/forms/WFEmpleados/AprobarEmpleado.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "aprobarempleado"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "Aprobar"
		},
		"c17fb63c-61ef-46f4-a807-8e7436522ead": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "DesCrearEmp",
			"default": "69b7f3b9-8a52-49cb-be46-ca5ab8c1da0d"
		},
		"c51fb4b9-6345-4865-b366-0951783d7347": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Everis_Lab_Nova",
			"path": "/sap/opu/odata/sap/ZLFL_ODATA_SRV/ZCAP_SEATSet?",
			"httpMethod": "POST",
			"xsrfPath": "/sap/opu/odata/sap/ZLFL_ODATA_SRV/ZCAP_SEATSet?$format=json",
			"requestVariable": "${context.ZCAP_SEAT.input}",
			"responseVariable": "${context.ZCAP_SEAT.output}",
			"id": "servicetask4",
			"name": "ServiceTask4"
		},
		"734b1687-ed2b-4564-b93c-a2204f74a071": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFEmpleados/convert.js",
			"id": "scripttask3",
			"name": "ScriptTask3"
		},
		"e7d18af9-6321-400a-a857-ba508ff98f48": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFEmpleados/userTask.js",
			"id": "scripttask4",
			"name": "defineUserTask"
		},
		"17904643-74c4-47e6-a9e8-f96222f164b8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "6dba225e-1741-4cd4-a62d-2af7cadf00f4",
			"targetRef": "e7d18af9-6321-400a-a857-ba508ff98f48"
		},
		"30cae595-713c-4005-a68b-91981a3906fe": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "0bd1fd68-2b89-4da0-b4b1-35d45dabf7ef",
			"targetRef": "c17fb63c-61ef-46f4-a807-8e7436522ead"
		},
		"69b7f3b9-8a52-49cb-be46-ca5ab8c1da0d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "approved",
			"sourceRef": "c17fb63c-61ef-46f4-a807-8e7436522ead",
			"targetRef": "734b1687-ed2b-4564-b93c-a2204f74a071"
		},
		"24f2bcc7-be9a-41a7-85ec-605108fa7543": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "c51fb4b9-6345-4865-b366-0951783d7347",
			"targetRef": "f3e9fe88-07b5-43db-8361-a581cfc3be22"
		},
		"98aecb9c-8311-466d-8d3e-1293ce1b7a1e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.ZCAP_SEAT.Rejected == 'X'}",
			"id": "sequenceflow18",
			"name": "rejected",
			"sourceRef": "c17fb63c-61ef-46f4-a807-8e7436522ead",
			"targetRef": "f3e9fe88-07b5-43db-8361-a581cfc3be22"
		},
		"b6ff5cdc-083e-4055-9a84-4ca306e7da0a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "734b1687-ed2b-4564-b93c-a2204f74a071",
			"targetRef": "c51fb4b9-6345-4865-b366-0951783d7347"
		},
		"3797fbc5-44dc-42dd-b1bc-2c43bb0cdee6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "e7d18af9-6321-400a-a857-ba508ff98f48",
			"targetRef": "0bd1fd68-2b89-4da0-b4b1-35d45dabf7ef"
		},
		"bc129b40-9c50-45e4-b3b5-3b6aad4e54af": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"3237737d-cc41-47c2-abbf-411a02d1f2e1": {},
				"da5635fa-c151-4f26-b264-c38b1d400382": {},
				"402626b8-da12-41fd-a0ef-35a720312962": {},
				"1fb05812-b532-4e1b-b460-1ede93720176": {},
				"38cf15c7-e039-4562-9751-d98854cc77ba": {},
				"71c121b2-f928-4ceb-aa14-543f387ffdc4": {},
				"2d16a71e-a1a7-4347-b938-205adf59f946": {},
				"947ff062-26ce-4da7-af32-6d2ce38e2a29": {},
				"ab3944bd-9e78-48b7-a857-fd2976915e93": {},
				"e1d24303-76d6-4a27-a6f4-8533edcf1cf8": {},
				"6f2f55dc-cc10-4f8f-b2c1-642a667ba119": {},
				"361d6dc7-30c3-4b27-b0c3-76b21c2e7275": {},
				"84d2eaef-acfc-46fa-a51b-3f40dcef00eb": {},
				"b09370b7-2816-471b-94a4-f0f82c0ad505": {}
			}
		},
		"3237737d-cc41-47c2-abbf-411a02d1f2e1": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 43.999999701976776,
			"width": 32,
			"height": 32,
			"object": "6dba225e-1741-4cd4-a62d-2af7cadf00f4"
		},
		"da5635fa-c151-4f26-b264-c38b1d400382": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 825.9999976158142,
			"y": 42.499999701976776,
			"width": 35,
			"height": 35,
			"object": "f3e9fe88-07b5-43db-8361-a581cfc3be22"
		},
		"402626b8-da12-41fd-a0ef-35a720312962": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,59.999999701976776 94,59.999999701976776",
			"sourceSymbol": "3237737d-cc41-47c2-abbf-411a02d1f2e1",
			"targetSymbol": "84d2eaef-acfc-46fa-a51b-3f40dcef00eb",
			"object": "17904643-74c4-47e6-a9e8-f96222f164b8"
		},
		"1fb05812-b532-4e1b-b460-1ede93720176": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 244,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "0bd1fd68-2b89-4da0-b4b1-35d45dabf7ef"
		},
		"38cf15c7-e039-4562-9751-d98854cc77ba": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 394,
			"y": 38.999999701976776,
			"object": "c17fb63c-61ef-46f4-a807-8e7436522ead"
		},
		"71c121b2-f928-4ceb-aa14-543f387ffdc4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,59.999999701976776 394,59.999999701976776",
			"sourceSymbol": "1fb05812-b532-4e1b-b460-1ede93720176",
			"targetSymbol": "38cf15c7-e039-4562-9751-d98854cc77ba",
			"object": "30cae595-713c-4005-a68b-91981a3906fe"
		},
		"2d16a71e-a1a7-4347-b938-205adf59f946": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 655.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "c51fb4b9-6345-4865-b366-0951783d7347"
		},
		"947ff062-26ce-4da7-af32-6d2ce38e2a29": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "436,59.999999701976776 470.99999940395355,59.999999701976776 470.99999940395355,42 505.9999988079071,42",
			"sourceSymbol": "38cf15c7-e039-4562-9751-d98854cc77ba",
			"targetSymbol": "6f2f55dc-cc10-4f8f-b2c1-642a667ba119",
			"object": "69b7f3b9-8a52-49cb-be46-ca5ab8c1da0d"
		},
		"ab3944bd-9e78-48b7-a857-fd2976915e93": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "755.9999988079071,42 790.9999982118607,42 790.9999982118607,59.999999701976776 825.9999976158142,59.999999701976776",
			"sourceSymbol": "2d16a71e-a1a7-4347-b938-205adf59f946",
			"targetSymbol": "da5635fa-c151-4f26-b264-c38b1d400382",
			"object": "24f2bcc7-be9a-41a7-85ec-605108fa7543"
		},
		"e1d24303-76d6-4a27-a6f4-8533edcf1cf8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "436,59.999999701976776 470.99999940395355,59.999999701976776 470.99999940395355,106.99999940395355 790.9999982118607,106.99999940395355 790.9999982118607,59.999999701976776 825.9999976158142,59.999999701976776",
			"sourceSymbol": "38cf15c7-e039-4562-9751-d98854cc77ba",
			"targetSymbol": "da5635fa-c151-4f26-b264-c38b1d400382",
			"object": "98aecb9c-8311-466d-8d3e-1293ce1b7a1e"
		},
		"6f2f55dc-cc10-4f8f-b2c1-642a667ba119": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 505.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "734b1687-ed2b-4564-b93c-a2204f74a071"
		},
		"361d6dc7-30c3-4b27-b0c3-76b21c2e7275": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "605.9999988079071,42 655.9999988079071,42",
			"sourceSymbol": "6f2f55dc-cc10-4f8f-b2c1-642a667ba119",
			"targetSymbol": "2d16a71e-a1a7-4347-b938-205adf59f946",
			"object": "b6ff5cdc-083e-4055-9a84-4ca306e7da0a"
		},
		"84d2eaef-acfc-46fa-a51b-3f40dcef00eb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 30,
			"width": 100,
			"height": 60,
			"object": "e7d18af9-6321-400a-a857-ba508ff98f48"
		},
		"b09370b7-2816-471b-94a4-f0f82c0ad505": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,59.999999701976776 244,59.999999701976776",
			"sourceSymbol": "84d2eaef-acfc-46fa-a51b-3f40dcef00eb",
			"targetSymbol": "1fb05812-b532-4e1b-b460-1ede93720176",
			"object": "3797fbc5-44dc-42dd-b1bc-2c43bb0cdee6"
		},
		"bf07f8b2-1d67-4155-a7ef-a2cff0fd07d1": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"hubapireference": 1,
			"sequenceflow": 20,
			"startevent": 1,
			"endevent": 1,
			"usertask": 3,
			"servicetask": 4,
			"scripttask": 4,
			"exclusivegateway": 2
		}
	}
}