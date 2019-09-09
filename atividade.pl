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
pai(X,Y):- progenitor(X,Y),masculino(X).
mae(X,Y):- progenitor(X,Y),feminino(X).
filhos(Y,X):- progenitor(X,Y).
filho(Y,X):- progenitor(X,Y),masculino(Y).
filha(Y,X):- progenitor(X,Y),feminino(Y).