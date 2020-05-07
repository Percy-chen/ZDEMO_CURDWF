{
	"contents": {
		"44776af7-b295-4ed0-af1e-6a05098ab0e5": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "workflow_curd",
			"subject": "员工信息审批",
			"name": "workflow_curd",
			"lastIds": "5bc7652b-63e2-4bf4-bc02-ae566321593b",
			"events": {
				"d4da81e2-4f3e-4972-9d97-fada56234ff5": {
					"name": "流程开始"
				},
				"22fcf19c-56af-473d-be6d-07f0820d991c": {
					"name": "流程结束"
				}
			},
			"activities": {
				"fbb9a6b7-e523-4be3-8398-9f5d069fe415": {
					"name": "员工信息审批"
				},
				"bc4b64ef-2410-4a8a-ac49-59381fee3f5b": {
					"name": "创建员工信息"
				},
				"881d7db3-c318-4304-ab95-f50a97e5c31b": {
					"name": "is Approval?"
				},
				"56e57975-395c-4e05-8e32-d36df9b99176": {
					"name": "员工信息数据整理"
				}
			},
			"sequenceFlows": {
				"fc9bf6ae-a7c6-42d8-a5a9-39211527da5e": {
					"name": "SequenceFlow1"
				},
				"aac40a8b-af41-479c-8f0f-706b45f88aa7": {
					"name": "SequenceFlow2"
				},
				"a808d7ea-e91c-4eec-839f-4dcad7104340": {
					"name": "SequenceFlow3"
				},
				"5b385b5d-f010-4c14-be39-ad9f21c93fcd": {
					"name": "Yes"
				},
				"899385b7-2082-425f-a3a8-40d6c601bdc3": {
					"name": "No"
				},
				"3c3e1938-2960-42fe-9811-23cd55aaaab0": {
					"name": "SequenceFlow7"
				}
			},
			"diagrams": {
				"69f5d9ae-a019-480f-820c-dd7e609e573e": {}
			}
		},
		"d4da81e2-4f3e-4972-9d97-fada56234ff5": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "流程开始"
		},
		"22fcf19c-56af-473d-be6d-07f0820d991c": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "流程结束"
		},
		"fbb9a6b7-e523-4be3-8398-9f5d069fe415": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "员工信息审批",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/zdemocurdwf/CURDAPPROVAL/webapp/CURDAPPROVAL",
			"recipientUsers": "S0014869766",
			"id": "usertask1",
			"name": "员工信息审批"
		},
		"bc4b64ef-2410-4a8a-ac49-59381fee3f5b": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BP1",
			"path": "/sap/opu/odata/sap/ZZP_TR19_3001_SRV/HeaderSet",
			"httpMethod": "POST",
			"xsrfPath": "/sap/opu/odata/sap/ZZP_TR19_3001_SRV/HeaderSet",
			"requestVariable": "${context.createdata}",
			"responseVariable": "${context.Response}",
			"id": "servicetask1",
			"name": "创建员工信息"
		},
		"881d7db3-c318-4304-ab95-f50a97e5c31b": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "is Approval?",
			"default": "5b385b5d-f010-4c14-be39-ad9f21c93fcd"
		},
		"56e57975-395c-4e05-8e32-d36df9b99176": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/workflow_curd/dealdata.js",
			"id": "scripttask1",
			"name": "员工信息数据整理"
		},
		"fc9bf6ae-a7c6-42d8-a5a9-39211527da5e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "d4da81e2-4f3e-4972-9d97-fada56234ff5",
			"targetRef": "fbb9a6b7-e523-4be3-8398-9f5d069fe415"
		},
		"aac40a8b-af41-479c-8f0f-706b45f88aa7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "fbb9a6b7-e523-4be3-8398-9f5d069fe415",
			"targetRef": "881d7db3-c318-4304-ab95-f50a97e5c31b"
		},
		"a808d7ea-e91c-4eec-839f-4dcad7104340": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "bc4b64ef-2410-4a8a-ac49-59381fee3f5b",
			"targetRef": "22fcf19c-56af-473d-be6d-07f0820d991c"
		},
		"5b385b5d-f010-4c14-be39-ad9f21c93fcd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "Yes",
			"sourceRef": "881d7db3-c318-4304-ab95-f50a97e5c31b",
			"targetRef": "56e57975-395c-4e05-8e32-d36df9b99176"
		},
		"899385b7-2082-425f-a3a8-40d6c601bdc3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved==false}",
			"id": "sequenceflow5",
			"name": "No",
			"sourceRef": "881d7db3-c318-4304-ab95-f50a97e5c31b",
			"targetRef": "22fcf19c-56af-473d-be6d-07f0820d991c"
		},
		"3c3e1938-2960-42fe-9811-23cd55aaaab0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "56e57975-395c-4e05-8e32-d36df9b99176",
			"targetRef": "bc4b64ef-2410-4a8a-ac49-59381fee3f5b"
		},
		"69f5d9ae-a019-480f-820c-dd7e609e573e": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"8823318d-fabf-4453-b81c-7e549404194e": {},
				"6805d4b8-ede0-4090-b932-d592b183b5d8": {},
				"52142943-02df-488b-a7ec-7834fe7e1e3e": {},
				"2e862456-8b2c-4154-a0bb-b5afd425f7b2": {},
				"a37601e7-79a1-4fd7-bb3f-cba856ab4ab1": {},
				"5865ef04-45e5-40ca-ae20-34c366cc0da9": {},
				"3579546e-bdd6-4890-ab6b-e000e7efdcbc": {},
				"4c6973b4-3f54-4c99-b10b-c346bad58413": {},
				"7355a1b8-3429-40d4-8050-5e76b95bfc47": {},
				"2c7c5a39-c60a-4fee-a9a1-2fb750c471f1": {},
				"5256de6c-675a-4713-a9a0-329df8603c03": {},
				"d5525ea1-a80c-4b84-9008-b4a4ad4b51a8": {}
			}
		},
		"8823318d-fabf-4453-b81c-7e549404194e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 43.999999701976776,
			"width": 32,
			"height": 32,
			"object": "d4da81e2-4f3e-4972-9d97-fada56234ff5"
		},
		"6805d4b8-ede0-4090-b932-d592b183b5d8": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 675.9999976158142,
			"y": 42.499999701976776,
			"width": 35,
			"height": 35,
			"object": "22fcf19c-56af-473d-be6d-07f0820d991c"
		},
		"52142943-02df-488b-a7ec-7834fe7e1e3e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,59.999999701976776 94,59.999999701976776",
			"sourceSymbol": "8823318d-fabf-4453-b81c-7e549404194e",
			"targetSymbol": "2e862456-8b2c-4154-a0bb-b5afd425f7b2",
			"object": "fc9bf6ae-a7c6-42d8-a5a9-39211527da5e"
		},
		"2e862456-8b2c-4154-a0bb-b5afd425f7b2": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 94,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "fbb9a6b7-e523-4be3-8398-9f5d069fe415"
		},
		"a37601e7-79a1-4fd7-bb3f-cba856ab4ab1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,59.999999701976776 244,59.999999701976776",
			"sourceSymbol": "2e862456-8b2c-4154-a0bb-b5afd425f7b2",
			"targetSymbol": "4c6973b4-3f54-4c99-b10b-c346bad58413",
			"object": "aac40a8b-af41-479c-8f0f-706b45f88aa7"
		},
		"5865ef04-45e5-40ca-ae20-34c366cc0da9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 505.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "bc4b64ef-2410-4a8a-ac49-59381fee3f5b"
		},
		"3579546e-bdd6-4890-ab6b-e000e7efdcbc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "605.9999988079071,42 640.9999982118607,42 640.9999982118607,59.999999701976776 675.9999976158142,59.999999701976776",
			"sourceSymbol": "5865ef04-45e5-40ca-ae20-34c366cc0da9",
			"targetSymbol": "6805d4b8-ede0-4090-b932-d592b183b5d8",
			"object": "a808d7ea-e91c-4eec-839f-4dcad7104340"
		},
		"4c6973b4-3f54-4c99-b10b-c346bad58413": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 244,
			"y": 38.999999701976776,
			"object": "881d7db3-c318-4304-ab95-f50a97e5c31b"
		},
		"7355a1b8-3429-40d4-8050-5e76b95bfc47": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "286,59.999999701976776 320.99999940395355,59.999999701976776 320.99999940395355,42 355.9999988079071,42",
			"sourceSymbol": "4c6973b4-3f54-4c99-b10b-c346bad58413",
			"targetSymbol": "5256de6c-675a-4713-a9a0-329df8603c03",
			"object": "5b385b5d-f010-4c14-be39-ad9f21c93fcd"
		},
		"2c7c5a39-c60a-4fee-a9a1-2fb750c471f1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "286,59.999999701976776 320.99999940395355,59.999999701976776 320.99999940395355,106.99999940395355 640.9999982118607,106.99999940395355 640.9999982118607,59.999999701976776 675.9999976158142,59.999999701976776",
			"sourceSymbol": "4c6973b4-3f54-4c99-b10b-c346bad58413",
			"targetSymbol": "6805d4b8-ede0-4090-b932-d592b183b5d8",
			"object": "899385b7-2082-425f-a3a8-40d6c601bdc3"
		},
		"5256de6c-675a-4713-a9a0-329df8603c03": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 355.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "56e57975-395c-4e05-8e32-d36df9b99176"
		},
		"d5525ea1-a80c-4b84-9008-b4a4ad4b51a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "455.9999988079071,42 505.9999988079071,42",
			"sourceSymbol": "5256de6c-675a-4713-a9a0-329df8603c03",
			"targetSymbol": "5865ef04-45e5-40ca-ae20-34c366cc0da9",
			"object": "3c3e1938-2960-42fe-9811-23cd55aaaab0"
		},
		"5bc7652b-63e2-4bf4-bc02-ae566321593b": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 7,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 1,
			"exclusivegateway": 1
		}
	}
}