
TYPE
	MTBasicsDT1InternalType : 	STRUCT  (*Internal variables of function block MTBasicsDT1.*)
		CycleTime : REAL; (*Task cycle time. Unit: [�s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		Gain : REAL; (*Data for internal use.*)
		TimeConstant : REAL; (*Data for internal use.*)
		Numerator : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		Denominator : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		BVector : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		AVector : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		XVector : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		PresetOK : BOOL; (*Data for internal use.*)
		PresetCoefficients : LREAL; (*Data for internal use.*)
		InOld : REAL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		EnableDone : BOOL; (*Data for internal use.*)
		DisabledBusy : BOOL; (*Data for internal use.*)
		CounterOld : UDINT; (*Data for internal use.*)
		SysRefParaNew : BOOL; (*Data for internal use.*)
		SystemReference : MTTransferFcnType; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsDT2InternalType : 	STRUCT  (*Internal variables of function block MTBasicsDT2.*)
		CycleTime : REAL; (*Task cycle time. Unit: [�s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		Gain : REAL; (*Data for internal use.*)
		TimeConstant1 : REAL; (*Data for internal use.*)
		TimeConstant2 : REAL; (*Data for internal use.*)
		Numerator : ARRAY[0..2]OF LREAL; (*Data for internal use.*)
		Denominator : ARRAY[0..2]OF LREAL; (*Data for internal use.*)
		BVector : ARRAY[0..2]OF LREAL; (*Data for internal use.*)
		AVector : ARRAY[0..2]OF LREAL; (*Data for internal use.*)
		XVector : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		PresetOK : BOOL; (*Data for internal use.*)
		PresetCoefficients : LREAL; (*Data for internal use.*)
		InOld : REAL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		EnableDone : BOOL; (*Data for internal use.*)
		DisabledBusy : BOOL; (*Data for internal use.*)
		CounterOld : UDINT; (*Data for internal use.*)
		SysRefParaNew : BOOL; (*Data for internal use.*)
		SystemReference : MTTransferFcnType; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsIntegratorInternalType : 	STRUCT  (*Internal variables of function block MTBasicsIntegrator.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		Gain : REAL; (*Data for internal use.*)
		BVector : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		AVector : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		XVector : LREAL; (*Data for internal use.*)
		OutPresetValue : REAL; (*Data for internal use.*)
		SetOutOld : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		EnableDone : BOOL; (*Data for internal use.*)
		DisabledBusy : BOOL; (*Data for internal use.*)
		CounterOld : UDINT; (*Data for internal use.*)
		SysRefParaNew : BOOL; (*Data for internal use.*)
		SystemReference : MTTransferFcnType; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsLevelCtrlInternalType : 	STRUCT  (*Internal variables of function block MTBasicsLevelController.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		Parameter : MTBasicsLevelCtrlParType; (*Data for internal use.*)
		State : USINT; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsLevelCtrlParType : 	STRUCT  (*Level controller parameters.*)
		OutputValue1 : REAL; (*1st Output value.*)
		OutputValue2 : REAL; (*2nd Output value.*)
		OutputValue3 : REAL; (*3rd Output value.*)
		ThresholdLevel1 : REAL; (*Threshold level from OutputValue2 to OutputValue1.*)
		ThresholdLevel2 : REAL; (*Threshold level from OutputValue1 to OutputValue2.*)
		ThresholdLevel3 : REAL; (*Threshold level from OutputValue3 to OutputValue2.*)
		ThresholdLevel4 : REAL; (*Threshold level from OutputValue2 to OutputValue3.*)
	END_STRUCT;
	MTBasicsLimiterInternalType : 	STRUCT  (*Internal variables of function block MTBasicsLimiter.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		MaxOut : REAL; (*Data for internal use.*)
		MinOut : REAL; (*Data for internal use.*)
		MaxPosSlewRate : REAL; (*Data for internal use.*)
		MaxNegSlewRate : REAL; (*Data for internal use.*)
		Out : REAL; (*Data for internal use.*)
		OutOld : REAL; (*Data for internal use.*)
		UpperOutLimit : REAL; (*Data for internal use.*)
		LowerOutLimit : REAL; (*Data for internal use.*)
		SetOutOld : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsOscTuningInternalType : 	STRUCT  (*Internal variables of function block MTBasicsOscillationTuning.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		State : USINT; (*State of tuning.*)
		CriticalGain : REAL; (*Critical gain.*)
		OscillationPeriod : REAL; (*Period of oscillation.*)
		NumberOfOscillations : USINT; (*Number of osscilations.*)
		NumberOfPhases : USINT; (*Number of current tuning phase.*)
		MaxRelayOut : REAL; (*Lower limit for output during tuning.*)
		MinRelayOut : REAL; (*Upper limit for output during tuning.*)
		SetValue : REAL; (*Data for internal use.*)
		AverageOutValue : REAL; (*Data for internal use.*)
		MaxActValueTime : ARRAY[0..3]OF REAL; (*Data for internal use.*)
		MinActValueTime : ARRAY[0..3]OF REAL; (*Data for internal use.*)
		MaxActValue : ARRAY[0..3]OF REAL; (*Data for internal use.*)
		MinActValue : ARRAY[0..3]OF REAL; (*Data for internal use.*)
		TuningTime : REAL; (*Data for internal use.*)
		StartingActValue : REAL; (*Data for internal use.*)
		ControlError : REAL; (*Data for internal use.*)
		ActValueAverageAmplitude : REAL; (*Data for internal use.*)
		AverageActValue : REAL; (*Data for internal use.*)
		AverageMaxActValue : REAL; (*Data for internal use.*)
		AverageMinActValue : REAL; (*Data for internal use.*)
		AmplitudeRatio : REAL; (*Data for internal use.*)
		DeltaOut : REAL; (*Data for internal use.*)
		EffectiveDirection : SINT; (*Data for internal use.*)
		StartOld : BOOL; (*Data for internal use.*)
		MinOscillationAmplitude : REAL; (*Data for internal use.*)
		MinOut : REAL; (*Data for internal use.*)
		MaxOut : REAL; (*Data for internal use.*)
		TemporaryQuality : REAL; (*Data for internal use.*)
		TemporaryDerivativeTime : REAL; (*Data for internal use.*)
		TemporaryIntegrationTime : REAL; (*Data for internal use.*)
		TemporaryGain : REAL; (*Data for internal use.*)
		Update : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		AverageOutValueSum : REAL; (*Data for internal use.*)
		AverageTime : LREAL; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsPFMInternalType : 	STRUCT  (*Internal variables of function block MTBasicsPFM.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		In : REAL; (*Data for internal use.*)
		PulseWidth : REAL; (*Data for internal use.*)
		MinPause : REAL; (*Data for internal use.*)
		Area : REAL; (*Data for internal use.*)
		AreaC : REAL; (*Data for internal use.*)
		OffTime : REAL; (*Data for internal use.*)
		OnTime : REAL; (*Data for internal use.*)
		Update : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsPIDInternalType : 	STRUCT  (*Internal variables of function block MTBasicsPID.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		PIDParameters : MTPIDParametersType; (*Data for internal use.*)
		MinOut : REAL; (*Data for internal use.*)
		MaxOut : REAL; (*Data for internal use.*)
		Invert : BOOL; (*Data for internal use.*)
		ControlError : REAL; (*Data for internal use.*)
		ControlErrorOld : REAL; (*Data for internal use.*)
		Out : REAL; (*Data for internal use.*)
		HoldIntegration : MTPIDIntegrationEnum; (*Data for internal use.*)
		IntegrationPartPresetValue : REAL; (*Data for internal use.*)
		SetIntegrationPart : BOOL; (*Data for internal use.*)
		SetIntegrationPartOld : BOOL; (*Data for internal use.*)
		PID_StatusID : DINT; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		EnableDone : BOOL; (*Data for internal use.*)
		DisabledBusy : BOOL; (*Data for internal use.*)
		CounterOld : UDINT; (*Data for internal use.*)
		SysRefParaNew : BOOL; (*Data for internal use.*)
		SystemReference : MTTransferFcnType; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsPT1InternalType : 	STRUCT  (*Internal variables of function block MTBasicsPT1.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		Gain : REAL; (*Data for internal use.*)
		TimeConstant : REAL; (*Data for internal use.*)
		Numerator : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		Denominator : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		BVector : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		AVector : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		XVector : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		OutPresetValue : REAL; (*Data for internal use.*)
		PresetCoefficients : LREAL; (*Data for internal use.*)
		PresetOK : BOOL; (*Data for internal use.*)
		SetOutOld : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		EnableDone : BOOL; (*Data for internal use.*)
		DisabledBusy : BOOL; (*Data for internal use.*)
		CounterOld : UDINT; (*Data for internal use.*)
		SysRefParaNew : BOOL; (*Data for internal use.*)
		SystemReference : MTTransferFcnType; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsPT2InternalType : 	STRUCT  (*Internal variables of function block MTBasicsPT2.*)
		CycleTime : REAL; (*Task cycle time. Unit: [�s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		Gain : REAL; (*Data for internal use.*)
		TimeConstant1 : REAL; (*Data for internal use.*)
		TimeConstant2 : REAL; (*Data for internal use.*)
		Numerator : ARRAY[0..2]OF LREAL; (*Data for internal use.*)
		Denominator : ARRAY[0..2]OF LREAL; (*Data for internal use.*)
		BVector : ARRAY[0..2]OF LREAL; (*Data for internal use.*)
		AVector : ARRAY[0..2]OF LREAL; (*Data for internal use.*)
		XVector : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		OutPresetValue : REAL; (*Data for internal use.*)
		PresetCoefficients : LREAL; (*Data for internal use.*)
		PresetOK : BOOL; (*Data for internal use.*)
		SetOutOld : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		EnableDone : BOOL; (*Data for internal use.*)
		DisabledBusy : BOOL; (*Data for internal use.*)
		CounterOld : UDINT; (*Data for internal use.*)
		SysRefParaNew : BOOL; (*Data for internal use.*)
		SystemReference : MTTransferFcnType; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsPWMInternalType : 	STRUCT  (*Internal variables of function block MTBasicsPWM.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		Mode : MTBasicsPWMModeEnum; (*Data for internal use.*)
		MinPulseWidth : REAL; (*Data for internal use.*)
		Period : REAL; (*Data for internal use.*)
		In : REAL; (*Data for internal use.*)
		OnTime : REAL; (*Data for internal use.*)
		OffTime : REAL; (*Data for internal use.*)
		PeriodCounter : REAL; (*Data for internal use.*)
		OnTimeCounter : REAL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsPWMModeEnum : 
		( (*Pulse mode.*)
		mtBASICS_PULSE_BEGINNING := 0, (*Pulse at the beginning of a period.*)
		mtBASICS_PULSE_MIDDLE := 1 (*Pulse in the middle of a period.*)
		);
	MTBasicsPWMScheduleBufferPtrType : 	STRUCT  (*Buffer pointers of the PWMSchedule.*)
		In : REAL; (*Data for internal use.*)
		OnTime1 : REAL; (*Data for internal use.*)
		OnTime2 : REAL; (*Data for internal use.*)
		OffTime1 : REAL; (*Data for internal use.*)
		OffTime2 : REAL; (*Data for internal use.*)
		OnTimeCounter : REAL; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsPWMScheduleBufferType : 	STRUCT  (*Buffer parameters of the PWMSchedule.*)
		ActIndex : UINT; (*Data for internal use.*)
		ActBufferElements : UINT; (*Data for internal use.*)
		OldBufferElements : {REDUND_UNREPLICABLE} UINT; (*Data for internal use.*)
		PointerTimes : REFERENCE TO MTBasicsPWMScheduleBufferPtrType; (*Data for internal use.*)
		PointerOut : REFERENCE TO BOOL; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsPWMScheduleInternalType : 	STRUCT  (*Internal variables of function block MTBasicsPWM.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		NumberOfInputs : UINT; (*Data for internal use.*)
		Mode : MTBasicsPWMScheduleModeEnum; (*Data for internal use.*)
		MinPulseWidth : REAL; (*Data for internal use.*)
		MinPause : REAL; (*Data for internal use.*)
		Period : REAL; (*Data for internal use.*)
		FreeDutyCycle : REAL; (*Data for internal use.*)
		PeriodCounter : REAL; (*Data for internal use.*)
		Buffer : MTBasicsPWMScheduleBufferType; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : {REDUND_UNREPLICABLE} BOOL; (*Data for internal use.*)
		InhibitUpdate : BOOL; (*Data for internal use.*)
		Update : BOOL; (*Data for internal use.*)
		StatusIDUpdate : DINT; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsPWMScheduleModeEnum : 
		( (*Schedule mode.*)
		mtBASICS_SHIFT_PULSE := 0, (*Shift the puls.*)
		mtBASICS_SPLIT_PULSE := 1 (*Split the puls.*)
		);
	MTBasicsStepTuningBufElemType : 	STRUCT  (*Buffer element of MTBasicsStepTuning.*)
		TimeIndex : UDINT; (*Data for internal use.*)
		In : LREAL; (*Data for internal use.*)
		IntIn : LREAL; (*Data for internal use.*)
		IntTimeIn : LREAL; (*Data for internal use.*)
		IntTime2In : LREAL; (*Data for internal use.*)
		Int2In : LREAL; (*Data for internal use.*)
		Int3In : LREAL; (*Data for internal use.*)
		TSum : LREAL; (*Data for internal use.*)
		dTSum : LREAL; (*Data for internal use.*)
		d2TSum : LREAL; (*Data for internal use.*)
		dyACD : LREAL; (*Data for internal use.*)
		d2yACD : LREAL; (*Data for internal use.*)
		d3yACD : LREAL; (*Data for internal use.*)
		DiffIn : LREAL; (*Data for internal use.*)
		Diff2In : LREAL; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsStepTuningInternalType : 	STRUCT  (*Internal variables of function block MTBasicsStepTuning.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		ParametersValid : BOOL; (*Data for internal use.*)
		MinActValue : REAL; (*Data for internal use.*)
		MaxActValue : REAL; (*Data for internal use.*)
		MaxTuningTime : REAL; (*Data for internal use.*)
		StepHeight : REAL; (*Data for internal use.*)
		State : MTBasicsStepTuningStateEnum; (*Data for internal use.*)
		TuningTime : REAL; (*Data for internal use.*)
		Area : REAL; (*Data for internal use.*)
		StartActValue : REAL; (*Data for internal use.*)
		SumTime : REAL; (*Data for internal use.*)
		PlantGain : REAL; (*Data for internal use.*)
		LQError : REAL; (*Data for internal use.*)
		LQOutput : ARRAY[0..1]OF REAL; (*Data for internal use.*)
		LQParameterVector : ARRAY[0..2]OF REAL; (*Data for internal use.*)
		ActValueOld : REAL; (*Data for internal use.*)
		SystemSettlingTime : REAL; (*Data for internal use.*)
		SettlingIndex : UINT; (*Data for internal use.*)
		NumberOfSettlingValues : UINT; (*Data for internal use.*)
		NoiseDeadBand : REAL; (*Data for internal use.*)
		StartOld : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		Slope : REAL; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsStepTuningStateEnum : 
		( (*Tuning state.*)
		mtBASICS_STATE_READY := 1, (*The function block waits for a rising edge of Start.*)
		mtBASICS_STATE_SETTLING := 2, (*It is checked, if the system is in an idle state.*)
		mtBASICS_STATE_STEP := 3, (*The output Out is set to the value StepHeight.*)
		mtBASICS_STATE_CALCULATE_PID := 4 (*PID parameters are calculated.*)
		);
	MTBasicsTimeDelayFcnParaType : 	STRUCT  (*Internal variables for time delay function parameters.*)
		DelayCounter : UDINT; (*Data for internal use.*)
		ActBufferIndex : UDINT; (*Data for internal use.*)
		ActBufferElements : UDINT; (*Data for internal use.*)
		OldBufferElements : {REDUND_UNREPLICABLE} UDINT; (*Data for internal use.*)
		DelayTimeAct : REAL; (*Data for internal use.*)
		BufferPointer : REFERENCE TO REAL; (*Data for internal use.*)
	END_STRUCT;
	MTBasicsTimeDelayInternalType : 	STRUCT  (*Internal variables of function block MTBasicsTimeDelay.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		DelayTime : REAL; (*Data for internal use.*)
		ParametersValid : BOOL; (*Data for internal use.*)
		InitialValue : REAL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		TimeDelayFcnPara : MTBasicsTimeDelayFcnParaType; (*Data for internal use.*)
	END_STRUCT;
END_TYPE