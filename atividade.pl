%Fatos
%familia_parte_de_pai
progenitor(joao,cleber).
progenitor(joao,isadora).
progenitor(joao,laercio).
progenitor(maria,cleber).
progenitor(maria,isadora).
progenitor(maria,laercio).
progenitor(cleber,jonas).
progenitor(larissa,jonas).
progenitor(isadora,jose).
progenitor(marcos,jose).
progenitor(laercio,laercio_alberto).
progenitor(laercio,igor).
%-
progenitor(cassia,bernardo).
progenitor(cassia,joao_victor).
progenitor(cassia,emanuel).
%familia_parte_de_mae
progenitor(zacarias,wilma).
progenitor(zacarias,joana).
progenitor(zacarias,mauro).
progenitor(carla,wilma).
progenitor(carla,joana).
progenitor(carla,mauro).
progenitor(wilma,laercio_alberto).
progenitor(wilma,igor).
progenitor(joana,alice).
progenitor(lucas,alice).
progenitor(mauro,isabela).
progenitor(mauro,lara).
progenitor(camilla,isabela).
progenitor(camilla,lara).
%sexo
%parte_mae
masculino(zacarias).
masculino(lucas).
masculino(mauro).
%parte_de_pai
masculino(joao).
masculino(cleber).
masculino(marcos).
masculino(laercio).
masculino(jonas).
masculino(jose).
masculino(igor).
masculino(laercio_alberto).
%-
masculino(bernardo).
masculino(joao_victor).
masculino(emanuel).
%-
%parte de mae
feminino(carla).
feminino(wilma).
feminino(joana).
feminino(alice).
feminino(camilla).
feminino(isabela).
feminino(lara).
%-
feminino(cassia).
%-
%parte_pai
feminino(maria).
feminino(isadora).
feminino(larissa).
%-
%regras
avós(X,Y):- progenitor(Z,Y), progenitor(X,Z).
paterno_avós(X,Y):- progenitor(Z,Y), progenitor(X,Z), masculino(Z).
paterno_avô(X,Y):- progenitor(Z,Y), progenitor(X,Z), masculino(Z), masculino(X).
paterno_avó(X,Y):- progenitor(Z,Y), progenitor(X,Z), masculino(Z), feminino(X).
materno_avós(X,Y):- progenitor(Z,Y), progenitor(X,Z), feminino(Z).
materno_avô(X,Y):- progenitor(Z,Y), progenitor(X,Z), feminino(Z), masculino(X).
materno_avó(X,Y):- progenitor(Z,Y), progenitor(X,Z), feminino(Z), feminino(X).
pais(X,Y):- progenitor(X,Y).
pai(X,Y):- progenitor(X,Y),masculino(X).
mae(X,Y):- progenitor(X,Y),feminino(X).
filhos(Y,X):- progenitor(X,Y).
filho(Y,X):- progenitor(X,Y),masculino(Y).
filha(Y,X):- progenitor(X,Y),feminino(Y).
irmãos(X,Y):- progenitor(Z,Y), progenitor(Z,X), X\== Y.
irmão(X,Y):- progenitor(Z,Y), progenitor(Z,X), masculino(X), X\== Y.
irmã(X,Y):- progenitor(Z,Y), progenitor(Z,X), feminino(X), X\== Y.
tios(X,Y):- progenitor(Z,X), progenitor(Z,A), progenitor(A,Y), X\== A.
paterno_tios(X,Y):- progenitor(Z,X), progenitor(Z,A), progenitor(A,Y), masculino(A), X\== A.
paterno_tio(X,Y):- progenitor(Z,X), progenitor(Z,A), progenitor(A,Y), masculino(A), masculino(X), X\== A.
paterno_tia(X,Y):- progenitor(Z,X), progenitor(Z,A), progenitor(A,Y), masculino(A), feminino(X), X\== A.
materno_tios(X,Y):- progenitor(Z,X), progenitor(Z,A), progenitor(A,Y), feminino(A), X\== A.
materno_tio(X,Y):- progenitor(Z,X), progenitor(Z,A), progenitor(A,Y), feminino(A),masculino(X), X\== A.
materno_tia(X,Y):- progenitor(Z,X), progenitor(Z,A), progenitor(A,Y), feminino(A),feminino(X), X\== A.
primos(X,Y):- irmãos(A,B), progenitor(A,X), progenitor(B,Y), X\==Y.
paterno_primos(X,Y):- irmãos(A,B), progenitor(A,X), progenitor(B,Y),masculino(B), X\==Y.
paterno_primo(X,Y):- irmãos(A,B), progenitor(A,X), progenitor(B,Y),masculino(B), masculino(X), X\==Y.
paterno_prima(X,Y):- irmãos(A,B), progenitor(A,X), progenitor(B,Y),masculino(B), feminino(X), X\==Y.
materno_primos(X,Y):- irmãos(A,B), progenitor(A,X), progenitor(B,Y),feminino(B), X\==Y.
materno_primo(X,Y):- irmãos(A,B), progenitor(A,X), progenitor(B,Y),feminino(B), masculino(X), X\==Y.
materno_prima(X,Y):- irmãos(A,B), progenitor(A,X), progenitor(B,Y),feminino(B), feminino(X), X\==Y.
