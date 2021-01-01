%% Frequency shape definition as DVBS2 standard guidelines chapter 5.6
range = 800; % The range of frequencies to plot
fN    = 500;
f     = -range:range;
middle=floor(length(f)/2);
alpha = 0.2;  % Alpha definition as floating point values
a     = fN * (1-alpha);
b     = fN * (1+alpha);
H     = zeros(length(f), 1);
lrange = middle - b+1:middle-a;
H(lrange) = (0.5 + 0.5*sin( pi/(2*fN) * (fN - abs(f(lrange)))/alpha ));
H(middle - a: middle + a) = 1; 
rrange = middle+a+1:middle+b;
H(rrange) = (0.5 + 0.5*sin( pi/(2*fN) * (fN - f(rrange))/alpha ));

plot(f, H);
hold on

alpha = 0.25;  % Alpha definition as floating point values
a     = fN * (1-alpha);
b     = fN * (1+alpha);
H     = zeros(length(f), 1);
lrange = middle - b+1:middle-a;
H(lrange) = (0.5 + 0.5*sin( pi/(2*fN) * (fN - abs(f(lrange)))/alpha ));
H(middle - a: middle + a) = 1; 
rrange = middle+a+1:middle+b;
H(rrange) = (0.5 + 0.5*sin( pi/(2*fN) * (fN - f(rrange))/alpha ));
plot(f, H);

alpha = 0.3;  % Alpha definition as floating point values
a     = fN * (1-alpha);
b     = fN * (1+alpha);
H     = zeros(length(f), 1);
lrange = middle - b+1:middle-a;
H(lrange) = (0.5 + 0.5*sin( pi/(2*fN) * (fN - abs(f(lrange)))/alpha ));
H(middle - a: middle + a) = 1; 
rrange = middle+a+1:middle+b;
H(rrange) = (0.5 + 0.5*sin( pi/(2*fN) * (fN - f(rrange))/alpha ));
plot(f, H);

title("Respuesta frecuencial del filtro de coseno alzado")
xlabel("Frecuencia")
ylabel("H(f)")
legend("\alpha = 0.2", "\alpha = 0.25", "\alpha = 0.3")