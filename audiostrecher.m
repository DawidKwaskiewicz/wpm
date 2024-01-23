function [shiftedaudio, newfs]= audiostrecher(sourcewpm, targetwpm, sourceaudio, fs)
%sourcewpm - słowa na minutę nagrania bazowego
%targetwpm - słowa na minutę nagrania docelowego
%sourceaudio - źródłowy plik audio
%fs - częstotliwość próbkowania pliku źródłowego

how = targetwpm / sourcewpm;
semitones = 12*log2(how);
shiftedaudio = shiftPitch(sourceaudio,-semitones);
newfs = fs * (2.^(semitones/12));
newfs = round(newfs);

