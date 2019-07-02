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
					"name": "Crear Emp"
				},
				"734b1687-ed2b-4564-b93c-a2204f74a071": {
					"name": "ScriptTask3"
				},
				"e7d18af9-6321-400a-a857-ba508ff98f48": {
					"name": "defineUserTask"
				},
				"8b16d3fa-4503-402c-8dab-f70335b0a3db": {
					"name": "ParallelGateway2"
				},
				"e3bdeb34-f98a-4ac0-8964-659a76d3a92c": {
					"name": "NewWF"
				}
			},
			"sequenceFlows": {
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
				"3797fbc5-44dc-42dd-b1bc-2c43bb0cdee6": {
					"name": "SequenceFlow20"
				},
				"d3b0b437-e84e-4b33-80bd-7f56b17712e7": {
					"name": "SequenceFlow21"
				},
				"6156a120-7331-4f1f-a93a-5612f86401ad": {
					"name": "SequenceFlow24"
				},
				"d55617d0-8566-47bc-83c2-0ecdd2e3d9bb": {
					"name": "SequenceFlow25"
				},
				"22c367ec-323f-48a0-b974-92de29731dd0": {
					"name": "SequenceFlow26"
				},
				"a9922287-008b-46f6-9c56-371aa4419ffa": {
					"name": "SequenceFlow27"
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
			"name": "Aprobar",
			"dueDateRef": "11b94e05-261d-4d71-aa26-f920dc78a2e4"
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
			"name": "Crear Emp"
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
		"8b16d3fa-4503-402c-8dab-f70335b0a3db": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway2",
			"name": "ParallelGateway2"
		},
		"e3bdeb34-f98a-4ac0-8964-659a76d3a92c": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "bpmworkflowruntime",
			"path": "/workflow-service/rest/v1/workflow-instances",
			"httpMethod": "POST",
			"xsrfPath": "/workflow-service/rest/v1/xsrf-token",
			"requestVariable": "${context.newWF}",
			"id": "servicetask6",
			"name": "NewWF"
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
		"3797fbc5-44dc-42dd-b1bc-2c43bb0cdee6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "e7d18af9-6321-400a-a857-ba508ff98f48",
			"targetRef": "0bd1fd68-2b89-4da0-b4b1-35d45dabf7ef"
		},
		"d3b0b437-e84e-4b33-80bd-7f56b17712e7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "SequenceFlow21",
			"sourceRef": "6dba225e-1741-4cd4-a62d-2af7cadf00f4",
			"targetRef": "e7d18af9-6321-400a-a857-ba508ff98f48"
		},
		"6156a120-7331-4f1f-a93a-5612f86401ad": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "734b1687-ed2b-4564-b93c-a2204f74a071",
			"targetRef": "8b16d3fa-4503-402c-8dab-f70335b0a3db"
		},
		"d55617d0-8566-47bc-83c2-0ecdd2e3d9bb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "SequenceFlow25",
			"sourceRef": "8b16d3fa-4503-402c-8dab-f70335b0a3db",
			"targetRef": "c51fb4b9-6345-4865-b366-0951783d7347"
		},
		"22c367ec-323f-48a0-b974-92de29731dd0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "8b16d3fa-4503-402c-8dab-f70335b0a3db",
			"targetRef": "e3bdeb34-f98a-4ac0-8964-659a76d3a92c"
		},
		"a9922287-008b-46f6-9c56-371aa4419ffa": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow27",
			"name": "SequenceFlow27",
			"sourceRef": "e3bdeb34-f98a-4ac0-8964-659a76d3a92c",
			"targetRef": "f3e9fe88-07b5-43db-8361-a581cfc3be22"
		},
		"bc129b40-9c50-45e4-b3b5-3b6aad4e54af": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"3237737d-cc41-47c2-abbf-411a02d1f2e1": {},
				"da5635fa-c151-4f26-b264-c38b1d400382": {},
				"1fb05812-b532-4e1b-b460-1ede93720176": {},
				"38cf15c7-e039-4562-9751-d98854cc77ba": {},
				"71c121b2-f928-4ceb-aa14-543f387ffdc4": {},
				"2d16a71e-a1a7-4347-b938-205adf59f946": {},
				"947ff062-26ce-4da7-af32-6d2ce38e2a29": {},
				"ab3944bd-9e78-48b7-a857-fd2976915e93": {},
				"e1d24303-76d6-4a27-a6f4-8533edcf1cf8": {},
				"6f2f55dc-cc10-4f8f-b2c1-642a667ba119": {},
				"84d2eaef-acfc-46fa-a51b-3f40dcef00eb": {},
				"b09370b7-2816-471b-94a4-f0f82c0ad505": {},
				"8c4913b9-16b8-4757-870e-7d578e4a25a4": {},
				"f1a3fc2d-7eba-4f36-9066-a99954bc46dd": {},
				"70d5cb06-856c-4559-898a-107dffb16df5": {},
				"d0b46e68-6259-4532-9a1c-1a890b73ad93": {},
				"ceccbfc5-4297-4f10-9ba2-327e2b7e9f40": {},
				"e258a7fa-119a-454d-ab38-3349b7a0f955": {},
				"ceec2c3e-a175-4daf-8309-a9281028763c": {}
			}
		},
		"3237737d-cc41-47c2-abbf-411a02d1f2e1": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 98.99999970197678,
			"width": 32,
			"height": 32,
			"object": "6dba225e-1741-4cd4-a62d-2af7cadf00f4"
		},
		"da5635fa-c151-4f26-b264-c38b1d400382": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1002.9999952316284,
			"y": 97.49999970197678,
			"width": 35,
			"height": 35,
			"object": "f3e9fe88-07b5-43db-8361-a581cfc3be22"
		},
		"1fb05812-b532-4e1b-b460-1ede93720176": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 244,
			"y": 84.99999970197678,
			"width": 100,
			"height": 60,
			"object": "0bd1fd68-2b89-4da0-b4b1-35d45dabf7ef"
		},
		"38cf15c7-e039-4562-9751-d98854cc77ba": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 394,
			"y": 93.99999970197678,
			"object": "c17fb63c-61ef-46f4-a807-8e7436522ead"
		},
		"71c121b2-f928-4ceb-aa14-543f387ffdc4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,114.99999970197678 394,114.99999970197678",
			"sourceSymbol": "1fb05812-b532-4e1b-b460-1ede93720176",
			"targetSymbol": "38cf15c7-e039-4562-9751-d98854cc77ba",
			"object": "30cae595-713c-4005-a68b-91981a3906fe"
		},
		"2d16a71e-a1a7-4347-b938-205adf59f946": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 832.9999964237213,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "c51fb4b9-6345-4865-b366-0951783d7347"
		},
		"947ff062-26ce-4da7-af32-6d2ce38e2a29": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "436,114.99999970197678 470.99999940395355,114.99999970197678 470.99999940395355,97 505.9999988079071,97",
			"sourceSymbol": "38cf15c7-e039-4562-9751-d98854cc77ba",
			"targetSymbol": "6f2f55dc-cc10-4f8f-b2c1-642a667ba119",
			"object": "69b7f3b9-8a52-49cb-be46-ca5ab8c1da0d"
		},
		"ab3944bd-9e78-48b7-a857-fd2976915e93": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "932.9999964237213,42 967.9999958276749,42 967.9999958276749,114.99999970197678 1002.9999952316284,114.99999970197678",
			"sourceSymbol": "2d16a71e-a1a7-4347-b938-205adf59f946",
			"targetSymbol": "da5635fa-c151-4f26-b264-c38b1d400382",
			"object": "24f2bcc7-be9a-41a7-85ec-605108fa7543"
		},
		"e1d24303-76d6-4a27-a6f4-8533edcf1cf8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "436,114.99999970197678 470.99999940395355,114.99999970197678 470.99999940395355,161.99999940395355 640.9999982118607,161.99999940395355 640.9999982118607,152.99999940395355 752.9999970197678,152.99999940395355 752.9999970197678,216.99999940395355 967.9999958276749,216.99999940395355 967.9999958276749,114.99999970197678 1002.9999952316284,114.99999970197678",
			"sourceSymbol": "38cf15c7-e039-4562-9751-d98854cc77ba",
			"targetSymbol": "da5635fa-c151-4f26-b264-c38b1d400382",
			"object": "98aecb9c-8311-466d-8d3e-1293ce1b7a1e"
		},
		"6f2f55dc-cc10-4f8f-b2c1-642a667ba119": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 505.9999988079071,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "734b1687-ed2b-4564-b93c-a2204f74a071"
		},
		"84d2eaef-acfc-46fa-a51b-3f40dcef00eb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 84.99999970197678,
			"width": 100,
			"height": 60,
			"object": "e7d18af9-6321-400a-a857-ba508ff98f48"
		},
		"b09370b7-2816-471b-94a4-f0f82c0ad505": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,114.99999970197678 244,114.99999970197678",
			"sourceSymbol": "84d2eaef-acfc-46fa-a51b-3f40dcef00eb",
			"targetSymbol": "1fb05812-b532-4e1b-b460-1ede93720176",
			"object": "3797fbc5-44dc-42dd-b1bc-2c43bb0cdee6"
		},
		"8c4913b9-16b8-4757-870e-7d578e4a25a4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,114.99999970197678 94,114.99999970197678",
			"sourceSymbol": "3237737d-cc41-47c2-abbf-411a02d1f2e1",
			"targetSymbol": "84d2eaef-acfc-46fa-a51b-3f40dcef00eb",
			"object": "d3b0b437-e84e-4b33-80bd-7f56b17712e7"
		},
		"f1a3fc2d-7eba-4f36-9066-a99954bc46dd": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 675.9999976158142,
			"y": 76,
			"object": "8b16d3fa-4503-402c-8dab-f70335b0a3db"
		},
		"70d5cb06-856c-4559-898a-107dffb16df5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "605.9999988079071,97 675.9999976158142,97",
			"sourceSymbol": "6f2f55dc-cc10-4f8f-b2c1-642a667ba119",
			"targetSymbol": "f1a3fc2d-7eba-4f36-9066-a99954bc46dd",
			"object": "6156a120-7331-4f1f-a93a-5612f86401ad"
		},
		"d0b46e68-6259-4532-9a1c-1a890b73ad93": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "717.9999976158142,97 797.9999970197678,97 797.9999970197678,42 832.9999964237213,42",
			"sourceSymbol": "f1a3fc2d-7eba-4f36-9066-a99954bc46dd",
			"targetSymbol": "2d16a71e-a1a7-4347-b938-205adf59f946",
			"object": "d55617d0-8566-47bc-83c2-0ecdd2e3d9bb"
		},
		"ceccbfc5-4297-4f10-9ba2-327e2b7e9f40": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 832.9999964237213,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "e3bdeb34-f98a-4ac0-8964-659a76d3a92c"
		},
		"e258a7fa-119a-454d-ab38-3349b7a0f955": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "717.9999976158142,97 797.9999970197678,97 797.9999970197678,152 832.9999964237213,152",
			"sourceSymbol": "f1a3fc2d-7eba-4f36-9066-a99954bc46dd",
			"targetSymbol": "ceccbfc5-4297-4f10-9ba2-327e2b7e9f40",
			"object": "22c367ec-323f-48a0-b974-92de29731dd0"
		},
		"ceec2c3e-a175-4daf-8309-a9281028763c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "932.4999964237213,152 968.25,152 968.25,115 1020.4999952316284,114.99999970197678",
			"sourceSymbol": "ceccbfc5-4297-4f10-9ba2-327e2b7e9f40",
			"targetSymbol": "da5635fa-c151-4f26-b264-c38b1d400382",
			"object": "a9922287-008b-46f6-9c56-371aa4419ffa"
		},
		"bf07f8b2-1d67-4155-a7ef-a2cff0fd07d1": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"hubapireference": 1,
			"sequenceflow": 27,
			"startevent": 1,
			"endevent": 1,
			"usertask": 3,
			"servicetask": 6,
			"scripttask": 4,
			"exclusivegateway": 2,
			"parallelgateway": 2
		},
		"11b94e05-261d-4d71-aa26-f920dc78a2e4": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT1M",
			"id": "timereventdefinition1"
		}
	}
}