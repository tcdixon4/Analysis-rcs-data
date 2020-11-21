function [updatedGroupData] = getStimParameters(currentGroupData, priorGroupData)

%%
% For a given stimulation group (e.g. TherapyConfigGroup0), update prior
% data with information present in currentGroupData. Because all fields are
% present in the first record of a recording, everything will be initalized
% even when first input of priorGroupData is empty

%%

updatedGroupData = priorGroupData;

if isfield(currentGroupData, 'RateInHz')
    updatedGroupData.RateInHz = currentGroupData.RateInHz;
end

if isfield(currentGroupData, 'program0')
    if isfield(currentGroupData.program0,'AmplitudeInMilliamps')
        updatedGroupData.Program0_amplInMilliamps = currentGroupData.program0.AmplitudeInMilliamps;
    end
    if isfield(currentGroupData.program0,'PulseWidthInMicroseconds')
        updatedGroupData.Program0_pulseWidthInMicroseconds = currentGroupData.program0.PulseWidthInMicroseconds;
    end
end

if isfield(currentGroupData, 'program1')
    if isfield(currentGroupData.program1,'AmplitudeInMilliamps')
        updatedGroupData.Program1_amplInMilliamps = currentGroupData.program1.AmplitudeInMilliamps;
    end
    if isfield(currentGroupData.program1,'PulseWidthInMicroseconds')
        updatedGroupData.Program1_pulseWidthInMicroseconds = currentGroupData.program1.PulseWidthInMicroseconds;
    end
end

if isfield(currentGroupData, 'program2')
    if isfield(currentGroupData.program2,'AmplitudeInMilliamps')
        updatedGroupData.Program2_amplInMilliamps = currentGroupData.program2.AmplitudeInMilliamps;
    end
    if isfield(currentGroupData.program2,'PulseWidthInMicroseconds')
        updatedGroupData.Program2_pulseWidthInMicroseconds = currentGroupData.program2.PulseWidthInMicroseconds;
    end
end

if isfield(currentGroupData, 'program3')
    if isfield(currentGroupData.program3,'AmplitudeInMilliamps')
        updatedGroupData.Program3_amplInMilliamps = currentGroupData.program3.AmplitudeInMilliamps;
    end
    if isfield(currentGroupData.program3,'PulseWidthInMicroseconds')
        updatedGroupData.Program3_pulseWidthInMicroseconds = currentGroupData.program3.PulseWidthInMicroseconds;
    end
end

end