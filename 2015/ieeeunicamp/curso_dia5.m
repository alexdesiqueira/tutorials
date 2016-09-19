%%
%% CURSO_DIA5.M
%%
%% Material de apoio à apostila "MATLAB e GNU Octave: guia de referência" 
%% do minicurso "Introdução ao MATLAB", ministrado a pedido do Ramo 
%% Estudantil IEEE da Unicamp em setembro de 2015.
%%
%% * Autor: Alexandre 'Jaguar' Fioravante de Siqueira
%% * Contato: http://www.programandociencia.com/sobre/
%%
%% * Para citar esse material, por favor utilize a referência abaixo:
%% DE SIQUEIRA, A.F.; MACHADO, D.F.T. MATLAB e GNU Octave: guia de 
%% referência. Campinas: Programando Ciência, 2015. Disponível em: 
%% http://www.programandociencia.com/.
%%
%% Este programa é um software livre; você pode redistribuí-lo e/ou 
%% modificá-lo dentro dos termos da Licença Pública Geral GNU como 
%% publicada pela Fundação do Software Livre (FSF); na versão 3 da 
%% Licença, ou qualquer versão posterior.
%%
%% Este programa é distribuído na esperança de que possa ser útil, 
%% mas SEM NENHUMA GARANTIA; sem uma garantia implícita de ADEQUAÇÃO
%% a qualquer MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a
%% Licença Pública Geral GNU para maiores detalhes.
%%
%% Você deve ter recebido uma cópia da Licença Pública Geral GNU junto
%% com este programa. Se não, veja <http://www.gnu.org/licenses/>.
%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DIA 5: SCRIPTS E FUNÇÕES %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% 5.2 Comentários

% essa linha nao é executada pelo interpretador.
% nem essa.

%%% 5.3 Bloco de comentários

%{
todas essas linhas nao serao interpretadas:
- essa nao.
- essa tambem nao.
- nem essa.
- nem essa ainda.
%}

%%% 5.4 Funções

%% função deltaquadratica().
function delta = deltaquadratica(vala,valb,valc)
    %{
    DELTAQUADRATICA recebe os coeficientes A, B e C
    (vala, valb e valc) de uma equacao quadratica e
    retorna seu discriminante (delta).
    %}

    delta = valb^2-4*vala*valc;
end

%% função deltacubica().
function delta = deltacubica(vala,valb,valc,vald)
    %{
    DELTACUBICA recebe os coeficientes A, B, C e D (vala,
    valb, valc e vald) de uma equacao cubica e retorna
    seu discriminante (delta).
    %}

    delta = 18*vala*valb*valc*vald ...
    -4*valb^3*vald+valb^2*valc^2 ...
    -4*vala*valc^3-27*vala^2*vald^2;
end

%% função infocone().
function [area_lat,area_sup,vol] = infocone(raio,altura)
    %{
    INFOCONE recebe raio e altura de um cone e retorna sua
    area lateral (area_lat), area da superficie (area_sup) e
    volume (vol).
    %}

    area_lat = pi*raio*sqrt(altura^2+raio^2);
    disp(’A area lateral do cone e ’); disp(area_lat);
    area_sup = pi*raio*(raio+sqrt(altura^2+raio^2));
    disp(’A area da superficie do cone e ’); disp(area_sup);
    vol = pi*raio^2*(altura/3);
    disp(’O volume do cone e ’); disp(vol);
end
