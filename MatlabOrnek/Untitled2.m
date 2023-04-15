
clear all
close all


% Örnek veri kümesi oluşturma
X = [0 0; 0 1; 1 0; 1 1]; % veri noktaları
Y = [0; 1; 1; 0]; % veri noktalarının etiketleri

% MLP parametreleri
hidden_layer_size = 4; % gizli katman boyutu
learning_rate = 0.1; % öğrenme oranı
max_epochs = 10000; % maksimum epoch sayısı

% MLP modelini eğitme
net = feedforwardnet(hidden_layer_size);
net.trainParam.lr = learning_rate;
net.trainParam.epochs = max_epochs;
net = train(net, X', Y');

% Test verisi
x_test = [0.5 0.5 ];

% Tahmin etiketi hesaplama
y_test = round(sim(net, x_test'));

% Sonuçları gösterme
fprintf('Tahmin edilen sınıf etiketi: %d\n', y_test);
