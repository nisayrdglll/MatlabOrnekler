% Veri seti oluşturma
X = [1 1; 1 2; 2 1; 4 4; 4 5; 5 4];

Y = [1; 1; 1; 2; 2; 2];

% Sınıflandırma için KNN modelini eğitme
Mdl = fitcknn(X,Y,'NumNeighbors',3);

% Test verilerini tanımlama
x_test = [1.5 1.5; 5 5];
y_test = [1; 2];

% Test verilerini kullanarak sınıfları tahmin etme
y_pred = predict(Mdl,x_test);

% Karışıklık matrisini hesaplama
C = confusionmat(y_test,y_pred);


% Sonuçları gösterme
disp("Tahmin edilen sınıf etiketleri: ")
disp(y_pred)
disp("Karışıklık matrisi: ")
disp(C)
confusionchart(C)

n =  size(C, 1);
 
% tp, fp, fn, tn, 
tp = zeros(1, n);
fp = zeros(1, n);
fn = zeros(1, n);
tn = zeros(1, n);
for i = 1 : n
  tp(i) = C(i,i); % tp
  fp(i) = sum(C(i, :)) - C(i,i); % fp
  fn(i) = sum(C(:, i)) - C(i,i); % fn
  tn(i) = sum(C(:)) - sum(C(i,:)) - sum(C(:,i)) + C(i,i); % tn
end
% TP, FP, FN, TN
TP = sum(tp);
FP = sum(fp);
FN = sum(fn);
TN = sum(tn);
% Acc, Prec, Recl, Fscore 
Acc  = (TP + TN) / (TP + TN +FP +FN);
Prec = TP / (TP + FP);
Recl = TP / (TP + FN);
Fscore = 2 * (Prec * Recl ) / (Prec + Recl);
Specificity = TN / (TN + FP);