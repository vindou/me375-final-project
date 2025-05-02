classdef ir_sensor

    methods(Static)

        % Following properties of 'maskInitContext' are available to use:
        %  - BlockHandle 
        %  - MaskObject 
        %  - MaskWorkspace: Use get/set APIs to work with mask workspace.
        function MaskInitialization(maskInitContext)
            % Get the mask object of the current block
            maskObj = Simulink.Mask.get(gcb);
            
            % Set the default value of the checkbox to 'off'
            set_param(gcb, 'CalibValsEnabled', 'off');
            
            % List of edit fields to disable by default
            editFields = {'Gain4', 'Gain5', 'Gain6', 'Gain7'};
            
            % Loop through each edit field and set its 'Enabled' property to 'off'
            for i = 1:length(editFields)
                param = maskObj.getParameter(editFields{i});
                param.Enabled = 'off';
            end
        end

        % Following properties of 'maskInitContext' are available to use:
        %  - BlockHandle 
        %  - MaskObject 
        %  - MaskWorkspace: Use get/set APIs to work with mask workspace.
        

        % Use the code browser on the left to add the callbacks.



        

        function CalibValsEnabled(callbackContext)
            calibValsEnabled = get_param(gcb, 'CalibValsEnabled');

            maskObj = Simulink.Mask.get(gcb);

            % List of edit fields to enable/disable
            editFields = {'Gain4', 'Gain5', 'Gain6', 'Gain7'};

            % Loop through each edit field and set its 'Enable' property
            for i = 1:length(editFields)
                param = maskObj.getParameter(editFields{i});
                if strcmp(calibValsEnabled, 'on')
                    param.Enabled = 'on';
                else
                    param.Enabled = 'off';
                end
            end

        end

    end
end