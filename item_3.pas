program item_3;
//Escreva um algoritmo que leia um número inteiro n e exiba na tela a tabuada de multiplicação
//desse número de 1 a 10.
var

entrada, i: integer;
op: string;

begin
 Writeln('');
     Writeln('╔══════════════════════════════════════╗');
     Writeln('║           Gerador de                 ║');
     Writeln('║     Tabuada. Versão 1.0              ║');
     Writeln('╚══════════════════════════════════════╝');
repeat
Writeln('--------------------------------------------------');
      Writeln('Digite o número que queira gerar a tabuada: ');
      readln(entrada);
Writeln('--------------------------------------------------');
for i:=1 to 10 do
    begin

         writeln(entrada, 'x', i, '=',(i*entrada));

    end;
    writeln('Deseja gerar outra tabuada? (s/n) ');
    readln(op);
until (op = 'n') OR (op='N');

Writeln('═════════════════════════════════════════');
         writeln('Tenha um bom dia!');
Writeln('═════════════════════════════════════════')

end.

