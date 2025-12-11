program calculadora_de_gasolina;
var
autonomia, distancia, valor, gas, vgas : real;
partida, chegada, op: string;
begin

  repeat;
     Writeln('');
     Writeln('╔══════════════════════════════════════╗');
     Writeln('║           Calculadora de             ║');
     Writeln('║     combustível. Versão 1.0          ║');
     Writeln('╚══════════════════════════════════════╝');

  writeln('Digite o nome da cidade de partida: ');
  readln(partida);

  writeln('Digite o nome da cidade de chegada: ');
  readln(chegada);

  writeln('Insira a autonomia do veículo (Litro de combustível gasto por Km): ');
  readln(autonomia); //menu de opções de veículos com sua autonomia

  writeln('Digite a distância da sua viagem em Km: ');
  readln(distancia);//ver uma api que possa gerar esse dado automaticamente

  writeln('Digite o valor do litro de combustível: ');
  readln(vgas);

  gas:=(distancia/autonomia)*2;
  valor:=(vgas*gas);

  writeln('Sua viagem de ', partida,' até ', chegada);
  writeln('precisará de ', gas:2:0, ' litros de combustível e');
  writeln('custará R$ ', valor:2:0, '.');

  writeln('Deseja calcular novamente?S/N: ');
      readln(op);

until (op='n') OR (op='N');

end.

