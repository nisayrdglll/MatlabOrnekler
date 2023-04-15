
clear all
close all

% Örnek veri kümesi oluşturma
X = [1 1; 1 2; 2 1; 2 2; 3 1; 3 2]; % veri noktaları
Y = [1; 1; 1; 0; 0; 0]; % veri noktalarının etiketleri

% Decision tree modelini eğitme
tree = fitctree(X, Y);

% Test verisi
x_test = [2.5 1.5];

% Tahmin etiketi hesaplama
y_test = predict(tree, x_test);

% Sonuçları gösterme
fprintf('Tahmin edilen sınıf etiketi: %d\n', y_test);
view(tree,'Mode','graph')