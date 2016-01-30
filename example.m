%% if prlhandle doesn't exist, create it
try 
    prlhandle;
catch
    portAddress = 'LPT1';
    prlhandle = hb_getprlhandler('LPT1');
end


%% send trigger signal
for stimtype = 1:5 % stimtype should be lower than 256
    hb_trig2syn(prlhandle,stimtype);
    pause(0.5);
end

%% show info message
eval(sprintf('help hb_getprlhandler'))
