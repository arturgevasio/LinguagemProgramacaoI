program item_5;
var
  op, n1, n2, soma, quadrado: integer;
  media : real;
begin
   repeat
  writeln('=====CALCULADORA MULTI FUNÇÕES=======');
  writeln('========== MENU PRINCIPAL ==========');
  writeln('Digite o número referente à sua opção.');
  writeln('1 - Calcular a soma de dois números');
  writeln('2 - Calcular a média de dois números');
  writeln('3 - Calcular o quadrado de um número');
  writeln('0 - Sair');
  readln(op);

case op of
     1 : begin //bloco da soma
         writeln('Digite o primeiro número: ');
         readln(n1);
         writeln('Digite o segundo número: ');
         readln(n2);
         soma:=(n1+n2);
         writeln('--------------------------------------------------');
         writeln('A soma de ', n1, ' e ', n2, ' é igual a ', soma,'.');
         writeln('--------------------------------------------------');
         end;
     2 : begin  //bloco da média
         writeln('Digite o primeiro número: ');
         readln(n1);
         writeln('Digite o segundo número: ');
         readln(n2);
         media:=(n1+n2)/2;
         writeln('--------------------------------------------------');
         writeln('A media de ', n1, ' e ', n2, ' é igual a ', media:0:2,'.');
         writeln('--------------------------------------------------');
         end;

     3 : begin  //bloco do quadrado
         writeln('Digite o número: ');
         readln(n1);
         quadrado:=(n1*n1);
         writeln('--------------------------------------------------');
         writeln(n1, ' elevado ao quadrado é igual a ', quadrado,'.');
         writeln('--------------------------------------------------');
         end;
  end;
     until (op=0);//opção que encerra o código
           writeln('--------------------------------------------------');
           writeln('             Tenha um excelente dia!              ');
           writeln('--------------------------------------------------');
end.

