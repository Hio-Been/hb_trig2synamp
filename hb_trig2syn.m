function hb_trig2syn(prlhandle,stimType)
if stimType < 128
putvalue(prlhandle, [0 0 0 0 0 0 0 0 0 1 1 1]);  
putvalue(prlhandle, [0 hb_num2bytebin(stimType) 1 1 1]); 
else
putvalue(prlhandle, [0 0 0 0 0 0 0 0 0 0 0 1]);  
putvalue(prlhandle, [0 hb_num2bytebin(stimType) 0 0 0]);
end;
disp(['trigger signal for [' num2str(stimType) '] successfully sent to synamps'])

%% to boost up of matlab function [dec2binvec.m]
function bytebin = hb_num2bytebin(num)
    dimension = 8; % maximum input 'num' < 256
    [~,e]=log2(num);
    bytebin = logical(str2num([fliplr( char(rem(floor(num*pow2(1-max(dimension,e):0)),2)+'0') );...
        blanks(length( char(rem(floor(num*pow2(1-max(dimension,e):0)),2)+'0') ))]')');
return
    
    