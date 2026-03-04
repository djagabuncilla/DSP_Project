# QPSKvsBPSK

## 📁 Структура проекта
```
project/
├── DVB_S2_CHANNEL/
│   ├── createModeldx.m 
│   ├── dvb_s2_channel.mlx
│   └── dvb_s2_channel.slx
├── QPSKvsBPSK/
│   ├── dsp_model.slx
│   ├── dsp_script.mlx
│   └── Result_comparing.mat
├── .gitignore
└── README.md
```
### Применение (для dsp_model.slx)
```matlab
N = 1000000 % настройка количества битов, подающихся на модулятор 
SNR_range = [-10 10] % выбор диапазона SNR для исследования
SNR = SNR_range(1):1:SNR_range(2);
Ts = 1e-6 % период дискретизации (особо ни на что не влияет)
StopTime = N*Ts % Время симуляции
t = (0:N-1)' * Ts; 
bitsIn = randi([0 1], N, 1);
txData = [t, bitsIn];
```

## Важно!
Так как запуск каждой итерации модели - это очень долго, я сделал 
готовые измерения BER от -25 дБ до 25 дБ при N = 10e7. Для того, чтобы
отобразить только готовый график, подгрузите эти измерения с помощью файла
Result_comparing.mat, а затем запустите последнюю секцию скрипта.

## Важно!!!
Содержимое папки DVB_S2_CHANNEL ещё не готово, можно не запускать.



