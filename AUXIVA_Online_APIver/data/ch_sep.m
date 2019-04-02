clc;
clear all;

filelist = dir;
filelist = filelist(6:end);
filenum = length(filelist);

for i = 1:filenum
    [x, fs] = audioread(filelist(i).name);
    s_name = strtok(filelist(i).name, '.');
    ch1 = x(:,1);
    ch2 = x(:,2);
    audiowrite(['./ch_sep_data/',s_name,'_ch1.wav'],ch1,fs);
    audiowrite(['./ch_sep_data/',s_name,'_ch2.wav'],ch2,fs);
end