function output = echo_gen(input, fs, delay, amp)
    
    num = round(delay*fs);          % Finding the number of samples we have to affect.
    [rows,~] = size(input);
    
    temp = zeros(num,2);        % Use this for sterio sound i.e. if cols= 2
    %temp = zeroes(num,1);      % Use this for mono sound  i.e. if cols= 1
    output = [input;temp];                    % output is variable size due to echo effect.
    
    echo = zeros(rows+num,2);
    % echo = zeros(rows+num,1);
   
    for i = 1:1:rows
        for j=1:1:num
            echo(i+j,1) = echo(i+j,1) + amp*input(i,1);
            echo(i+j,2) = echo(i+j,2) + amp*input(i,2); % Comment this if mono sound is being used.
        end
    end
    
    echo = echo + output;
    max_value = max(abs(echo));
    
    output = echo./max_value;
    
end
