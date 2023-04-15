close all
clear all

% Örnek veri kümesi oluştur
X = [1 1; 1.5 2; 3 4; 5 7; 3.5 5; 4.5 5; 3.5 4.5]; % veri noktaları
Y = [1; 1; 1; 0; 0; 0; 0]; % veri noktalarının etiketleri

% Test verisi
x_test = [3 2];

% KNN parametreleri
k = 3; % komşu sayısı

% Öklid mesafesi hesaplama
D = pdist2(X, x_test, 'euclidean');

% Komşuları belirleme
[~, idx] = mink(D, k);

% Tahmin etiketi hesaplama
y_test = mode(Y(idx));

% Sonuçları gösterme
fprintf('Tahmin edilen sınıf etiketi: %d\n', y_test);

