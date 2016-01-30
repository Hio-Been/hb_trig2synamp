function prlhandle = hb_getprlhandler(portn)
%% [hb_getprlhandler] Usage example
% 
% >> [prlhandle] = hb_getprlhandler('LPT1');
% >> hb_trig2syn(1); % stimulus type 1
% 
% Written by Hio-Been Han, Center for Neuroscience,
% Korea Institute of Science and Technology (hiobeen@kist.re.kr)
% 
% Tested on
%   .. Neuroscan ACQUIRE 4.5.1 (2011), 
%   .. MATLAB 7.14.0.739 (R2012a)
%   .. Data Acquisition Toolbox 3.1 (R2012a)
% 
% Version 1.0.0. 2016-01-30.

if nargin < 1
    portn = 'LPT1';
end
prlhandle = digitalio('parallel', portn);
addline(prlhandle, [7:-1:0, 16:-1:13], 'out');
% disp(['Parallel port connected. Try hb_trig2syn(1) to make sure the connection'])

return
