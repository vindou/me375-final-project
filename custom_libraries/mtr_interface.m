classdef mtr_interface

    methods(Static)

        % Use the code browser on the left to add the callbacks.


        function enable_override(callbackContext)
            masterCheckboxValue = get_param(gcb, 'enable_override');
            if strcmp(masterCheckboxValue, 'on')
                % Set the underlying parameters to "checked" and "a"
                set_param(gcb, 'Operator', 'OR');
            else
                % Set the underlying parameters to "unchecked" and "b"
                set_param(gcb, 'Operator', 'AND');
            end
        end
    end
end