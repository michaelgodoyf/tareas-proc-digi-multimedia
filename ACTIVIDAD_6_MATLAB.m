% Leer el archivo de audio
[senal, tasa_muestreo] = audioread("Exercise2.7_adultmale_b_d2 (2).wav");

% Mostrar la tasa de muestreo
tasa_muestreo

% Crear un efecto de reverberación con un pre-delay de 0.0 y una mezcla Wet/Dry de 1
reverberacion = reverberator("PreDelay", 0.0, "WetDryMix", 1);

% Aplicar el efecto de reverberación a la señal de entrada
senal_con_reverberacion = reverberacion(senal);

% Pausa para la duración de la señal original
pausa_duracion = length(senal) / tasa_muestreo;
pause(pausa_duracion);

% Reproducir la señal con reverberación
sound(senal_con_reverberacion, tasa_muestreo);

% Visualizar las señales original y con reverberación
figure;
subplot(1,2,1);
plot(senal);
title("Señal original");

subplot(1,2,2);
plot(senal_con_reverberacion);
title("Señal con reverberación");
